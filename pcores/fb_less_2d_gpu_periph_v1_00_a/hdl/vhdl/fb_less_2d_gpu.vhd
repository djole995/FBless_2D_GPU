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
	signal mem_addr_r           :  unsigned(ADDR_WIDTH-1 downto 0);
	signal mem_addr_s           :  unsigned(ADDR_WIDTH-1 downto 0);
	
	-----------NEW--------------------------
	signal rect_s: std_logic_vector(87 downto 0);
	signal rect_list_s : std_logic_vector(87 downto 0) := x"001F00FF001F00FF0000FF";
	signal draw_s : std_logic := '0';
	signal rgb_s : std_logic_vector(23 downto 0);
	signal pixel_row_s : std_logic_vector(15 downto 0);
	signal pixel_col_s : std_logic_vector(15 downto 0);
	signal rect_width_s : std_logic_vector(15 downto 0);
	signal rect_height_s : std_logic_vector(15 downto 0);
	
	signal phase_s : std_logic_vector(1 downto 0);

	
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

	--uvek 16x16
	stat_img_size_is_16 <= '1';
	--80-72 64-56 49-40 32-24
	
	rect_list_s(23 downto 0) <=  mem_data_s(23 downto 0);--x"0000000000000000" & mem_data_s(23 downto 0) when phase_s = "00"
		--else x"00000000" & mem_data_s & x"000000" when phase_s = "01"
		--else mem_data_s & x"00000000000000" when phase_s = "10"
		--else (others => '0');
	
	phase_s <= (others => '0') when mem_addr_s = 0
		else "01" when mem_addr_s = 1
		else "10" when mem_addr_s = 2
		else "11";
		
			
	
	rgb_s <= rect_list_s(23 downto 0) when phase_s = "00" 
		else (others => '0');
		
	pixel_row_s <= rect_list_s(87 downto 72) when phase_s = "01"
		else (others => '0');
	pixel_col_s <= rect_list_s(71 downto 56) when phase_s = "01"
		else (others => '0');
	
	rect_width_s <= rect_list_s(55 downto 40) when phase_s = "10"
		else (others => '0');
	rect_height_s <= rect_list_s(39 downto 24) when phase_s = "10"
		else (others => '0');
	
	
	
	draw_s <= '0' when pixel_col_i >= unsigned(pixel_col_s)+unsigned(rect_width_s) or pixel_row_i >= unsigned(pixel_row_s)+unsigned(rect_height_s) 
	or pixel_col_i <= unsigned(pixel_col_s) or pixel_row_i <= unsigned(pixel_row_s)
				else '1';
					
	rgb_o <= rgb_s when draw_s = '1'
				else (others => '0');
	
	--mem_data_s(23 downto 0);
	
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
	

	
	
	
	
   -- map_index_s = (row/8)*80 + col/8;
	map_index_size_8_s0  <= unsigned('0' & std_logic_vector(pixel_row_i(8 downto 3)) & "000000") 
                   + unsigned('0' & std_logic_vector(pixel_row_i(8 downto 3)) & "0000")
                   + pixel_col_i(9 downto 3);
						 
	map_index_size_16_s0  <= unsigned ("00" & std_logic_vector(pixel_row_i(8 downto 4)) & "000000") 
                   + unsigned("00" & std_logic_vector(pixel_row_i(8 downto 4)) & "0000")
                   + pixel_col_i(9 downto 4);
						 
	map_index_s0 <= map_index_size_16_s0 when stat_img_size_is_16 = '1' else map_index_size_8_s0;

	
	map_addr_s0 <= map_index_s0 + MAP_OFFSET;
	
	process(clk_i) begin
		if rising_edge(clk_i) then
			reg_intsect_r1 <= reg_intsect_s0;
			reg_intersected_r1 <= reg_intersected_s0;
			map_addr_r1  <= map_addr_s0;
		end if;
	end process;
						
	
	------------------------------------ 
	---   FAZA 1,2 nista posebno     ---
	------------------------------------
	
	process(clk_i) begin
		if rising_edge(clk_i) then
			reg_intersected_r2 <= reg_intersected_r1;
			reg_intsect_r2 <= reg_intsect_r1;
		end if;
	end process;
	
	process(clk_i) begin
		if rising_edge(clk_i) then
		reg_intsect_r3 <= reg_intsect_r2;
			reg_intersected_r3 <= reg_intersected_r2;
		end if;
	end process;

	
	------------------------------------
	--- STAGE 3,  z, rot, addr        ---
	------------------------------------
	
	img_z_coor_s3 <= unsigned(mem_data_s(31 downto 24));
	img_rot_s3    <= unsigned(mem_data_s(23 downto 16));
	img_addr_s3   <= unsigned(mem_data_s(ADDR_WIDTH-1 downto 0));
	
	img_row_s3 <= pixel_row_i(3 downto 0) when stat_img_size_is_16 = '1' else '0' & pixel_row_i(2 downto 0);
	img_col_s3 <= pixel_col_i(3 downto 0) when stat_img_size_is_16 = '1' else '0' & pixel_col_i(2 downto 0);	
	
	process(clk_i) begin
		if rising_edge(clk_i) then
			reg_intsect_r4 <= reg_intsect_r3;
			img_addr_r4 <= img_addr_s3;
			img_rot_r4 <= img_rot_s3;
			img_z_coor_r4 <= img_z_coor_s3;
			img_row_r4 <= img_row_s3;
			img_col_r4 <= img_col_s3;
			reg_intersected_r4 <= reg_intersected_r3;
		end if;
	end process;
	
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
			
	process(clk_i) begin
		if rising_edge(clk_i) then
			img_tex_col_r5 <= img_tex_col_s4;
			img_tex_row_r5 <= img_tex_row_s4;
			reg_intersected_r5 <= reg_intersected_r4;
			img_addr_r5 <= img_addr_r4;
			img_z_coor_r5 <= img_z_coor_r4;
			reg_intsect_r5 <= reg_intsect_r4;
		end if;
	end process;

	--------------------------------------------------
	--- STAGE 5,  img_tex_offset_s                 ---
	--------------------------------------------------	
			
	img_tex_offset_s5 <= 
		img_tex_row_r5 & img_tex_col_r5
		when stat_img_size_is_16 = '1' else 
		"00" & img_tex_row_r5(2 downto 0) & img_tex_col_r5(2 downto 0);
	
	process(clk_i) begin
		if rising_edge(clk_i) then
			img_tex_word_r6 <= img_tex_offset_s5(7 downto 2);
			img_tex_pix_sel_r6 <= img_tex_offset_s5(1 downto 0);
			reg_intersected_r6 <= reg_intersected_r5;
			img_addr_r6 <= img_addr_r5;
			img_z_coor_r6 <= img_z_coor_r5;
			reg_intsect_r6 <= reg_intsect_r5;
		end if;
	end process;

	
	----------------------------------
	--- STAGE 6,  scnd_stg_addr_r  ---
	----------------------------------
	
	img_pix_addr_s6 <= img_addr_r6 + img_tex_word_r6;
	
	max_s6      <= reg_size_s(to_integer(reg_intersected_r6));
	rot_s6      <= reg_rot_s(to_integer(reg_intersected_r6));		
	
	sprt_int_row_s6 <= pixel_row_i - reg_row_s(to_integer(reg_intersected_r6));
	sprt_int_col_s6 <= pixel_col_i - reg_col_s(to_integer(reg_intersected_r6));
	
	process(clk_i) begin
		if rising_edge(clk_i) then
			img_pix_addr_r7 <= img_pix_addr_s6;
			img_addr_r7 <= img_addr_r6;
			img_z_coor_r7 <= img_z_coor_r6;
			img_tex_pix_sel_r7 <= img_tex_pix_sel_r6;
			max_r7 <= max_s6;
			rot_r7 <= rot_s6;
			sprt_int_col_r7 <= sprt_int_col_s6;
			sprt_int_row_r7 <= sprt_int_row_s6;
			reg_intersected_r7 <= reg_intersected_r6;
			reg_intsect_r7 <= reg_intsect_r6;
		end if;
	end process;
	
	
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
				  
				  
	 process(clk_i) begin
      if rising_edge(clk_i) then
			s_col_r8 <= s_col_s7;
			s_row_r8 <= s_row_s7;
			img_tex_pix_sel_r8 <= img_tex_pix_sel_r7;
			img_z_coor_r8 <= img_z_coor_r7;
			reg_intersected_r8 <= reg_intersected_r7;
			reg_intsect_r8 <= reg_intsect_r7;
      end if;
	end process;
	

    -----------------------------------------------------
    --- STAGE 8, sprt_tex_offset_r, img_color_idx_r 	---
    -----------------------------------------------------
				  
	 sprt_tex_offset_s8 <= s_row_r8 & s_col_r8;

	process(clk_i) begin
		if rising_edge(clk_i) then
			img_tex_pix_sel_r9 <= img_tex_pix_sel_r8;
			reg_intersected_r9 <= reg_intersected_r8;
			sprt_tex_offset_r9 <= sprt_tex_offset_s8;
			img_z_coor_r9 <= img_z_coor_r8;
			reg_intsect_r9 <= reg_intsect_r8;
 		end if;
	end process;
	
	
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
	
	process(clk_i) begin
		if rising_edge(clk_i) then
			sprt_tex_offset_r10 <= sprt_tex_offset_r9;
			img_z_coor_r10 <= img_z_coor_r9;
			sprt_addr_r10 <= sprt_addr_s9;                     
			img_color_idx_r10 <= img_color_idx_s9;
			reg_intersected_r10 <= reg_intersected_r9;
			reg_intsect_r10 <= reg_intsect_r9;
		end if;
	end process;
	
    -------------------------------
    --- STAGE 10, palette_idx_s	---
    -------------------------------
	
		process(clk_i) begin
		if rising_edge(clk_i) then
			sprt_tex_offset_r11 <= sprt_tex_offset_r10;
			img_z_coor_r11 <= img_z_coor_r10;                    
			img_color_idx_r11 <= img_color_idx_r10;
			reg_intersected_r11 <= reg_intersected_r10;
			reg_intsect_r11 <= reg_intsect_r10;
		end if;
	end process;
	
	-------------------------------
    --- STAGE 11, palette_idx_s	---
    -------------------------------
	
		process(clk_i) begin
		if rising_edge(clk_i) then
			sprt_tex_offset_r12 <= sprt_tex_offset_r11;
			img_z_coor_r12 <= img_z_coor_r11;                    
			img_color_idx_r12 <= img_color_idx_r11;
			reg_intersected_r12 <= reg_intersected_r11;
			reg_intsect_r12 <= reg_intsect_r11;
		end if;
	end process;
	
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
			
	process(clk_i) begin
		if rising_edge(clk_i) then
			img_z_coor_r13 <= img_z_coor_r12;                    
			img_color_idx_r13 <= img_color_idx_r12;
			reg_intersected_r13 <= reg_intersected_r12;
			spr_color_idx_r13 <= spr_color_idx_s12;
			reg_intsect_r13 <= reg_intsect_r12;
		end if;
	end process;
	
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
	
			
	process(clk_i) begin
		if rising_edge(clk_i) then
			palette_idx_r14 <= palette_idx_s13;
		end if;
	end process;
	
	-----------------------------------
	--- STAGE 14, zero_stg_addr_r	---
	-----------------------------------
	
    palette_addr_s14 <= (ADDR_WIDTH-1 downto 8 => '0') & palette_idx_r14;
	 
	 process(clk_i) begin
      if rising_edge(clk_i) then
			palette_addr_r15 <= palette_addr_s14;
      end if;
	end process;
   	
	
	-----------------------------------
	--- STAGE 15, zero_stg_addr_r	---
	-----------------------------------
	
	process(clk_i) begin
      if rising_edge(clk_i) then
			palette_addr_r16 <= palette_addr_r15;
      end if;
	end process;
	
	
	-----------------------------------------------------------------------------------
	--                            RAM                                --
	-----------------------------------------------------------------------------------
						
   
	--with phase_i select
		mem_addr_s <= (others => '0');      
		--	map_addr_r1       when "01",
		--	img_pix_addr_r7   when "11",
		--	palette_addr_r16  when "00",
		--	sprt_addr_r10     when others;
			
	process(clk_i) begin
		if rising_edge(clk_i) then
			mem_addr_r <= mem_addr_s;
		end if;
	end process;
	
	
	ram_i : ram
	port map(
		i_clk					=> clk_i,
		i_r_addr				=> std_logic_vector(mem_addr_r), 
		i_data				=> bus_data_i,
		i_we					=> bus_we_i,
		i_w_addr				=> bus_addr_i,
		o_data				=> mem_data_s
	);		
	
end Behavioral;

