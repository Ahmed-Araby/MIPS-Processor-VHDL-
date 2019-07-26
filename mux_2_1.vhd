 
 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

 
-- this mux choose weather to choose the input as it's or inverted 
-- input is 1 bit going into 1-bit alu 
entity mux_2_1 is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           s0 : in  STD_LOGIC;
           res : out  STD_LOGIC);
end mux_2_1;

architecture Behavioral of mux_2_1 is

begin
res<= i0 when (s0='0') else
		i1;
end Behavioral;

