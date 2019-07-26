 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity tmp is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           o : out STD_LOGIC);
end tmp;

architecture Behavioral of tmp is

signal x: std_logic:='0';
-- signal a: std_logic:='0';
-- signal b: std_logic:='0';

begin
-- x <= a and b;
o<=x;
--x<='1';

end Behavioral;

