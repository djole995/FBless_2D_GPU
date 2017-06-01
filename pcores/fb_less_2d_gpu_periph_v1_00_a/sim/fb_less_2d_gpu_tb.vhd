-- TestBench Template 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

library fb_less_2d_gpu_periph_v1_00_a;
use fb_less_2d_gpu_periph_v1_00_a.all;

ENTITY testbench IS
END testbench;

ARCHITECTURE behavior OF testbench IS 

      constant DATA_WIDTH           : natural := 32;
      constant COLOR_WIDTH          : natural := 24;
      constant ADDR_WIDTH           : natural := 13;

		signal clk_i : std_logic := '0';
      signal rst_n_i        : std_logic := '0';
		-- RAM
      signal bus_addr_i     : std_logic_vector(ADDR_WIDTH-1 downto 0) := (others => '0');  -- Address used to point to registers
      signal bus_data_i     : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');  -- Data to be writed to registers
      signal bus_we_i       : std_logic := '0';
		-- VGA --
		signal pixel_row_i    : unsigned(8 downto 0) := (others => '0');
		signal pixel_col_i    : unsigned(9 downto 0) := (others => '0');
		signal phase_i        : unsigned(1 downto 0) := (others => '0');
		signal rgb_o          : std_logic_vector(COLOR_WIDTH-1 downto 0);

	constant clk_period : time := 10 ns;
BEGIN
  -- Component Instantiation
          uut: entity fb_less_2d_gpu_periph_v1_00_a.fb_less_2d_gpu PORT MAP(
					clk_i => clk_i,
					rst_n_i        => rst_n_i,
					-- RAM
					bus_addr_i     => bus_addr_i,
					bus_data_i     => bus_data_i,
					bus_we_i       => bus_we_i,
					-- VGA --
					pixel_row_i    => pixel_row_i,
					pixel_col_i    => pixel_col_i,
					phase_i        => phase_i,
					rgb_o          => rgb_o
          );


	process
	begin
		clk_i <= not clk_i;
		wait for clk_period/2;
	end process;
	


	tb : PROCESS
	BEGIN
		wait for 3*clk_period;
		rst_n_i <= '1';
		

		wait; -- will wait forever
	END PROCESS tb;

  END;
