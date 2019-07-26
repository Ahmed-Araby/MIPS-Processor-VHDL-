
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;


entity ALUControl is
    Port ( op0,op1 : in  STD_LOGIC;
           f : in  STD_LOGIC_VECTOR (5 downto 0);
           operation : out  STD_LOGIC_VECTOR (3 downto 0));
end ALUControl;

architecture Behavioral of ALUControl is
signal f03 : std_logic;
signal op1_f03 : std_logic;
signal op1_f1 : std_logic;
signal f01 : std_logic;
signal out3 :std_logic;

begin

f03 <= f(0) or f(3);
op1_f03 <= op1 and f03;

op1_f1 <= op1 and f(1);
operation(2) <= op1_f1 or op0;

f01 <= f(0) and f(1);
out3 <= f01 and op1;

operation(0) <= op1_f03 and (not out3);


operation(1) <= (not f(2)) or (not op1);

operation(3) <= out3;

end Behavioral;

