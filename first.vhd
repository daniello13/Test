library ieee;
use ieee.std_logic_1164.all;
entity first is 
	port (x1, x2, x3, x4, x5 : in std_logic;
			y0 : out std_logic);
end first;
architecture RTL of  first is
begin
	y0 <= ((not x1) xor x2) or (x3 and((not x4) xor x5));
end RTL;