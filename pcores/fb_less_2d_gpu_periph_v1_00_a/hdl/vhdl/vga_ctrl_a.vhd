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
	
library fb_less_2d_gpu_periph_v1_00_a;
	use fb_less_2d_gpu_periph_v1_00_a.vga_ctrl;

architecture arch_v1 of vga_ctrl is

	signal phase      : unsigned(1 downto 0);
	signal en_25MHz   : std_logic;

	signal pixel_x    : unsigned(9 downto 0);
	signal pixel_y    : unsigned(8 downto 0);

	signal vga_clk    : std_logic;

	signal red        : std_logic_vector(7 downto 0);
	signal green      : std_logic_vector(7 downto 0);
	signal blue       : std_logic_vector(7 downto 0);
	
	signal pixel_x_d1 : unsigned(9 downto 0);
	signal pixel_y_d1 : unsigned(8 downto 0);
	
	signal n_blank    : std_logic;
	signal n_h_sync   : std_logic;
	signal n_v_sync   : std_logic;
	signal n_sync     : std_logic;
begin
	
	phase_cnt: process(i_clk_100MHz)
	begin
		if rising_edge(i_clk_100MHz) then
			if in_reset = '0' then
				phase <= "00";
			else
				if phase = "11" then
					phase <= "00";
				else
					phase <= phase + 1;
				end if;
			end if;
		end if;
	end process phase_cnt;
	
	o_phase <= phase;
	
	-- Setting enable in 0th phase so we could have change on FFs between 3rd and 0th phase.
	en_25MHz <= '1' when phase = "11" else '0';
	
	pixel_x_cnt: process(i_clk_100MHz)
	begin
		if rising_edge(i_clk_100MHz) then
			if in_reset = '0' then
				pixel_x <= (others => '0');
			else
				if en_25MHz = '1' then
					if pixel_x = (640+16+96+48)-1 then
						pixel_x <= (others => '0');
					else
						pixel_x <= pixel_x + 1;
					end if;
				end if;
			end if;
		end if;
	end process pixel_x_cnt;
	o_pixel_x <= pixel_x;
	
	pixel_y_cnt: process(i_clk_100MHz)
	begin
		if rising_edge(i_clk_100MHz) then
			if in_reset = '0' then
				pixel_y <= (others => '0');
			else
				if en_25MHz = '1' and pixel_x = (640+16+96+48)-1 then
					if pixel_y = (480+10+2+33)-1 then
						pixel_y <= (others => '0');
					else
						pixel_y <= pixel_y + 1;
					end if;
				end if;
			end if;
		end if;
	end process pixel_y_cnt;
	o_pixel_y <= pixel_y;
	
	
	vga_clk_reg: process(i_clk_100MHz)
	begin
		if rising_edge(i_clk_100MHz) then
			vga_clk <= phase(1);
		end if;
	end process vga_clk_reg;
	o_vga_clk <= vga_clk;

	rgb_reg: process(i_clk_100MHz)
	begin
		if rising_edge(i_clk_100MHz) then
			if phase = "10" then
				red   <= i_red;
				green <= i_green;
				blue  <= i_blue;
			end if;
		end if;
	end process rgb_reg;
	o_red   <= red;
	o_green <= green;
	o_blue  <= blue;
	
	delay: process(i_clk_100MHz)
	begin
		if rising_edge(i_clk_100MHz) then
			if en_25MHz = '1' then
				pixel_x_d1 <= pixel_x;
				pixel_y_d1 <= pixel_y;
			end if;
		end if;
	end process delay;
	
	
	sync: process(i_clk_100MHz)
	begin
		if rising_edge(i_clk_100MHz) then
			if en_25MHz = '1' then
				if pixel_x_d1 >= 640 or pixel_y_d1 >= 480 then
					n_blank <= '0';
				else
					n_blank <= '1';
				end if;
				if 640+16 <= pixel_x_d1 and pixel_x_d1 < 640+16+96 then
					n_h_sync <= '0';
				else
					n_h_sync <= '1';
				end if;
				if 480+10 <= pixel_y_d1 and pixel_y_d1 < 480+10+2 then
					n_v_sync <= '0';
				else
					n_v_sync <= '1';
				end if;
				if (640+16 <= pixel_x_d1 and pixel_x_d1 < 640+16+96) or (480+10 <= pixel_y_d1 and pixel_y_d1 < 480+10+2) then
					n_sync <= '0';
				else
					n_sync <= '1';
				end if;
			end if;
		end if;
	end process sync;
	on_blank  <= n_blank;
	on_h_sync <= n_h_sync;
	on_v_sync <= n_v_sync;
	on_sync   <= n_sync;
	
	on_pow_save <= '1';
	
end architecture arch_v1;
