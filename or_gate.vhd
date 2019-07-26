 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
-- apply logical or operation 
entity or_gate is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           res : out  STD_LOGIC);
end or_gate;

architecture Behavioral of or_gate is

begin
res <= (i0 or i1);
end Behavioral;

