-------------------------------------------------------------------------------
-- system_vga_periph_mem_0_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

library vga_periph_mem_v1_00_a;
use vga_periph_mem_v1_00_a.all;

entity system_vga_periph_mem_0_wrapper is
  port (
    S_AXI_ACLK : in std_logic;
    S_AXI_ARESETN : in std_logic;
    S_AXI_AWADDR : in std_logic_vector(31 downto 0);
    S_AXI_AWVALID : in std_logic;
    S_AXI_WDATA : in std_logic_vector(31 downto 0);
    S_AXI_WSTRB : in std_logic_vector(3 downto 0);
    S_AXI_WVALID : in std_logic;
    S_AXI_BREADY : in std_logic;
    S_AXI_ARADDR : in std_logic_vector(31 downto 0);
    S_AXI_ARVALID : in std_logic;
    S_AXI_RREADY : in std_logic;
    S_AXI_ARREADY : out std_logic;
    S_AXI_RDATA : out std_logic_vector(31 downto 0);
    S_AXI_RRESP : out std_logic_vector(1 downto 0);
    S_AXI_RVALID : out std_logic;
    S_AXI_WREADY : out std_logic;
    S_AXI_BRESP : out std_logic_vector(1 downto 0);
    S_AXI_BVALID : out std_logic;
    S_AXI_AWREADY : out std_logic;
    S_AXI_AWID : in std_logic_vector(0 downto 0);
    S_AXI_AWLEN : in std_logic_vector(7 downto 0);
    S_AXI_AWSIZE : in std_logic_vector(2 downto 0);
    S_AXI_AWBURST : in std_logic_vector(1 downto 0);
    S_AXI_AWLOCK : in std_logic;
    S_AXI_AWCACHE : in std_logic_vector(3 downto 0);
    S_AXI_AWPROT : in std_logic_vector(2 downto 0);
    S_AXI_WLAST : in std_logic;
    S_AXI_BID : out std_logic_vector(0 downto 0);
    S_AXI_ARID : in std_logic_vector(0 downto 0);
    S_AXI_ARLEN : in std_logic_vector(7 downto 0);
    S_AXI_ARSIZE : in std_logic_vector(2 downto 0);
    S_AXI_ARBURST : in std_logic_vector(1 downto 0);
    S_AXI_ARLOCK : in std_logic;
    S_AXI_ARCACHE : in std_logic_vector(3 downto 0);
    S_AXI_ARPROT : in std_logic_vector(2 downto 0);
    S_AXI_RID : out std_logic_vector(0 downto 0);
    S_AXI_RLAST : out std_logic;
    clk_i : in std_logic;
    reset_n_i : in std_logic;
    direct_mode_i : in std_logic;
    display_mode_i : in std_logic_vector(1 downto 0);
    vga_hsync_o : out std_logic;
    vga_vsync_o : out std_logic;
    blank_o : out std_logic;
    pix_clock_o : out std_logic;
    psave_o : out std_logic;
    sync_o : out std_logic;
    red_o : out std_logic_vector(7 downto 0);
    green_o : out std_logic_vector(7 downto 0);
    blue_o : out std_logic_vector(7 downto 0)
  );
end system_vga_periph_mem_0_wrapper;

architecture STRUCTURE of system_vga_periph_mem_0_wrapper is

  component vga_periph_mem is
    generic (
      C_S_AXI_DATA_WIDTH : INTEGER;
      C_S_AXI_ADDR_WIDTH : INTEGER;
      C_S_AXI_ID_WIDTH : INTEGER;
      C_RDATA_FIFO_DEPTH : INTEGER;
      C_INCLUDE_TIMEOUT_CNT : INTEGER;
      C_TIMEOUT_CNTR_VAL : INTEGER;
      C_ALIGN_BE_RDADDR : INTEGER;
      C_S_AXI_SUPPORTS_WRITE : INTEGER;
      C_S_AXI_SUPPORTS_READ : INTEGER;
      C_FAMILY : STRING;
      C_S_AXI_MEM0_BASEADDR : std_logic_vector;
      C_S_AXI_MEM0_HIGHADDR : std_logic_vector
    );
    port (
      S_AXI_ACLK : in std_logic;
      S_AXI_ARESETN : in std_logic;
      S_AXI_AWADDR : in std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0);
      S_AXI_AWVALID : in std_logic;
      S_AXI_WDATA : in std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);
      S_AXI_WSTRB : in std_logic_vector(((C_S_AXI_DATA_WIDTH/8)-1) downto 0);
      S_AXI_WVALID : in std_logic;
      S_AXI_BREADY : in std_logic;
      S_AXI_ARADDR : in std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0);
      S_AXI_ARVALID : in std_logic;
      S_AXI_RREADY : in std_logic;
      S_AXI_ARREADY : out std_logic;
      S_AXI_RDATA : out std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);
      S_AXI_RRESP : out std_logic_vector(1 downto 0);
      S_AXI_RVALID : out std_logic;
      S_AXI_WREADY : out std_logic;
      S_AXI_BRESP : out std_logic_vector(1 downto 0);
      S_AXI_BVALID : out std_logic;
      S_AXI_AWREADY : out std_logic;
      S_AXI_AWID : in std_logic_vector((C_S_AXI_ID_WIDTH-1) downto 0);
      S_AXI_AWLEN : in std_logic_vector(7 downto 0);
      S_AXI_AWSIZE : in std_logic_vector(2 downto 0);
      S_AXI_AWBURST : in std_logic_vector(1 downto 0);
      S_AXI_AWLOCK : in std_logic;
      S_AXI_AWCACHE : in std_logic_vector(3 downto 0);
      S_AXI_AWPROT : in std_logic_vector(2 downto 0);
      S_AXI_WLAST : in std_logic;
      S_AXI_BID : out std_logic_vector((C_S_AXI_ID_WIDTH-1) downto 0);
      S_AXI_ARID : in std_logic_vector((C_S_AXI_ID_WIDTH-1) downto 0);
      S_AXI_ARLEN : in std_logic_vector(7 downto 0);
      S_AXI_ARSIZE : in std_logic_vector(2 downto 0);
      S_AXI_ARBURST : in std_logic_vector(1 downto 0);
      S_AXI_ARLOCK : in std_logic;
      S_AXI_ARCACHE : in std_logic_vector(3 downto 0);
      S_AXI_ARPROT : in std_logic_vector(2 downto 0);
      S_AXI_RID : out std_logic_vector((C_S_AXI_ID_WIDTH-1) downto 0);
      S_AXI_RLAST : out std_logic;
      clk_i : in std_logic;
      reset_n_i : in std_logic;
      direct_mode_i : in std_logic;
      display_mode_i : in std_logic_vector(1 downto 0);
      vga_hsync_o : out std_logic;
      vga_vsync_o : out std_logic;
      blank_o : out std_logic;
      pix_clock_o : out std_logic;
      psave_o : out std_logic;
      sync_o : out std_logic;
      red_o : out std_logic_vector(7 downto 0);
      green_o : out std_logic_vector(7 downto 0);
      blue_o : out std_logic_vector(7 downto 0)
    );
  end component;

begin

  vga_periph_mem_0 : vga_periph_mem
    generic map (
      C_S_AXI_DATA_WIDTH => 32,
      C_S_AXI_ADDR_WIDTH => 32,
      C_S_AXI_ID_WIDTH => 1,
      C_RDATA_FIFO_DEPTH => 0,
      C_INCLUDE_TIMEOUT_CNT => 1,
      C_TIMEOUT_CNTR_VAL => 8,
      C_ALIGN_BE_RDADDR => 0,
      C_S_AXI_SUPPORTS_WRITE => 1,
      C_S_AXI_SUPPORTS_READ => 1,
      C_FAMILY => "spartan6",
      C_S_AXI_MEM0_BASEADDR => X"C0000000",
      C_S_AXI_MEM0_HIGHADDR => X"C3FFFFFF"
    )
    port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_AWADDR => S_AXI_AWADDR,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_WDATA => S_AXI_WDATA,
      S_AXI_WSTRB => S_AXI_WSTRB,
      S_AXI_WVALID => S_AXI_WVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_ARADDR => S_AXI_ARADDR,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_RDATA => S_AXI_RDATA,
      S_AXI_RRESP => S_AXI_RRESP,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_BRESP => S_AXI_BRESP,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWID => S_AXI_AWID,
      S_AXI_AWLEN => S_AXI_AWLEN,
      S_AXI_AWSIZE => S_AXI_AWSIZE,
      S_AXI_AWBURST => S_AXI_AWBURST,
      S_AXI_AWLOCK => S_AXI_AWLOCK,
      S_AXI_AWCACHE => S_AXI_AWCACHE,
      S_AXI_AWPROT => S_AXI_AWPROT,
      S_AXI_WLAST => S_AXI_WLAST,
      S_AXI_BID => S_AXI_BID,
      S_AXI_ARID => S_AXI_ARID,
      S_AXI_ARLEN => S_AXI_ARLEN,
      S_AXI_ARSIZE => S_AXI_ARSIZE,
      S_AXI_ARBURST => S_AXI_ARBURST,
      S_AXI_ARLOCK => S_AXI_ARLOCK,
      S_AXI_ARCACHE => S_AXI_ARCACHE,
      S_AXI_ARPROT => S_AXI_ARPROT,
      S_AXI_RID => S_AXI_RID,
      S_AXI_RLAST => S_AXI_RLAST,
      clk_i => clk_i,
      reset_n_i => reset_n_i,
      direct_mode_i => direct_mode_i,
      display_mode_i => display_mode_i,
      vga_hsync_o => vga_hsync_o,
      vga_vsync_o => vga_vsync_o,
      blank_o => blank_o,
      pix_clock_o => pix_clock_o,
      psave_o => psave_o,
      sync_o => sync_o,
      red_o => red_o,
      green_o => green_o,
      blue_o => blue_o
    );

end architecture STRUCTURE;

