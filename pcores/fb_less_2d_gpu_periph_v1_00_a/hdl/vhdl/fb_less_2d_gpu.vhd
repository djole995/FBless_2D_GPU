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
--use ieee.std_logic_arith.all;

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
      ADDR_WIDTH           : natural := 13;
      REGISTER_OFFSET      : natural := 5439;   -- 6960           -- Pointer to registers in memory map
      C_BASEADDR           : natural := 0;               -- Pointer to local memory in memory map
      REGISTER_NUMBER      : natural := 10;              -- Number of registers used for sprites
      NUM_BITS_FOR_REG_NUM : natural := 4;               -- Number of bits required for number of registers
      MAP_OFFSET           : natural := 639;            -- Pointer to start of map in memory
      OVERHEAD             : natural := 5;               -- Number of overhead bits
      SPRITE_Z             : natural := 1                -- Z coordinate of sprite
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

	-- Types --
   type registers_t  is array (0 to REGISTER_NUMBER-1) of unsigned (63 downto  0);
   type coor_row_t 	is array (0 to REGISTER_NUMBER-1) of unsigned (8 downto 0);
   type coor_col_t   is array (0 to REGISTER_NUMBER-1) of unsigned (9 downto 0);
   type pointer_t    is array (0 to REGISTER_NUMBER-1) of unsigned (15 downto 0);
   type rotation_t   is array (0 to REGISTER_NUMBER-1) of unsigned (7 downto 0);
   type size_t       is array (0 to REGISTER_NUMBER-1) of unsigned (3 downto 0);
	
	-- Constants --
   --constant size_8_c       : unsigned (3 downto 0) := "0111";

   constant overhead_c     : std_logic_vector( OVERHEAD-1 downto 0 ) := ( others => '0' );
   constant sprite_z_coor  : unsigned (7 downto 0) := "00000100";
	
   -- Globals --
   signal registers_s      : registers_t :=                                -- Array representing registers 
   --   row   |    col  |en&size|  rot  | pointer
   (( x"0130" & x"00e3" & x"8f" & x"00" & x"01FF" ),  --mario
    ( x"0170" & x"00d5" & x"8f" & x"00" & x"01BF" ),  --enemie
    ( x"0170" & x"011b" & x"8f" & x"00" & x"01BF" ),
    ( x"0170" & x"014d" & x"8f" & x"00" & x"01BF" ),
    ( x"0170" & x"01b1" & x"8f" & x"00" & x"01BF" ), 
    ( x"0130" & x"01c6" & x"8f" & x"00" & x"013f" ),  --coin
    ( x"0130" & x"01d5" & x"8f" & x"00" & x"013f" ),
    ( x"0130" & x"01e4" & x"8f" & x"00" & x"013f" ),
    ( x"0130" & x"01f3" & x"8f" & x"00" & x"013f" ),
    ( x"0000" & x"0090" & x"7f" & x"00" & x"03d0" )); --brick
    
	signal reg_word_addr : signed(ADDR_WIDTH-1 downto 0);
	signal reg_idx       : signed(ADDR_WIDTH-1 downto 1);
	 
   signal thrd_stg_addr_s  : unsigned(ADDR_WIDTH-1 downto 0);              -- Addresses needed in third stage
   signal scnd_stg_addr_s  : unsigned(ADDR_WIDTH-1 downto 0);              -- Addresses needed in second stage
   signal frst_stg_addr_s  : unsigned(ADDR_WIDTH-1 downto 0);              -- Addresses needed in first stage
   signal zero_stg_addr_s  : unsigned(ADDR_WIDTH-1 downto 0);              -- Addresses needed in zero stage
   signal zero_stg_addr_r  : unsigned(ADDR_WIDTH-1 downto 0);

   signal reg_intersected_r: unsigned(NUM_BITS_FOR_REG_NUM-1 downto 0);    -- Register storing the index of intersected sprite
   signal reg_row_s        : coor_row_t;                                   -- Sprite start row
   signal reg_col_s        : coor_col_t;                                   -- Sprite start column
   signal reg_rot_s        : rotation_t;                                   -- Rotation of sprite
   signal img_z_coor_s     : unsigned(7 downto 0);                         -- Z coor of static img
   signal img_z_coor_r     : unsigned(7 downto 0);                         -- Z coor of static img
   signal spr_color_idx_s  : unsigned(7 downto 0);                         -- Sprite color index
   signal address_s        : unsigned(ADDR_WIDTH-1 downto 0);              -- Memory address line 
	
   -- Memory --
   signal mem_data_s       : std_logic_vector(DATA_WIDTH-1 downto 0);      -- Data from local memory
   signal mem_address_s    : std_logic_vector(ADDR_WIDTH-1 downto 0);      -- Address used to read from memory
	
   -- Zero stage --
   signal local_addr_s     : signed(ADDR_WIDTH-1 downto 0);	
   signal reg_size_s       : size_t;
   signal reg_en_s         : std_logic_vector(REGISTER_NUMBER-1 downto 0);
   signal reg_pointer_s    : pointer_t;
   signal reg_end_row_s    : coor_row_t;
   signal reg_end_col_s    : coor_col_t;
   signal rel_addr_s       : unsigned(12 downto 0);
   signal map_index_s      : unsigned(12 downto 0);
	
   -- First stage --
   signal img_rot_s        : unsigned(7 downto 0);
   signal img_index_s      : unsigned(15 downto 0);
   signal img_row_s        : unsigned(2 downto 0);
   signal img_col_s        : unsigned(2 downto 0);
   signal img_tex_row_s    : unsigned(3 downto 0);
   signal img_tex_col_s    : unsigned(3 downto 0);
   signal img_tex_offset_s : unsigned(5 downto 0);
   signal img_tex_pix_sel_r: unsigned(1 downto 0);
   signal img_addr_s       : unsigned(ADDR_WIDTH-1 downto 0);
	
	-- Second stage --
   signal scnd_stg_data_s  : std_logic_vector(DATA_WIDTH-1 downto 0);
   signal max_s            : unsigned(3 downto 0);
   signal sprt_size_s      : std_logic;
   signal sprt_int_row_s   : unsigned(8 downto 0);
   signal sprt_int_col_s   : unsigned(9 downto 0);
   signal sprt_row_s       : unsigned(3 downto 0);
   signal sprt_col_s       : unsigned(3 downto 0);
   signal rot_s            : unsigned(7 downto 0);
   signal s_row_s          : unsigned(3 downto 0);
   signal s_col_s          : unsigned(3 downto 0);
   signal sprt_tex_offset_s: unsigned(7 downto 0);
   signal sprt_tex_offset_r: unsigned(7 downto 0);   
   signal img_color_idx_r  : unsigned(7 downto 0);
   signal img_color_idx_s  : unsigned(7 downto 0);
	
   -- Third stage --
   signal thrd_stg_data_s  : std_logic_vector(DATA_WIDTH-1 downto 0);
   signal stage_data_s     : std_logic_vector(DATA_WIDTH-1 downto 0);
   signal palette_idx_s    : unsigned(7 downto 0);
	signal spr_color_idx_r  : unsigned(7 downto 0); 
   
   -- Testing signals --
   signal test_s           : unsigned(11 downto 0);
   
    ------------ mi radimo ------------------------------------------
	
	signal stat_img_size        : unsigned(3 downto 0);
	signal map_index_size_8_s0	 : unsigned(12 downto 0);
	signal map_index_size_16_s0 : unsigned(12 downto 0);
	signal stat_img_size_is_16  : std_logic;
	
	--- STAGE 0 ---
   signal reg_intersected_s0        : unsigned(NUM_BITS_FOR_REG_NUM-1 downto 0);    -- Index of intersected sprite
	signal map_index_s0     	      :  unsigned(12 downto 0);
	signal map_addr_s0       	      :  unsigned(ADDR_WIDTH-1 downto 0);
	signal map_addr_r1               :  unsigned(ADDR_WIDTH-1 downto 0);
	signal reg_intersected_r1        :  unsigned(NUM_BITS_FOR_REG_NUM-1 downto 0);
   signal reg_intsect_s0            : std_logic_vector(REGISTER_NUMBER-1 downto 0);
	signal reg_intsect_r1            : std_logic_vector(REGISTER_NUMBER-1 downto 0);
	
	--- STAGE 1 ---
	signal reg_intersected_r2         :  unsigned(NUM_BITS_FOR_REG_NUM-1 downto 0);
	signal reg_intsect_r2    : std_logic_vector(REGISTER_NUMBER-1 downto 0);
	
	
	--- STAGE 2 ---
	signal reg_intersected_r3         :  unsigned(NUM_BITS_FOR_REG_NUM-1 downto 0);
	signal reg_intsect_r3   : std_logic_vector(REGISTER_NUMBER-1 downto 0);
	
	
	--- STAGE 3 ---
	signal img_z_coor_s3             :  unsigned(7 downto 0);
	signal img_rot_s3                :  unsigned(7 downto 0);
	signal img_addr_s3               :  unsigned(ADDR_WIDTH-1 downto 0);
	signal img_col_s3                :  unsigned(3 downto 0);
	signal img_row_s3                :  unsigned(3 downto 0);  --doaj 3 - 0
	signal img_addr_r4               :  unsigned(ADDR_WIDTH-1 downto 0);
	signal img_row_r4                :  unsigned(3 downto 0);
	signal img_col_r4                :  unsigned(3 downto 0);
	signal img_rot_r4                :  unsigned(7 downto 0);
	signal img_z_coor_r4             :  unsigned(7 downto 0);
	signal reg_intersected_r4        :  unsigned(NUM_BITS_FOR_REG_NUM-1 downto 0); 
		signal reg_intsect_r4    : std_logic_vector(REGISTER_NUMBER-1 downto 0);

	
	--- STAGE 4 ---
	signal img_tex_col_s4            :  unsigned(3 downto 0);
	signal img_tex_row_s4            :  unsigned(3 downto 0);
	signal img_addr_r5               :  unsigned(ADDR_WIDTH-1 downto 0);
	signal img_z_coor_r5             :  unsigned(7 downto 0);
	signal img_tex_col_r5            :  unsigned(3 downto 0);
	signal img_tex_row_r5            :  unsigned(3 downto 0); 
	signal reg_intersected_r5        :  unsigned(NUM_BITS_FOR_REG_NUM-1 downto 0);
		signal reg_intsect_r5    : std_logic_vector(REGISTER_NUMBER-1 downto 0);

	
	--- STAGE 5 ---
	signal img_tex_offset_s5         :  unsigned(7 downto 0);
	signal img_tex_word_r6           :  unsigned(5 downto 0);
	signal img_addr_r6               :  unsigned(ADDR_WIDTH-1 downto 0);
	signal img_tex_pix_sel_r6        :  unsigned(1 downto 0);
	signal img_z_coor_r6             :  unsigned(7 downto 0);
	signal reg_intersected_r6        :  unsigned(NUM_BITS_FOR_REG_NUM-1 downto 0);
		signal reg_intsect_r6    : std_logic_vector(REGISTER_NUMBER-1 downto 0);

	
	--- STAGE 6 ---
	signal img_pix_addr_s6          :  unsigned(ADDR_WIDTH-1 downto 0);
	signal max_s6                   :  unsigned(3 downto 0);
	signal rot_s6                   :  unsigned(7 downto 0);
	signal sprt_int_col_s6          :  unsigned(9 downto 0);
	signal sprt_int_row_s6          :  unsigned(8 downto 0);
	signal img_pix_addr_r7          :  unsigned(ADDR_WIDTH-1 downto 0);
	signal img_tex_pix_sel_r7       :  unsigned(1 downto 0);
	signal img_addr_r7              :  unsigned(ADDR_WIDTH-1 downto 0);
	signal img_z_coor_r7            :  unsigned(7 downto 0);
	signal reg_intersected_r7       :  unsigned(NUM_BITS_FOR_REG_NUM-1 downto 0);
	signal max_r7                   :  unsigned(3 downto 0);
	signal rot_r7                   :  unsigned(7 downto 0);
	signal sprt_int_col_r7          :  unsigned(9 downto 0);
	signal sprt_int_row_r7          :  unsigned(8 downto 0);
		signal reg_intsect_r7    : std_logic_vector(REGISTER_NUMBER-1 downto 0);

	
	--- STAGE 7 ---
	signal s_col_s7                :  unsigned(3 downto 0);
	signal s_row_s7                :  unsigned(3 downto 0);
	signal s_col_r8                :  unsigned(3 downto 0);
	signal s_row_r8                :  unsigned(3 downto 0);
	signal sprt_col_s7             :  unsigned(3 downto 0);
	signal sprt_row_s7             :  unsigned(3 downto 0);
	signal img_tex_pix_sel_r8      :  unsigned(1 downto 0);
	signal img_z_coor_r8           :  unsigned(7 downto 0);
	signal reg_intersected_r8      :  unsigned(NUM_BITS_FOR_REG_NUM-1 downto 0);
		signal reg_intsect_r8    : std_logic_vector(REGISTER_NUMBER-1 downto 0);

	
	--- STAGE 8 ---
	signal sprt_tex_offset_s8     :  unsigned(7 downto 0);
	signal sprt_tex_offset_r9     :  unsigned(7 downto 0);
	signal img_z_coor_r9          :  unsigned(7 downto 0);
	signal reg_intersected_r9     :  unsigned(NUM_BITS_FOR_REG_NUM-1 downto 0);
	signal img_tex_pix_sel_r9     :  unsigned(1 downto 0);
		signal reg_intsect_r9    : std_logic_vector(REGISTER_NUMBER-1 downto 0);

	
	--- STAGE 9 ---
	signal img_color_idx_s9       :  unsigned(7 downto 0);
	signal sprt_addr_s9           :  unsigned(ADDR_WIDTH-1 downto 0);
	signal sprt_tex_offset_r10    :  unsigned(7 downto 0);
	signal img_z_coor_r10         :  unsigned(7 downto 0);
	signal sprt_addr_r10          :  unsigned(ADDR_WIDTH-1 downto 0);
	signal img_color_idx_r10       :  unsigned(7 downto 0);
	signal reg_intersected_r10    :  unsigned(NUM_BITS_FOR_REG_NUM-1 downto 0);
		signal reg_intsect_r10    : std_logic_vector(REGISTER_NUMBER-1 downto 0);

	
	--- STAGE 10 ---
	signal sprt_tex_offset_r11    :  unsigned(7 downto 0);
	signal img_z_coor_r11         :  unsigned(7 downto 0);
	signal img_color_idx_r11      :  unsigned(7 downto 0);
	signal reg_intersected_r11    :  unsigned(NUM_BITS_FOR_REG_NUM-1 downto 0);
		signal reg_intsect_r11    : std_logic_vector(REGISTER_NUMBER-1 downto 0);

	
	--- STAGE 11 ---
	signal sprt_tex_offset_r12    :  unsigned(7 downto 0);
	signal img_z_coor_r12         :  unsigned(7 downto 0);
	signal img_color_idx_r12      :  unsigned(7 downto 0);
	signal reg_intersected_r12    :  unsigned(NUM_BITS_FOR_REG_NUM-1 downto 0);
		signal reg_intsect_r12    : std_logic_vector(REGISTER_NUMBER-1 downto 0);

	
	--- STAGE 12 ---
	signal sprt_tex_offset_r13    :  unsigned(7 downto 0);
	signal img_z_coor_r13         :  unsigned(7 downto 0);
	signal img_color_idx_r13      :  unsigned(7 downto 0);
	signal reg_intersected_r13    :  unsigned(NUM_BITS_FOR_REG_NUM-1 downto 0);
	signal spr_color_idx_r13      :  unsigned(7 downto 0);
	signal spr_color_idx_s12      :  unsigned(7 downto 0);
		signal reg_intsect_r13    : std_logic_vector(REGISTER_NUMBER-1 downto 0);

	
	--- STAGE 13 ---
	signal palette_idx_s13       :  unsigned(7 downto 0);
	signal palette_idx_r14       :  unsigned(7 downto 0);
	
	--- STAGE 14 ---
	signal palette_addr_s14  :  unsigned(ADDR_WIDTH-1 downto 0);
	signal palette_addr_r15  :  unsigned(ADDR_WIDTH-1 downto 0);
	
	--- STAGE 15 ---
	signal palette_addr_r16  :  unsigned(ADDR_WIDTH-1 downto 0);

	--- memory ---
	signal mem_addr_r           :  unsigned(ADDR_WIDTH-1 downto 0) := to_unsigned(0, ADDR_WIDTH);
	signal mem_addr_s           :  unsigned(ADDR_WIDTH-1 downto 0) := to_unsigned(0, ADDR_WIDTH);
	
	-----------NEW--------------------------
	constant ALPHA  : unsigned (7 downto 0) := "00000100";
	constant TILE_BITS : integer := 5;
	constant TILE_MAT_WIDTH: integer := 15;
	constant TILE_MAT_HEIGHT: integer := 20;
	constant TILE_LIST_LEN : integer := 7;
	constant DRAW_LIST_LEN : integer := 7;
	constant SCREEN_WIDTH : integer := 640;
	constant SCREEN_HEIGHT : integer := 480;
	constant TILE_LINE : integer := 32;
	constant FIX_ONE: integer := 8192;
	constant HALF: integer := 4096;
	constant SHIFT: integer := 13;
	
	type pixels is array (0 downto SCREEN_HEIGHT-1, 0 downto SCREEN_WIDTH-1) of std_logic_vector(23 downto 0);
	type draw_list_indices is array (0 downto 6) of std_logic_vector (8 downto 0);
	type tile_mat_list_end is array (0 downto 299) of std_logic_vector(2 downto 0);
	type tile_mat is array (0 downto 299) of draw_list_indices;
	type tState is (IDLE, READ_INDEX, READ_POSITION, READ_DIMENSIONS, READ_COLOR, RENDER);
	type acc_color is array(0 downto TILE_LINE-1) of std_logic_vector(7 downto 0);
	type weight is array(0 downto TILE_LINE-1) of std_logic_vector(15 downto 0);
	
	type tile_list_type is array(0 downto 7) of std_logic_vector (7 downto 0);
	
	type tile_mat_type is array (0 downto TILE_MAT_HEIGHT, 0 downto TILE_MAT_WIDTH) of tile_list_type;
	
	
	signal tile_mat_s: tile_mat_type;
	signal tile_mat_r: tile_mat_type;
	
	
	--signal tile_mat_s : tile_mat;
	signal tile_mat_list_end_s : tile_mat_list_end;
	
	
	
--	signal tile_mat_r : tile_mat;
	
	signal current_state_s : tState;
	signal next_state_s : tState;
	
	signal pixels_s: pixels;
	signal pixels_r: pixels;	
		
	signal rect_s: std_logic_vector(87 downto 0);
	signal rect_list_s : std_logic_vector(87 downto 0) := x"001F00FF001F00FF0000FF";
	signal draw_s : std_logic := '0';
	signal rgba_s : std_logic_vector(31 downto 0);
	signal rect_row_s : std_logic_vector(15 downto 0) := x"FFFF";
	signal rect_col_s : std_logic_vector(15 downto 0) := x"FFFF";
	signal rect_width_s : std_logic_vector(15 downto 0) := x"00F0";
	signal rect_height_s : std_logic_vector(15 downto 0) := x"00F0";
	signal y_s : std_logic_vector(8 downto 0);
	signal ty_s : std_logic_vector(15 downto 0);
	signal tx_s: std_logic_vector(15 downto 0); 
	
	--signal rect_s: std_logic_vector(87 downto 0);
	--signal rect_list_s : std_logic_vector(87 downto 0) := x"001F00FF001F00FF0000FF";
	signal tile_mat_list_end_r : tile_mat_list_end;
	signal y_r : std_logic_vector(8 downto 0);
	signal ty_r : std_logic_vector(8 downto 0);
	signal tx_r : std_logic_vector(8 downto 0);
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
	
	signal x_r: std_logic_vector(15 downto 0);
	signal x_s: std_logic_vector(15 downto 0);
	
	signal acc_r_r: acc_color;
	signal acc_r_s: acc_color;
	
	signal acc_g_r: acc_color;
	signal acc_g_s: acc_color;
	
	signal acc_b_r: acc_color;
	signal acc_b_s: acc_color;
	
	signal weight_r : weight;
	signal weight_s : weight;
	
	--Temp signals used for counting resulting color and transparency for every pixel--
	signal w_s: std_logic_vector(15 downto 0);
	signal iw_s: std_logic_vector(15 downto 0);
	signal m_s: std_logic_vector(15 downto 0);
	
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


   -----------------------------------------------------------------------------------
   --                            GLOBAL                                             --
   -----------------------------------------------------------------------------------

	local_addr_s <= signed(bus_addr_i) - C_BASEADDR;     
	reg_word_addr <= signed(local_addr_s) - REGISTER_OFFSET;
	reg_idx <= reg_word_addr(ADDR_WIDTH-1 downto 1);
	   process(clk_i) begin
		  if rising_edge(clk_i) then
			 if bus_we_i = '1' and 0 <= reg_word_addr and reg_word_addr < REGISTER_NUMBER*2 then
				if reg_word_addr(0) = '1' then
						registers_s(to_integer(reg_idx))(63 downto 32) <= unsigned(bus_data_i);
					else
						registers_s(to_integer(reg_idx))(31 downto 0) <= unsigned(bus_data_i);
					end if;
					
			 end if;
		  end if;
	   end process;
		
		process(clk_i, rst_n_i) begin
			if(rst_n_i = '0') then
				current_state_s <= IDLE;
			elsif(rising_edge(clk_i) and change_state_en_s = '1') then
				current_state_s <= next_state_s;
			end if;
		end process;
		
		process(current_state_s) begin
			case(current_state_s) is
				when IDLE =>
					next_state_s <= READ_POSITION;
				when READ_POSITION =>
					rect_row_s <= mem_data_s(31 downto 16);
					rect_col_s <= mem_data_s(15 downto 0);
					mem_addr_s <= mem_addr_r+1;
					next_state_s <= READ_DIMENSIONS;
				when READ_DIMENSIONS => 
					rect_width_s <= mem_data_s(31 downto 16);
					rect_height_s <= mem_data_s(15 downto 0);
					mem_addr_s <= mem_addr_r+1023;
					next_state_s <= READ_COLOR;
				when others =>
	--				rgb_s <= x"1F0000";
					mem_addr_s <= mem_addr_r-1022;
					change_state_en_s <= '0';
					next_state_s <= READ_POSITION;
			end case;
		end process;
		
		
		--iterating throught rows (outer loop)
		y_s <= y_r+1 when tx_r = TILE_MAT_WIDTH and y_r < SCREEN_HEIGHT
			else y_r;
		--Vertical Tile index = y >> TILE_BITS(5)--
		ty_s <= "00000" & y_r(10 downto 0);
		--Horizontal tile index (inner loop) 
		tx_s <= tx_r+1 when tx_r < std_logic_vector(shift_right(to_unsigned(SCREEN_WIDTH, 10), TILE_BITS))
			else (others => '0');
			
		process
			begin
				for y in 0 to SCREEN_HEIGHT-1 loop
					ty_s <= std_logic_vector(shift_right(to_unsigned(y, 16), TILE_BITS));
					for tx in 0 to TILE_MAT_WIDTH-1 loop
					--Reading tile_mat element from memory. One tile_mat element takes two 32-bit location--
						for I in 0 to 1 loop
							tile_mat_s(to_integer(unsigned(ty_r)), tx)(I*4) <= mem_data_s(31 downto 24);
							tile_mat_s(to_integer(unsigned(ty_r)), tx)(I*4+1) <= mem_data_s(23 downto 16);
							tile_mat_s(to_integer(unsigned(ty_r)), tx)(I*4+2) <= mem_data_s(15 downto 8);
							tile_mat_s(to_integer(unsigned(ty_r)), tx)(I*4+3) <= mem_data_s(7 downto 0);
							wait for 100 ns;
							--TODO: Add one cycle delay betwen iteration (waiting for second memory location read)--
						end loop;
						--Initializing resulting color components, executed in one cycle-- 
						for I in 0 to TILE_LINE-1 loop
							acc_r_s(I) <= (others => '0');
							acc_g_s(I) <= (others => '0');
							acc_b_s(I) <= (others => '0');
							weight_s(I) <= (others => '0');
						end loop;
						
						RENDER_TILE_LINE: loop
							if(ti_r < TILE_LIST_LEN) then
								--tile_mat_r(0) = tile_list.end--
								if(ti_r = tile_mat_r(to_integer(unsigned(ty_r)), tx)(0)) then
									exit RENDER_TILE_LINE;
								else
									i_s <= tile_mat_r(to_integer(unsigned(ty_r)), tx)(to_integer(unsigned(ti_r)));
									ti_s <= ti_r+1;
								end if;
							else
								if(i_r = 0) then
									exit RENDER_TILE_LINE;
								else
									i_s <= i_r-1;
								end if;
							end if;
							--Calculating indexed rect memory location--
								--Rect position location = 2*i--
							mem_addr_s <= shift_right(unsigned(i_r), 1);
							wait for 100 ns;
							rect_row_s <= mem_data_s(31 downto 16);
							rect_col_s <= mem_data_s(15 downto 0);
								--Rect dimensions location = 2*i+1--
							mem_addr_s <= mem_addr_r+1;
							wait for 100 ns;
							rect_width_s <= mem_data_s(31 downto 16);
							rect_height_s <= mem_data_s(15 downto 0);
								--Rect rgba location = 2*i+1 + RECT_NUMBER(256)*2--
							mem_addr_s <= mem_addr_r+511;
							wait for 100 ns;
							rgba_s <= mem_data_s;
							
							for ix in 0 to TILE_LINE-1 loop
								x_s <= std_logic_vector(shift_left(unsigned(tx_r), TILE_BITS) or to_unsigned(ix, 16));
								--Pixel belongs to rect? --
								if(rect_col_r <= x_r and x_r < rect_col_r+rect_width_r
									and rect_row_r <= y and y < rect_row_r+rect_height_r) then
									--w_s = (u16) color.alpha << (SHIFT(13) - 8), hardcoded (shift_left doesn't accept concatenated vectors)-- 
									w_s <= "000" & rgba_r(7 downto 0) & "00000";--std_logic_vector(shift_left(unsigned("00000000" & rgba_r(7 downto 0)), SHIFT-8));
									wait for 100 ns;
									iw_s <= FIX_ONE - w_s;
									m_s <= std_logic_vector(shift_right(unsigned(w_s*weight_r(ix) + HALF), SHIFT));
									wait for 100 ns;
									acc_r_s(ix) <= acc_r_r(ix) + m_s*rgba_r(15 downto 8);
									acc_g_s(ix) <= acc_g_r(ix) + m_s*rgba_r(23 downto 16);
									acc_g_s(ix) <= acc_g_r(ix) + m_s*rgba_r(31 downto 24);
									wait for 100 ns;
									weight_s(ix) <= std_logic_vector(shift_right(unsigned(iw_s*weight_r(ix) + HALF), SHIFT));
									
								end if;
							end loop;
							--all_zeros_s <= '1';
							--wait for 100 ns;
							--for ix in 0 to TILE_LINE-1 loop
							--	if(weight_r(ix) /= 0) then
								--	all_zeros_s <= '0';
								--end if;
							--end loop;
							--If all weights are zeros line is fully opaque and all remaining rects are covered (invisible)-- 
							if(weight_r(0) = 0 and weight_r(1) = 0 and weight_r(2) = 0
								and weight_r(3) = 0 and weight_r(4) = 0 and weight_r(5) = 0
								and weight_r(6) = 0) then
									exit RENDER_TILE_LINE;
							end if;
						end loop RENDER_TILE_LINE;
						
						for ix in 0 to TILE_LINE-1 loop
							x_s <= std_logic_vector(shift_left(unsigned(tx_r), TILE_BITS) or to_unsigned(ix, 16));
							wait for 100 ns;
							pixels_s(y, to_integer(unsigned(x_r)))(23 downto 16) <= acc_r_r(ix);
							pixels_s(y, to_integer(unsigned(x_r)))(15 downto 8) <= acc_g_r(ix);
							pixels_s(y, to_integer(unsigned(x_r)))(7 downto 0) <= acc_b_r(ix);
						end loop;
					end loop;
				end loop;
		end process;
		
		
		--start_tile_partition signalize that one rect is read form memory
		--when we can start processing it to determine which tile/tiles rect belongs
--		start_tile_partition_s <= '1' when current_state_s = READ_COLOR
--			else '0';
		
--		ty_beg <= "00000" & rect_row_r(15 downto 4);
			
		--End ty index = ty_end >> TILE_BITS	
--		ty_end <= std_logic_vector(unsigned(rect_row_r)+unsigned(rect_height_r));
		
--		tx_beg <= "00000" & rect_col_r(15 downto 4);
			
		--End tx index = tx_end >> TILE_BITS
--		tx_end <= std_logic_vector(unsigned(rect_col_r)+unsigned(rect_col_r));
		

			
		
		--ty_s <= ty_beg when start_tile_partition_s = '1'
		--	else (others => '0') when ty_r = "00000" & ty_end(15 downto 4)
		--	else std_logic_vector(unsigned(ty_r)+1) when unsigned(tx_r) = 0
		--	else ty_r;
			
		--tx_s <= tx_beg when start_tile_partition_s = '1'
		--	else (others => '0') when tx_r = "00000" & tx_end(15 downto 4)
		--	else std_logic_vector(unsigned(tx_r)+1);
			
		--tile_mat_s(to_integer(unsigned(ty_r)*20 + unsigned(tx_r)*20))(to_integer(tile_mat_list_end_s(unsigned(ty_r) + unsigned(tx_r)))) <= cnt_r; 
		
		
		process(clk_i) begin
			if rising_edge(clk_i) then
				tile_mat_r <= tile_mat_s;
			end if;
		end process;
		
		
		
			
		
		

	
	rect_list_s <=  x"0000000000000000" & mem_data_s(23 downto 0) when phase_s = "00"
		else x"00000000" & mem_data_s & x"000000" when phase_s = "01"
		else mem_data_s & x"00000000000000" when phase_s = "10"
		else (others => '0');
	
	--phase_s <= "00" when pixel_col_i >= unsigned(rect_col_r)+unsigned(rect_width_r) and pixel_row_i >= unsigned(rect_row_r)+unsigned(rect_height_r)
	--   else	"01" when phase_r = "00"
	--	else "10" when phase_r = "01"
	--	else "11";
	
	index_s <= std_logic_vector(unsigned(index_r)+1) when unsigned(index_r) < 640*480
		else (others => '0');
		
--	pixels_arr(to_integer(unsigned(index_r))) <= (others => '1') when unsigned(index_r) < 200
--		else (others => '0');
	
	draw_s <= '1';
	--draw_s <= '0' when pixel_col_i >= unsigned(rect_col_r)+unsigned(rect_width_r) or pixel_row_i >= unsigned(rect_row_r)+unsigned(rect_height_r) 
	--or pixel_col_i <= unsigned(rect_col_r) or pixel_row_i <= unsigned(rect_row_r)
	--		else '1';
				
	--draw_s <= '0' when pixel_col_i <= unsigned(rect_col_r) or pixel_row_i <= unsigned(rect_row_r)
		--		else '1';
					
--	rgb_o <= pixels_arr(to_integer(unsigned(index_r)-1)) when draw_s = '1'
--				else x"000000";
				

		
	 process (clk_i)
		begin
		  if(rst_n_i = '0') then
				mem_addr_r <= (others => '0');
        elsif(rising_edge(clk_i)) then
            mem_addr_r <= mem_addr_s;
        end if;
    end process;
	
	------------------------------------
	--- STAGE 0, citanje indeksa mape ---
	------------------------------------
	
	
	comp_gen: for i in 0 to REGISTER_NUMBER-1 generate	
      -- Slice out data from registers --
		reg_row_s(i)    <= registers_s(i)(56 downto 48);
		reg_col_s(i)    <= registers_s(i)(41 downto 32);
		reg_size_s(i)   <= registers_s(i)(27 downto 24);
		reg_en_s(i)     <= registers_s(i)(31);
		reg_rot_s(i)    <= registers_s(i)(23 downto 16);
		reg_pointer_s(i)<= registers_s(i)(15 downto 0);
		
      -- Prepare some additional data, based on known values --
		reg_end_row_s(i) <= reg_row_s(i) + reg_size_s(i);
		reg_end_col_s(i) <= reg_col_s(i) + reg_size_s(i);
		
		reg_intsect_s0(i) <= '1' when 
                          ( pixel_row_i >= reg_row_s(i)      and
                            pixel_row_i <= reg_end_row_s(i)  and
                            pixel_col_i >= reg_col_s(i)      and
                            pixel_col_i <= reg_end_col_s(i)
                          ) and reg_en_s(i) = '1'  
                          else
                          '0';
	end generate comp_gen;


		
	reg_intersected_s0 <= "1001" when reg_intsect_s0(9) = '1' else
                        "1000" when reg_intsect_s0(8) = '1' else
                        "0111" when reg_intsect_s0(7) = '1' else
                        "0110" when reg_intsect_s0(6) = '1' else
                        "0101" when reg_intsect_s0(5) = '1' else
                        "0100" when reg_intsect_s0(4) = '1' else
                        "0011" when reg_intsect_s0(3) = '1' else
                        "0010" when reg_intsect_s0(2) = '1' else
                        "0001" when reg_intsect_s0(1) = '1' else
                        "0000" when reg_intsect_s0(0) = '1' else
                        "0000"; 				

	
	------------------------------------
	--- STAGE 3,  z, rot, addr        ---
	------------------------------------
	
	img_z_coor_s3 <= unsigned(mem_data_s(31 downto 24));
	img_rot_s3    <= unsigned(mem_data_s(23 downto 16));
	img_addr_s3   <= unsigned(mem_data_s(ADDR_WIDTH-1 downto 0));
	
	img_row_s3 <= pixel_row_i(3 downto 0) when stat_img_size_is_16 = '1' else '0' & pixel_row_i(2 downto 0);
	img_col_s3 <= pixel_col_i(3 downto 0) when stat_img_size_is_16 = '1' else '0' & pixel_col_i(2 downto 0);	
	
	--------------------------------------------------
	--- STAGE 4,  img_tex_col_s, img_tex_row_s      ---
	--------------------------------------------------
	
	--if 7 when 8 then 15 when 16? bravo una
	
	stat_img_size <= "1111" when stat_img_size_is_16 = '1' else "0111";
	
	with img_rot_r4 select
		img_tex_col_s4 <= 
		   img_col_r4       when "00000000",   -- 0  --skinuli nulu spreda
		   stat_img_size - img_row_r4   when "00000001",   -- 90    --size_8_c
			stat_img_size - img_col_r4  when "00000010",   -- 180
			img_row_r4		  when others; 		 -- 270   --skinuli nulu spreda
	
	with img_rot_r4 select
		img_tex_row_s4 <= 
			img_row_r4        when "00000000",   -- 0   --skinuli nulu spreda
			img_col_r4        when "00000001",   -- 90	--skinuli nulu spreda
			stat_img_size - img_row_r4   when "00000010",	  -- 180
			stat_img_size - img_col_r4   when others;       -- 270

	--------------------------------------------------
	--- STAGE 5,  img_tex_offset_s                 ---
	--------------------------------------------------	
			
	img_tex_offset_s5 <= 
		img_tex_row_r5 & img_tex_col_r5
		when stat_img_size_is_16 = '1' else 
		"00" & img_tex_row_r5(2 downto 0) & img_tex_col_r5(2 downto 0);

	
	----------------------------------
	--- STAGE 6,  scnd_stg_addr_r  ---
	----------------------------------
	
	img_pix_addr_s6 <= img_addr_r6 + img_tex_word_r6;
	
	max_s6      <= reg_size_s(to_integer(reg_intersected_r6));
	rot_s6      <= reg_rot_s(to_integer(reg_intersected_r6));		
	
	sprt_int_row_s6 <= pixel_row_i - reg_row_s(to_integer(reg_intersected_r6));
	sprt_int_col_s6 <= pixel_col_i - reg_col_s(to_integer(reg_intersected_r6));
	
	
	-----------------------------------------------------------------
	--- STAGE 7,  img_color_idx_r ,sprt_tex_offset_r  img_z_coor_r ---                
	-----------------------------------------------------------------
	
	sprt_row_s7 <= sprt_int_row_r7(3 downto 0);
	sprt_col_s7 <= sprt_int_col_r7(3 downto 0);
	
	s_col_s7 <= sprt_col_s7             when rot_r7 = x"00" else -- 0
				  max_r7 - sprt_row_s7 when rot_r7 = x"01" else -- 90
				  max_r7 - sprt_col_s7 when rot_r7 = x"02" else -- 180
				  sprt_row_s7;                                -- 270
				  
	s_row_s7 <= sprt_row_s7              when rot_r7 = x"00" else  -- 0
				  sprt_col_s7			when rot_r7 = x"01" else  -- 90
				  max_r7 - sprt_row_s7  when rot_r7 = x"02" else  -- 180
				  max_r7 - sprt_col_s7;                           -- 270
				  
	
	
	-------------------------------------------------------------------
    --- STAGE 9, sprt_tex_offset_r, img_color_idx_r, img_z_coor_r	---
    -------------------------------------------------------------------
	
	-- Get color index of static image.
	with img_tex_pix_sel_r9 select	
		img_color_idx_s9 <= 	
			unsigned(mem_data_s( 7 downto  0)) when "11",
			unsigned(mem_data_s(15 downto  8)) when "10",
			unsigned(mem_data_s(23 downto 16)) when "01",
			unsigned(mem_data_s(31 downto 24)) when others;

	sprt_addr_s9 <= reg_pointer_s(to_integer(reg_intersected_r9))(12 downto 0) + sprt_tex_offset_r9(7 downto 2);
	
	-------------------------------
    --- STAGE 12, palette_idx_s	---
    -------------------------------
	
	--	 Calclulate color index of sprite --
	with sprt_tex_offset_r12(1 downto 0) select
      spr_color_idx_s12 <= 
			unsigned(mem_data_s( 7 downto  0)) when "11",
			unsigned(mem_data_s(15 downto  8)) when "10",
			unsigned(mem_data_s(23 downto 16)) when "01",
			unsigned(mem_data_s(31 downto 24)) when others;
	
	-------------------------------
    --- STAGE 13, palette_idx_s	---
    -------------------------------
	--palette_idx_s13 <= img_color_idx_r13;
	
	palette_idx_s13   <= spr_color_idx_r13 when 
                       (
                        reg_intsect_r1 (to_integer(reg_intersected_r13)) = '1' and
                        (
                           -- z sort --
                           ( ( img_z_coor_r13 <= sprite_z_coor ) and ( spr_color_idx_r13 > x"00" ) ) or
                           -- alpha sort ( if static img index is transparent ) --
                           ( ( img_z_coor_r13 > sprite_z_coor ) and ( img_color_idx_r13 = x"00" ) )
                        )
                      ) else 
                      img_color_idx_r13; 		
	
	-----------------------------------
	--- STAGE 14, zero_stg_addr_r	---
	-----------------------------------
	
    palette_addr_s14 <= (ADDR_WIDTH-1 downto 8 => '0') & palette_idx_r14;
	 
	 process(clk_i) begin
      if rising_edge(clk_i) then
			palette_addr_r15 <= palette_addr_s14;
      end if;
	end process;
	
	
	-----------------------------------------------------------------------------------
	--                            RAM                                --
	-----------------------------------------------------------------------------------
						
		
	
	
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
	   WIDTH => 24,
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
	   WIDTH => 9,
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
	   WIDTH => 9,
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
	   WIDTH => 9,
		RST_INIT => 0
	)		
	PORT MAP (
	   i_clk => clk_i,
		in_rst => rst_n_i,
		i_d => tx_s,
		o_q => tx_r
	);
	
	
	
end Behavioral;

