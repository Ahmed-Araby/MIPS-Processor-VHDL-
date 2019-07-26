
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity and_gate_6 is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           i2 : in  STD_LOGIC;
           i3 : in  STD_LOGIC;
           i4 : in  STD_LOGIC;
           i5 : in  STD_LOGIC;
           out_put : out  STD_LOGIC);
end and_gate_6;

architecture Behavioral of and_gate_6 is

begin
out_put<= (i0 and i1 and i2 and i3 and i4 and i5);
end Behavioral;

