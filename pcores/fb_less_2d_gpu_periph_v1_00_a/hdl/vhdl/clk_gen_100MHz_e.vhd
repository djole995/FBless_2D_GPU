-------------------------------------------------------------------------------
--
-- @author Milos Subotic <milos.subotic.sm@gmail.com>
-- @license MIT
--
-- @brief 24MHz to 100MHz clock generator.
--
-------------------------------------------------------------------------------

library ieee;
	use ieee.std_logic_1164.all;

entity clk_gen_100MHz is
	port(
		i_clk_24MHz  : in  std_logic;
		in_reset     : in  std_logic;
		o_clk_100MHz : out std_logic;
		o_locked     : out std_logic
	);
end entity clk_gen_100MHz;
