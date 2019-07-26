 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
-- this mux choose the last result of the 1-bit alu 
entity mux_4_1 is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
			  i2 : in  std_logic;
			  i3 : in  std_logic;
			  
           s0 : in  STD_LOGIC;
			  s1 : in std_logic;
           res : out  STD_LOGIC);
end mux_4_1;

architecture Behavioral of mux_4_1 is

begin
res <= i0 when (s0='0' and s1='0') else 
	    i1 when (s0='1' and s1='0') else 
		 i2 when (s0='0' and s1='1') else 
		 i3;  -- stl
end Behavioral;

