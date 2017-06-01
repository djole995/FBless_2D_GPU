----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:33:41 05/11/2017 
-- Design Name: 
-- Module Name:    fb_less_2d_gpu - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fb_less_2d_gpu is
   generic(
      DATA_WIDTH           : natural := 32;
      COLOR_WIDTH          : natural := 24;
      ADDR_WIDTH           : natural := 13
	);
   Port (
      clk_i          : in  std_logic;
      rst_n_i        : in  std_logic;
		-- RAM
      bus_addr_i     : in  std_logic_vector(ADDR_WIDTH-1 downto 0);  -- Address used to point to registers
      bus_data_i     : in  std_logic_vector(DATA_WIDTH-1 downto 0);  -- Data to be writed to registers
      bus_we_i       : in  std_logic;
		--ram_clk_o		: out std_logic;											-- Same clock domain
		-- VGA --
		pixel_row_i    : in  unsigned(8 downto 0);
		pixel_col_i    : in  unsigned(9 downto 0);
		phase_i        : in  unsigned(1 downto 0);
		rgb_o          : out std_logic_vector(COLOR_WIDTH-1 downto 0)  -- Value of RGB color
   );
end entity fb_less_2d_gpu;

architecture Behavioral of fb_less_2d_gpu is

   component ram 	
   port
   (
      i_clk    : in  std_logic;
		i_r_addr : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
		i_data   : in  std_logic_vector(DATA_WIDTH-1 downto 0);
		i_we     : in  std_logic;
		i_w_addr : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
		o_data   : out std_logic_vector(DATA_WIDTH-1 downto 0)
   );
   end component ram;

 
	
   -- Memory --
   signal mem_data_s       : std_logic_vector(DATA_WIDTH-1 downto 0);      -- Data from local memory
   signal mem_address_s    : std_logic_vector(ADDR_WIDTH-1 downto 0);      -- Address used to read from memory

	


	--- memory ---
	signal mem_addr_r           :  unsigned(ADDR_WIDTH-1 downto 0) := to_unsigned(0, ADDR_WIDTH);
	signal mem_addr_s           :  unsigned(ADDR_WIDTH-1 downto 0) := to_unsigned(0, ADDR_WIDTH);
--	
--	-----------NEW--------------------------
	
	-- common.h
	constant WIDTH : integer := 640;
	constant HEIGHT : integer := 480;
	constant DRAW_LIST_LEN : integer := 256;
	constant TILE_BITS : integer := 5;
	constant TILE_LIST_LEN : integer := 7;
	constant TILE_LINE : integer := 2**TILE_BITS;
	constant TILE_MAT_WIDTH: integer := WIDTH/TILE_LINE;
	constant TILE_MAT_HEIGHT: integer := HEIGHT/TILE_LINE;
	-- parallel_tile_renderer.c
	constant SHIFT: integer := 13;
	constant FIX_ONE: integer := 2**SHIFT;
	constant HALF: integer := 2**(SHIFT-1);
	
	
	-- parallel_tile_renderer.c
	signal y : unsigned(15 downto 0) := (others => '0');
	signal ty : unsigned(15 downto 0);
	signal tx : unsigned(15 downto 0);
	signal go_to_next_tile_line : std_logic;
	
	type pixels is array (0 to HEIGHT-1, 0 to WIDTH-1) of std_logic_vector(23 downto 0);
	type draw_list_indices is array (0 to 6) of std_logic_vector (8 downto 0);
	type tile_mat_list_end is array (0 to 299) of std_logic_vector(2 downto 0);
	type tile_mat is array (0 to 299) of draw_list_indices;
	type tState is (IDLE, INC_Y, INC_TX, CALC_TY, READ_UPPER, READ_LOWER, READ_INDEX, READ_POSITION, READ_DIMENSIONS, READ_COLOR, RENDER, CALC_W, CALC_IW_M, CALC_ACC, CALC_WEIGHT, CHECK_OPAQUE, WRITE_PIXEL, FINISH);
	type acc_color is array(0 to TILE_LINE-1) of std_logic_vector(7 downto 0);
	type tile_line_arr_u16 is array(0 to TILE_LINE-1) of std_logic_vector(15 downto 0);
	
	type tile_list_type is array(0 to 7) of std_logic_vector (7 downto 0);
	
	type tile_mat_type is array (0 to TILE_MAT_HEIGHT, 0 to TILE_MAT_WIDTH) of tile_list_type;
	
	
	signal tile_mat_s: tile_mat_type;
	signal tile_mat_r: tile_mat_type;
	
	
	--signal tile_mat_s : tile_mat;
	signal tile_mat_list_end_s : tile_mat_list_end;
	
	
	
--	signal tile_mat_r : tile_mat;
	
	--Global state--
	signal current_state_s : tState := IDLE;
	signal next_state_s : tState := IDLE;
	
	--Rendering calculation phase, valid in RENDER state only--
	signal current_render_state_s : tState := IDLE;
	signal next_render_state_s : tState;
	signal start_rendering_s: std_logic_vector(0 downto 0);
	signal start_rendering_r: std_logic_vector(0 downto 0);
	
--	signal pixels_s: pixels;
--	signal pixels_r: pixels;	
--		
	signal rect_s: std_logic_vector(87 downto 0);
	signal rect_list_s : std_logic_vector(87 downto 0) := x"001F00FF001F00FF0000FF";
	signal draw_s : std_logic := '0';
	signal rgba_s : std_logic_vector(31 downto 0);
	signal rect_row_s : std_logic_vector(15 downto 0) := x"FFFF";
	signal rect_col_s : std_logic_vector(15 downto 0) := x"FFFF";
	signal rect_width_s : std_logic_vector(15 downto 0) := x"00F0";
	signal rect_height_s : std_logic_vector(15 downto 0) := x"00F0";
	signal y_s : std_logic_vector(15 downto 0) := (others => '0');
	signal ty_s : std_logic_vector(15 downto 0);
	signal tx_s: std_logic_vector(15 downto 0) := (others => '0'); 
	
	--signal rect_s: std_logic_vector(87 downto 0);
	--signal rect_list_s : std_logic_vector(87 downto 0) := x"001F00FF001F00FF0000FF";
	signal tile_mat_list_end_r : tile_mat_list_end;
	signal y_r : std_logic_vector(15 downto 0) := (others => '0');
	signal ty_r : std_logic_vector(15 downto 0);
	signal tx_r : std_logic_vector(15 downto 0) := (others => '0');
	signal draw_r : std_logic := '0';
	signal rgba_r : std_logic_vector(31 downto 0);
	signal rect_row_r : std_logic_vector(15 downto 0);
	signal rect_col_r : std_logic_vector(15 downto 0);
	signal rect_width_r : std_logic_vector(15 downto 0);
	signal rect_height_r : std_logic_vector(15 downto 0);
	
	--Tile list index
	signal ti_r: std_logic_vector(7 downto 0);
	signal ti_s: std_logic_vector(7 downto 0);
	
	signal i_r: std_logic_vector(15 downto 0);
	signal i_s: std_logic_vector(15 downto 0);
	
	signal x_r: tile_line_arr_u16;
	signal x_s: tile_line_arr_u16;
	
	signal acc_r_r: acc_color;
	signal acc_r_s: acc_color;
	
	signal acc_g_r: acc_color;
	signal acc_g_s: acc_color;
	
	signal acc_b_r: acc_color;
	signal acc_b_s: acc_color;
	
	signal weight_r : tile_line_arr_u16;
	signal weight_s : tile_line_arr_u16;
	
	--Temp signals used for counting resulting color and transparency for every pixel--
	signal w_s: tile_line_arr_u16;
	signal iw_s: tile_line_arr_u16;
	signal m_s: tile_line_arr_u16;
	
	signal stop_tile_partition_s: std_logic;
	
	signal start_tile_partition_s: std_logic;
	signal change_state_en_s: std_logic;
	
	signal tx_beg: std_logic_vector(15 downto 0);
	signal tx_end: std_logic_vector(15 downto 0);
	
	signal ty_beg: std_logic_vector(15 downto 0);
	signal ty_end: std_logic_vector(15 downto 0);
	
	signal phase_s : std_logic_vector(1 downto 0);
	signal phase_r : std_logic_vector(1 downto 0);
	
	signal index_s : std_logic_vector(19 downto 0);
	signal index_r : std_logic_vector(19 downto 0);
	
	
	
	component reg is
	generic(
		WIDTH    : positive := 1;
		RST_INIT : integer := 0
	);
	port(
		i_clk  : in  std_logic;
		in_rst : in  std_logic;
		i_d    : in  std_logic_vector(WIDTH-1 downto 0);
		o_q    : out std_logic_vector(WIDTH-1 downto 0)
	);
	end component reg;

	
begin
	
--	process(clk_i, rst_n_i) begin
--		if rst_n_i = '0' then
--			y <= (others => '0');
--			tx <= (others => '0');
--		elsif(rising_edge(clk_i)) then
--			if go_to_next_tile_line = '1' then
--				if tx = TILE_MAT_WIDTH-1 then
--					tx <= (others => '0');
--					if y = HEIGHT-1 then
--						y <= (others => '0');
--					else
--						y <= y + 1;
--					end if;
--				else
--					tx <= tx + 1;
--				end if;
--			end if;
--		end if;
--	end process;
--	ty <= shift_right(y, TILE_BITS);
		

	process(clk_i) begin
		if(rising_edge(clk_i)) then
			y <= y+1;
		end if;
	end process;
	
	
--
--
--   -----------------------------------------------------------------------------------
--   --                            GLOBAL                                             --
--   -----------------------------------------------------------------------------------
--		
		--Global state register--
		process(clk_i, rst_n_i) begin
			if(rst_n_i = '0') then
				current_state_s <= IDLE;
			elsif(rising_edge(clk_i)) then
				current_state_s <= next_state_s;
			end if;
		end process;
	
				--Render state register--
		process(clk_i) begin
			if(rst_n_i = '0') then
				current_render_state_s <= IDLE;
			elsif(rising_edge(clk_i)) then
				current_render_state_s <= next_render_state_s;
			end if;
		end process;
		
		--Global state--
		process(current_state_s, current_render_state_s, y_r, tx_r) begin
			case(current_state_s) is
				when IDLE =>
					next_state_s <= CALC_TY;
				when CALC_TY =>
					next_state_s <= READ_UPPER;--INC_TX;READ_UPPER;
				when READ_UPPER =>
					next_state_s <= READ_LOWER;
				when READ_LOWER =>
					next_state_s <= INC_TX;--READ_INDEX;
				when READ_INDEX =>
					next_state_s <= READ_POSITION;
				when READ_POSITION =>
					next_state_s <= READ_DIMENSIONS;
				when READ_DIMENSIONS =>
					next_state_s <= READ_COLOR;
				when READ_COLOR =>
					next_state_s <= RENDER;
				when RENDER =>
					--Rendering is not finished => stall state--
					if(current_render_state_s = IDLE) then
						next_state_s <= CHECK_OPAQUE;
					end if;
				when CHECK_OPAQUE =>
					next_state_s <= WRITE_PIXEL;
				when WRITE_PIXEL =>
					--Outer loop finished => algorithm finished--
					if(y_r = HEIGHT-1 and tx_r = TILE_MAT_WIDTH-1) then
						next_state_s <= FINISH;
					--Break inner loop, continue outer loop--
					elsif(tx_r = TILE_MAT_WIDTH-1) then
						next_state_s <= INC_Y;
					--Continue inner loop--
					else
						next_state_s <= INC_TX;
					end if;
				when INC_Y =>
					next_state_s <= INC_TX;
				when INC_TX =>
					next_state_s <= READ_UPPER;
					
				--STOP state--
				--Algorithm is finished, draw pixels--
				when others =>
					next_state_s <= current_state_s;
			end case;
		end process;
		
		--Render state--
		process(current_render_state_s, start_rendering_r) begin
			case(current_render_state_s) is
				when IDLE =>
					--Rendering is triggered => start rendering calculations--
					if(start_rendering_r = "1") then
						next_render_state_s <= CALC_W;
					end if;
				when CALC_W =>
					next_render_state_s <= CALC_IW_M;
				when CALC_IW_M =>
					next_render_state_s <= CALC_ACC;
				when CALC_ACC =>
					next_render_state_s <= CALC_WEIGHT;
				when others =>
					next_render_state_s <= IDLE;
			end case;
		end process;
--		
--	
--			
		process(clk_i)
			begin
				case (current_state_s) is
					when INC_Y => 
						--Iterating throught rows, outer loop--
						y_s <= y_r+1;
					when INC_TX =>
						--Iterating throught vertical tiles, inner loop--
						if(tx_r < TILE_MAT_WIDTH-1) then
							tx_s <= tx_r+1;
						else
							tx_s <= (others => '0');
						end if;
					when CALC_TY =>
						--Calculating horizontal tile index--
						ty_s <= std_logic_vector(shift_right(unsigned(y_r), TILE_BITS));
					when READ_UPPER =>
					--Reading tile_mat element from memory. One tile_mat element takes two 32-bit location--
						--READ_MATLIST_LOWORD state--
						tile_mat_s(to_integer(unsigned(ty_r)), to_integer(unsigned(tx_r)))(0) <= mem_data_s(31 downto 24);
						tile_mat_s(to_integer(unsigned(ty_r)), to_integer(unsigned(tx_r)))(1) <= mem_data_s(23 downto 16);
						tile_mat_s(to_integer(unsigned(ty_r)), to_integer(unsigned(tx_r)))(2) <= mem_data_s(15 downto 8);
						tile_mat_s(to_integer(unsigned(ty_r)), to_integer(unsigned(tx_r)))(3) <= mem_data_s(7 downto 0);
					
						mem_addr_s <= mem_addr_r+1;
					when READ_LOWER => 
						--READ_MATLIST_HIWORD--
						tile_mat_s(to_integer(unsigned(ty_r)), to_integer(unsigned(tx_r)))(4) <= mem_data_s(31 downto 24);
						tile_mat_s(to_integer(unsigned(ty_r)), to_integer(unsigned(tx_r)))(5) <= mem_data_s(23 downto 16);
						tile_mat_s(to_integer(unsigned(ty_r)), to_integer(unsigned(tx_r)))(6) <= mem_data_s(15 downto 8);
						tile_mat_s(to_integer(unsigned(ty_r)), to_integer(unsigned(tx_r)))(7) <= mem_data_s(7 downto 0);
						mem_addr_s <= mem_addr_r+1;
						
						--Initializing resulting color components, executed in one cycle-- 
						--Parallel statements--
						for I in 0 to TILE_LINE-1 loop
							acc_r_s(I) <= (others => '0');
							acc_g_s(I) <= (others => '0');
							acc_b_s(I) <= (others => '0');
							weight_s(I) <= (others => '0');
						end loop;
						
						ti_s <= x"01";
--					
--					when READ_INDEX =>
--							--READ_INDEX--
--							if(ti_r < TILE_LIST_LEN) then
--								if(ti_r = tile_mat_r(to_integer(unsigned(ty_r)), to_integer(unsigned(tx_r)))(0)) then
--									-----------------------Dummy line, break loop-----------------------------------------------
--									ti_s <= x"00";
--								else
--									i_s <= "00000000" & tile_mat_r(to_integer(unsigned(ty_r)), to_integer(unsigned(tx_r)))(to_integer(unsigned(ti_r)));
--									ti_s <= ti_r+1;
--								end if;
--							else
--								if(i_r = 0) then
--									-----------------------Dummy line, break loop-----------------------------------------------
--									ti_s <= x"00";
--								else
--									i_s <= i_r-1;
--								end if;
--							end if;
--							
--							
--							--Calculating indexed rect memory location--
--								--Rect position location = 2*i--
--							mem_addr_s <= shift_right(unsigned(i_r(12 downto 0)), 1);
--							
--						when READ_POSITION => 
--							rect_row_s <= mem_data_s(31 downto 16);
--							rect_col_s <= mem_data_s(15 downto 0);
--							
--								--Rect dimensions location = 2*i+1--
--							mem_addr_s <= mem_addr_r+1;
--							
--						when READ_DIMENSIONS => 
--							rect_width_s <= mem_data_s(31 downto 16);
--							rect_height_s <= mem_data_s(15 downto 0);
--								--Rect rgba location = 2*i+1 + RECT_NUMBER(256)*2-1 --
--							mem_addr_s <= mem_addr_r+511;
--							
--						when READ_COLOR =>
--							rgba_s <= mem_data_s;
--							start_rendering_s <= "1";
--						when RENDER =>
--							--Rendering tile line in parallel--
--							for ix in 0 to TILE_LINE-1 loop
--								x_s(ix) <= std_logic_vector(shift_left(unsigned(tx_r), TILE_BITS) or to_unsigned(ix, 16));
--								--Pixel belongs to rect? --
--								if(rect_col_r <= x_s(ix) and x_s(ix) < rect_col_r+rect_width_r
--									and rect_row_r <= y_r and y_r < rect_row_r+rect_height_r) then
--									
--									--Execute one of the calculations based on render state--
--									if(current_render_state_s = CALC_W) then
--										--w_s = (u16) color.alpha << (SHIFT(13) - 8), hardcoded (shift_left doesn't accept concatenated vectors)-- 
--										w_s(ix) <= "000" & rgba_r(7 downto 0) & "00000";
--									elsif(current_render_state_s = CALC_IW_M) then
--										--CALCULATE iw and m--
--										iw_s(ix) <= FIX_ONE - w_s(ix);
--										--TODO: add 16-bit temp variable for m--
--										--m_s(ix) <= std_logic_vector(shift_right(unsigned(w_s(ix)*weight_r(ix) + HALF), SHIFT));
--									elsif(current_render_state_s = CALC_ACC) then
--										--CALCULATE ACC--
--										--TODO: add 16-bit temp variables for acc--
--										--acc_r_s(ix) <= acc_r_r(ix) + m_s(ix)*rgba_r(15 downto 8);
--										--acc_g_s(ix) <= acc_g_r(ix) + m_s(ix)*rgba_r(23 downto 16);
--										--acc_g_s(ix) <= acc_g_r(ix) + m_s(ix)*rgba_r(31 downto 24);
--										
--									else	
--										--CALCULATE_WEIGHT--
--										--TODO: add 16-bit temp variable for weight--
--										--weight_s(ix) <= std_logic_vector(shift_right(unsigned(iw_s(ix)*weight_r(ix) + HALF), SHIFT));
--										
--										--Stall rendering till next RENDER state--
--										start_rendering_s <= "0";
--									end if;
--									
--								end if;
--							end loop;
--
--						when CHECK_OPAQUE =>
--							--CHECK_OPAQUE--
--							--If all weights are zeros line is fully opaque and all remaining rects are covered (invisible)-- 
--							if(weight_r(0) = 0 and weight_r(1) = 0 and weight_r(2) = 0
--								and weight_r(3) = 0 and weight_r(4) = 0 and weight_r(5) = 0
--								and weight_r(6) = 0) then
--								-----------------------Dummy line, break loop-----------------------------------------------
--								ti_s <= x"00";
--							end if;
--						
--						when others =>
--							--WRITE_TILE_LINE--
--							--Writting resulting rgb components of tile line in parallel--
--							for ix in 0 to TILE_LINE-1 loop
--								x_s(ix) <= std_logic_vector(shift_left(unsigned(tx_r), TILE_BITS) or to_unsigned(ix, 16));
----								pixels_s(to_integer(unsigned(y_r)), to_integer(unsigned(x_s(ix))))(23 downto 16) <= acc_r_r(ix);
----								pixels_s(to_integer(unsigned(y_r)), to_integer(unsigned(x_s(ix))))(15 downto 8) <= acc_g_r(ix);
----								pixels_s(to_integer(unsigned(y_r)), to_integer(unsigned(x_s(ix))))(7 downto 0) <= acc_b_r(ix);
--							end loop;
						when others =>
					end case;
		end process;
--		
--		
		--Custom type registers--
		process(clk_i) begin
			if rising_edge(clk_i) then
				tile_mat_r <= tile_mat_s;
			end if;
		end process;
--		
		process(clk_i) begin
			if rising_edge(clk_i) then
				acc_r_r <= acc_r_s;
			end if;
		end process;
		
		process(clk_i) begin
			if rising_edge(clk_i) then
				acc_g_r <= acc_g_s;
			end if;
		end process;
		
		process(clk_i) begin
			if rising_edge(clk_i) then
				acc_b_r <= acc_b_s;
			end if;
		end process;
		
--		process(clk_i) begin
--			if rising_edge(clk_i) then
--				pixels_r <= pixels_s;
--			end if;
--		end process;
			
		process(clk_i) begin
			if rising_edge(clk_i) then
				weight_r <= weight_s;
			end if;
		end process;
		
	 process (clk_i)
		begin
		  if(rst_n_i = '0') then
				mem_addr_r <= (others => '0');
        elsif(rising_edge(clk_i)) then
            mem_addr_r <= mem_addr_s;
        end if;
    end process;
--	 
--	 
--	 -------------------------------END------------------------------------
--	
--
--	
--	
--	-----------------------------------------------------------------------------------
--	--                            RAM                                --
--	-----------------------------------------------------------------------------------
						
		
	
	
	ram_i : ram
	port map(
		i_clk					=> clk_i,
		i_r_addr				=> std_logic_vector(mem_addr_r), 
		i_data				=> bus_data_i,
		i_we					=> bus_we_i,
		i_w_addr				=> bus_addr_i,
		o_data				=> mem_data_s
	);
	
	rgba_reg : reg 
	GENERIC MAP (
	   WIDTH => 32,
		RST_INIT => 0
	)		
	PORT MAP (
	   i_clk => clk_i,
		in_rst => rst_n_i,
		i_d => rgba_s,
		o_q => rgba_r
	);
	
	rect_width_reg : reg 
	GENERIC MAP (
	   WIDTH => 16,
		RST_INIT => 0
	)		
	PORT MAP (
	   i_clk => clk_i,
		in_rst => rst_n_i,
		i_d => rect_width_s,
		o_q => rect_width_r
	);
	
	rect_height_reg : reg 
	GENERIC MAP (
	   WIDTH => 16,
		RST_INIT => 0
	)		
	PORT MAP (
	   i_clk => clk_i,
		in_rst => rst_n_i,
		i_d => rect_height_s,
		o_q => rect_height_r
	);
	
	rect_col_reg : reg 
	GENERIC MAP (
	   WIDTH => 16,
		RST_INIT => 0
	)		
	PORT MAP (
	   i_clk => clk_i,
		in_rst => rst_n_i,
		i_d => rect_col_s,
		o_q => rect_col_r
	);
	
	rect_row_reg : reg 
	GENERIC MAP (
	   WIDTH => 16,
		RST_INIT => 0
	)		
	PORT MAP (
	   i_clk => clk_i,
		in_rst => rst_n_i,
		i_d => rect_row_s,
		o_q => rect_row_r
	);


	phase_reg : reg 
	GENERIC MAP (
	   WIDTH => 2,
		RST_INIT => 0
	)		
	PORT MAP (
	   i_clk => clk_i,
		in_rst => rst_n_i,
		i_d => phase_s,
		o_q => phase_r
	);
	
	index_reg : reg 
	GENERIC MAP (
	   WIDTH => 20,
		RST_INIT => 0
	)		
	PORT MAP (
	   i_clk => clk_i,
		in_rst => rst_n_i,
		i_d => index_s,
		o_q => index_r
	);
	
	
	y_reg : reg 
	GENERIC MAP (
	   WIDTH => 16,
		RST_INIT => 0
	)		
	PORT MAP (
	   i_clk => clk_i,
		in_rst => rst_n_i,
		i_d => y_s,
		o_q => y_r
	);
	
	ty_reg : reg 
	GENERIC MAP (
	   WIDTH => 16,
		RST_INIT => 0
	)		
	PORT MAP (
	   i_clk => clk_i,
		in_rst => rst_n_i,
		i_d => ty_s,
		o_q => ty_r
	);
	
	tx_reg : reg 
	GENERIC MAP (
	   WIDTH => 16,
		RST_INIT => 0
	)		
	PORT MAP (
	   i_clk => clk_i,
		in_rst => rst_n_i,
		i_d => tx_s,
		o_q => tx_r
	);
	
	ti_reg : reg 
	GENERIC MAP (
	   WIDTH => 8,
		RST_INIT => 0
	)		
	PORT MAP (
	   i_clk => clk_i,
		in_rst => rst_n_i,
		i_d => ti_s,
		o_q => ti_r
	);
	
	i_reg : reg 
	GENERIC MAP (
	   WIDTH => 16,
		RST_INIT => 0
	)		
	PORT MAP (
	   i_clk => clk_i,
		in_rst => rst_n_i,
		i_d => i_s,
		o_q => i_r
	);
	
	start_render_reg : reg 
	GENERIC MAP (
	   WIDTH => 1,
		RST_INIT => 0
	)		
	PORT MAP (
	   i_clk => clk_i,
		in_rst => rst_n_i,
		i_d => start_rendering_s,
		o_q => start_rendering_r
	);
	
	
end Behavioral;

