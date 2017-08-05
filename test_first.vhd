library ieee;
use ieee.std_logic_1164.all;
entity test_first is
end test_first;
architecture behavior of test_first is 
	component first
		port (x1,x2,x3,x4,x5 : in std_logic;
				y0 : out std_logic);
	end component;
	signal x1, x2, x3, x4, x5 : std_logic :='1';
	signal y0 : std_logic;
begin
	p1 : first port map (x1 => x1, x2 => x2, x3 => x3, x4 => x4, x5 => x5, y0 => y0);
	process
	begin
		x1 <= not x1;
		wait for 100 ps;
	end process;
	process 
	begin
		x2 <= not x2;
		wait for 200 ps;
	end process;
	process 
	begin
		x3 <= not x3;
		wait for 400 ps;
	end process;
	process 
	begin
		x4 <= not x4;
		wait for 800 ps;
	end process;
	process 
	begin
		x5 <= not x5;
		wait for 1600 ps;
	end process;
end behavior; 