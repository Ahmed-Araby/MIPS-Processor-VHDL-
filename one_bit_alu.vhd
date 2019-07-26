
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library work;
use work.my_package.all;


entity one_bit_alu is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           aluop : in  STD_LOGIC_vector(3 downto 0);
           res : out  STD_LOGIC;
           cout : out  STD_LOGIC;
			  less : in std_logic
			  );
end one_bit_alu;

architecture Behavioral of one_bit_alu is
signal i0: std_logic ;
signal i1: std_logic ;
signal and_res: std_logic;
signal or_res: std_logic ;
signal add_sub_res: std_logic;
begin

-- in_ mux 
mux_a: mux_2_1 port map(a , not a , aluop(3) , i0);
mux_b: mux_2_1 port map(b , not b , aluop(2) , i1);
-- apply and
and_op: and_gate port map(i0 , i1 , and_res);
-- apply or 
or_op: or_gate port map(i0 , i1 , or_res);
-- apply add_sub 
add_sub_op: one_bit_full_add_sub port map(i0 , i1 , cin , add_sub_res , cout);

-- out_mux  , 0 is for stl
mux_res: mux_4_1 port map(and_res , or_res , add_sub_res , less , aluop(0) , aluop(1) , res);
end Behavioral;

