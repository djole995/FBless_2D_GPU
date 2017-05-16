-------------------------------------------------------------------------------
--
-- @author Milos Subotic <milos.subotic.sm@gmail.com>
-- @license MIT
--
-- @brief VGA controller.
--
-------------------------------------------------------------------------------

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;

entity vga_ctrl is
	port(
		i_clk_100MHz : in std_logic;
		in_reset     : in std_logic;
		-- To GPU.
		o_phase      : out unsigned(1 downto 0);
		o_pixel_x    : out unsigned(9 downto 0);
		o_pixel_y    : out unsigned(8 downto 0);
		i_red        : in  std_logic_vector(7 downto 0);
		i_green      : in  std_logic_vector(7 downto 0);
		i_blue       : in  std_logic_vector(7 downto 0);
		-- To VGA.
		o_vga_clk    : out std_logic;
		o_red        : out std_logic_vector(7 downto 0);
		o_green      : out std_logic_vector(7 downto 0);
		o_blue       : out std_logic_vector(7 downto 0);
		on_blank     : out std_logic;
		on_h_sync    : out std_logic;
		on_v_sync    : out std_logic;
		on_sync      : out std_logic;
		on_pow_save  : out std_logic
	);
end entity vga_ctrl;
