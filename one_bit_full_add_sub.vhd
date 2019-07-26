 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
-- apply arithematic operations (add - sub)
entity one_bit_full_add_sub is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           res : out  STD_LOGIC;
           cout : out  STD_LOGIC
			  );
end one_bit_full_add_sub;

architecture Behavioral of one_bit_full_add_sub is
signal tmp1 : std_logic_vector(1 downto 0):=(others=>'0');
signal tmp2 : std_logic_vector(1 downto 0):=(others=>'0');

begin
--tmp1 <= ('0' & a) + ('0' & b); -- just inputs 
--tmp2 <= tmp1 + ('0' & cin);
--cout <= tmp2(1);
--res  <=tmp2(0);
res <= a xor b xor cin;
cout <=  (a AND b) OR (a AND cin) OR (b AND cin);
end Behavioral;

