------------------------------------------------------------------------------
-- battle_city_periph.vhd - entity/architecture pair
------------------------------------------------------------------------------
-- IMPORTANT:
-- DO NOT MODIFY THIS FILE EXCEPT IN THE DESIGNATED SECTIONS.
--
-- SEARCH FOR --USER TO DETERMINE WHERE CHANGES ARE ALLOWED.
--
-- TYPICALLY, THE ONLY ACCEPTABLE CHANGES INVOLVE ADDING NEW
-- PORTS AND GENERICS THAT GET PASSED THROUGH TO THE INSTANTIATION
-- OF THE USER_LOGIC ENTITY.
------------------------------------------------------------------------------
--
-- ***************************************************************************
-- ** Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.            **
-- **                                                                       **
-- ** Xilinx, Inc.                                                          **
-- ** XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"         **
-- ** AS A COURTESY TO YOU, SOLELY FOR USE IN DEVELOPING PROGRAMS AND       **
-- ** SOLUTIONS FOR XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE,        **
-- ** OR INFORMATION AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE,        **
-- ** APPLICATION OR STANDARD, XILINX IS MAKING NO REPRESENTATION           **
-- ** THAT THIS IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,     **
-- ** AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE      **
-- ** FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY              **
-- ** WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE               **
-- ** IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR        **
-- ** REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF       **
-- ** INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS       **
-- ** FOR A PARTICULAR PURPOSE.                                             **
-- **                                                                       **
-- ***************************************************************************
--
------------------------------------------------------------------------------
-- Filename:          battle_city_periph.vhd
-- Version:           1.01.a
-- Description:       Top level design, instantiates library components and user logic.
-- Date:              Mon Jul 06 14:45:41 2015 (by Create and Import Peripheral Wizard)
-- VHDL Standard:     VHDL'93
------------------------------------------------------------------------------
-- Naming Conventions:
--   active low signals:                    "*_n"
--   clock signals:                         "clk", "clk_div#", "clk_#x"
--   reset signals:                         "rst", "rst_n"
--   generics:                              "C_*"
--   user defined types:                    "*_TYPE"
--   state machine next state:              "*_ns"
--   state machine current state:           "*_cs"
--   combinatorial signals:                 "*_com"
--   pipelined or register delay signals:   "*_d#"
--   counter signals:                       "*cnt*"
--   clock enable signals:                  "*_ce"
--   internal version of output port:       "*_i"
--   device pins:                           "*_pin"
--   ports:                                 "- Names begin with Uppercase"
--   processes:                             "*_PROCESS"
--   component instantiations:              "<ENTITY_>I_<#|FUNC>"
------------------------------------------------------------------------------


library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;
	
library fb_less_2d_gpu_periph_v1_00_a;
	use fb_less_2d_gpu_periph_v1_00_a.all;

------------------------------------------------------------------------------
-- Entity section
------------------------------------------------------------------------------
-- Definition of Generics:
--   C_S_AXI_DATA_WIDTH           -- AXI4LITE slave: Data width
--   C_S_AXI_ADDR_WIDTH           -- AXI4LITE slave: Address Width
--   C_S_AXI_MIN_SIZE             -- AXI4LITE slave: Min Size
--   C_USE_WSTRB                  -- AXI4LITE slave: Write Strobe
--   C_DPHASE_TIMEOUT             -- AXI4LITE slave: Data Phase Timeout
--   C_BASEADDR                   -- AXI4LITE slave: base address
--   C_HIGHADDR                   -- AXI4LITE slave: high address
--   C_FAMILY                     -- FPGA Family
--   C_NUM_REG                    -- Number of software accessible registers
--   C_NUM_MEM                    -- Number of address-ranges
--   C_SLV_AWIDTH                 -- Slave interface address bus width
--   C_SLV_DWIDTH                 -- Slave interface data bus width
--
-- Definition of Ports:
--   S_AXI_ACLK                   -- AXI4LITE slave: Clock 
--   S_AXI_ARESETN                -- AXI4LITE slave: Reset
--   S_AXI_AWADDR                 -- AXI4LITE slave: Write address
--   S_AXI_AWVALID                -- AXI4LITE slave: Write address valid
--   S_AXI_WDATA                  -- AXI4LITE slave: Write data
--   S_AXI_WSTRB                  -- AXI4LITE slave: Write strobe
--   S_AXI_WVALID                 -- AXI4LITE slave: Write data valid
--   S_AXI_BREADY                 -- AXI4LITE slave: Response ready
--   S_AXI_ARADDR                 -- AXI4LITE slave: Read address
--   S_AXI_ARVALID                -- AXI4LITE slave: Read address valid
--   S_AXI_RREADY                 -- AXI4LITE slave: Read data ready
--   S_AXI_ARREADY                -- AXI4LITE slave: read addres ready
--   S_AXI_RDATA                  -- AXI4LITE slave: Read data
--   S_AXI_RRESP                  -- AXI4LITE slave: Read data response
--   S_AXI_RVALID                 -- AXI4LITE slave: Read data valid
--   S_AXI_WREADY                 -- AXI4LITE slave: Write data ready
--   S_AXI_BRESP                  -- AXI4LITE slave: Response
--   S_AXI_BVALID                 -- AXI4LITE slave: Resonse valid
--   S_AXI_AWREADY                -- AXI4LITE slave: Wrte address ready
------------------------------------------------------------------------------

entity fb_less_2d_gpu_standalone is
  port
  (
		clk_24MHz_i		: in  std_logic;
		rst_in			: in  std_logic;
		
    -- Same as in battle_city_periph BELOW THIS LINE ------------------
		vga_clk_o		: out std_logic;
		red_o				: out std_logic_vector(7 downto 0);
		green_o			: out std_logic_vector(7 downto 0);
		blue_o			: out std_logic_vector(7 downto 0);
		blank_on			: out std_logic;
		h_sync_on		: out std_logic;
		v_sync_on		: out std_logic;
		sync_on			: out std_logic;
		pow_save_on		: out std_logic
    -- Same as in battle_city_periph ABOVE THIS LINE ------------------
  );
end entity fb_less_2d_gpu_standalone;

------------------------------------------------------------------------------
-- Architecture section
------------------------------------------------------------------------------

architecture IMP of fb_less_2d_gpu_standalone is
	
	-- Same as in battle_city_standalone BELOW THIS LINE ------------------
	constant ADDR_WIDTH : natural := 13;

	signal clk_100MHz			: std_logic;
	signal n_reset				: std_logic;
	
	signal rgb_s					: std_logic_vector(23 downto 0);
 	signal pixel_x_s				: unsigned(9 downto 0);
	signal pixel_y_s				: unsigned(8 downto 0);
	signal phase_s					: unsigned(1 downto 0);

	signal bus_addr		      : std_logic_vector(ADDR_WIDTH-1 downto 0);
	signal bus_data            : std_logic_vector(31 downto 0);
	signal bus_we              : std_logic;
	
begin

	vga_ctrl_i : entity vga_ctrl
		port map
		(
			i_clk_100MHz   => clk_100MHz,
			in_reset       => n_reset,
			
			o_phase			=> phase_s,
			o_pixel_x		=> pixel_x_s,
			o_pixel_y		=> pixel_y_s, 
			i_red				=> rgb_s(7 downto 0),
			i_green			=> rgb_s(15 downto 8),
			i_blue			=> rgb_s(23 downto 16),

			o_vga_clk		=> vga_clk_o,
			o_red				=> red_o,
			o_green			=> green_o,
			o_blue			=> blue_o,
			on_blank			=> blank_on,
			on_h_sync		=> h_sync_on,
			on_v_sync		=> v_sync_on,
			on_sync			=> sync_on,
			on_pow_save		=> pow_save_on
		);
		
	fb_less_2d_gpu_i : entity fb_less_2d_gpu
		port map
		(
			clk_i				=> clk_100MHz,
			rst_n_i			=> n_reset,
			pixel_row_i		=> pixel_y_s,
			pixel_col_i		=> pixel_x_s,
			bus_addr_i		=> bus_addr,
			bus_data_i		=> bus_data,
			bus_we_i			=> bus_we,
			phase_i			=> phase_s,
			rgb_o				=> rgb_s
		);
    -- Same as in battle_city_periph ABOVE THIS LINE ------------------
	 

	clk_gen: entity clk_gen_100MHz
	port map(
		i_clk_24MHz  => clk_24MHz_i,
		in_reset     => rst_in,
		o_clk_100MHz => clk_100MHz,
		o_locked     => n_reset
	);
	

	bus_addr <= (others => '0');
	bus_data <= (others => '0');
	bus_we <= '0';
	
end IMP;

