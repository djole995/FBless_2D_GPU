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
	
	
	   -- Memory --
   signal mem_data_s       : std_logic_vector(DATA_WIDTH-1 downto 0);      -- Data from local memory
   signal mem_address_s    : std_logic_vector(ADDR_WIDTH-1 downto 0);      -- Address used to read from memory


begin


-----------------------------RAM------------------
	with phase_i select
		mem_addr_s <=         
			map_addr_r1       when "01",
			img_pix_addr_r7   when "11",
			palette_addr_r16  when "00",
			sprt_addr_r10     when others;
			
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

