 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 

entity alu_control is
    Port ( op0 : in  STD_LOGIC;
           op1 : in  STD_LOGIC;
           f : in  STD_LOGIC_vector(3 downto 0);
           o : out  STD_LOGIC_vector (3 downto 0));
end alu_control;

architecture Behavioral of alu_control is

signal a0:  std_logic;
signal a1: std_logic;
signal a2: std_logic;
signal a3: std_logic;

signal or0_s1: std_logic;

signal and0_s2: std_logic;
signal and1_s2: std_logic;
signal and2_s2: std_logic;

signal and0_s3: std_logic;
signal or0_s3: std_logic ;
signal or1_s3: std_logic;
signal and1_s3: std_logic;

begin
or0_s1<=f(3) or f(0);

and0_s2 <=or0_s1 and op1;
and1_s2 <=f(1) and op1;
and2_s2 <=f(0) and f(1);

and1_s3 <=and2_s2 and op1;
and0_s3 <= not (and1_s3) and and0_s2;
or0_s3  <= not (f(2)) or not (op1);
or1_s3  <= and1_s2 or op0;

o(3) <=and1_s3;
o(2) <=or1_s3;
o(1) <= or0_s3;
o(0) <= and0_s3;

end Behavioral;