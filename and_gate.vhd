 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- logical and operation 
entity and_gate is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           res : out  STD_LOGIC);
end and_gate;

architecture Behavioral of and_gate is

begin
res <= (i0 and i1);
end Behavioral;

