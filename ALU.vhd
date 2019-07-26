
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library work;
use work.my_package.all;

entity ALU is
    Port ( data1 : in  STD_LOGIC_vector(31 downto 0);
           data2 : in  STD_LOGIC_vector(31 downto 0);
           aluop : in  STD_LOGIC_vector(3 downto 0);
           cin : in  STD_LOGIC;  -- what I'm going to do with it !!!??
           dataout : out  STD_LOGIC_vector(31 downto 0);
           cflag : out  STD_LOGIC;
           zflag : out  STD_LOGIC;
           oflag : out  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is
-- carry out tmp
signal c_tmp: std_logic_vector(31 downto 0) ;  -- does using signal multiple times as input and output gives an issue (bits from this signal) 
signal tmp : std_logic_vector (31 downto 0);
signal tmp2 : std_logic;  -- for stl 
signal tmp_dataout : std_logic_vector(31 downto 0):=(others =>'0');
signal add_sub_out : std_logic;
begin

-- I didn't use the cin bit !!!!!
-- we could use the generate statement and 1D*1D to generate theses 32 1_bit_alu

one_bit_alu_0 : one_bit_alu port map(data1(0) , data2(0) ,  aluop(2) , aluop , tmp(0) , c_tmp(0) , add_sub_out);  -- pass the binvet as carry in for 1st alu first 
one_bit_alu_1 : one_bit_alu port map(data1(1) , data2(1) ,  c_tmp(0) , aluop , tmp(1) , c_tmp(1) , '0');

one_bit_alu_2 : one_bit_alu port map(data1(2) , data2(2) ,  c_tmp(1) , aluop , tmp(2) , c_tmp(2) , '0');
one_bit_alu_3 : one_bit_alu port map(data1(3) , data2(3) ,  c_tmp(2) , aluop , tmp(3) , c_tmp(3) , '0');
one_bit_alu_4 : one_bit_alu port map(data1(4) , data2(4) ,  c_tmp(3) , aluop , tmp(4) , c_tmp(4) , '0');
one_bit_alu_5 : one_bit_alu port map(data1(5) , data2(5) ,  c_tmp(4) , aluop , tmp(5) , c_tmp(5) , '0');
one_bit_alu_6 : one_bit_alu port map(data1(6) , data2(6) ,  c_tmp(5) , aluop , tmp(6) , c_tmp(6), '0');
one_bit_alu_7 : one_bit_alu port map(data1(7) , data2(7) ,  c_tmp(6) , aluop , tmp(7) , c_tmp(7) , '0');
one_bit_alu_8 : one_bit_alu port map(data1(8) , data2(8) ,  c_tmp(7) , aluop , tmp(8) , c_tmp(8) , '0');
one_bit_alu_9 : one_bit_alu port map(data1(9) , data2(9) ,  c_tmp(8) , aluop , tmp(9) , c_tmp(9) , '0');
one_bit_alu_10 : one_bit_alu port map(data1(10) , data2(10) ,  c_tmp(9) , aluop , tmp(10) , c_tmp(10) ,'0');
one_bit_alu_11 : one_bit_alu port map(data1(11) , data2(11) ,  c_tmp(10) , aluop , tmp(11) , c_tmp(11) , '0');
one_bit_alu_12 : one_bit_alu port map(data1(12) , data2(12) ,  c_tmp(11) , aluop , tmp(12) , c_tmp(12) , '0');


one_bit_alu_13 : one_bit_alu port map(data1(13) , data2(13) ,  c_tmp(12) , aluop , tmp(13) , c_tmp(13) , '0');
one_bit_alu_14 : one_bit_alu port map(data1(14) , data2(14) ,  c_tmp(13) , aluop , tmp(14) , c_tmp(14) , '0');
one_bit_alu_15 : one_bit_alu port map(data1(15) , data2(15) ,  c_tmp(14) , aluop , tmp(15) , c_tmp(15) , '0');
one_bit_alu_16 : one_bit_alu port map(data1(16) , data2(16) ,  c_tmp(15) , aluop , tmp(16) , c_tmp(16) , '0');
one_bit_alu_17 : one_bit_alu port map(data1(17) , data2(17) ,  c_tmp(16) , aluop , tmp(17) , c_tmp(17) , '0');
one_bit_alu_18 : one_bit_alu port map(data1(18) , data2(18) ,  c_tmp(17) , aluop , tmp(18) , c_tmp(18) , '0');
one_bit_alu_19 : one_bit_alu port map(data1(19) , data2(19) ,  c_tmp(18) , aluop , tmp(19) , c_tmp(19) , '0');
one_bit_alu_20 : one_bit_alu port map(data1(20) , data2(20) ,  c_tmp(19) , aluop , tmp(20) , c_tmp(20) , '0');

one_bit_alu_21 : one_bit_alu port map(data1(21) , data2(21) ,  c_tmp(20) , aluop , tmp(21) , c_tmp(21) , '0');
one_bit_alu_22 : one_bit_alu port map(data1(22) , data2(22) ,  c_tmp(21) , aluop , tmp(22) , c_tmp(22) , '0');
one_bit_alu_23 : one_bit_alu port map(data1(23) , data2(23) ,  c_tmp(22) , aluop , tmp(23) , c_tmp(23) , '0');
one_bit_alu_24 : one_bit_alu port map(data1(24) , data2(24) ,  c_tmp(23) , aluop , tmp(24) , c_tmp(24) , '0');
one_bit_alu_25 : one_bit_alu port map(data1(25) , data2(25) ,  c_tmp(24) , aluop , tmp(25) , c_tmp(25) , '0');
one_bit_alu_26 : one_bit_alu port map(data1(26) , data2(26) ,  c_tmp(25) , aluop , tmp(26) , c_tmp(26) , '0');
one_bit_alu_27 : one_bit_alu port map(data1(27) , data2(27) ,  c_tmp(26) , aluop , tmp(27) , c_tmp(27) , '0');
one_bit_alu_28 : one_bit_alu port map(data1(28) , data2(28) ,  c_tmp(27) , aluop , tmp(28) , c_tmp(28) , '0');
one_bit_alu_29 : one_bit_alu port map(data1(29) , data2(29) ,  c_tmp(28) , aluop , tmp(29) , c_tmp(29) , '0');

one_bit_alu_30 : one_bit_alu port map(data1(30) , data2(30) ,  c_tmp(29) , aluop , tmp(30) , c_tmp(30) , '0');
one_bit_alu_31 : s_one_bit_alu port map(data1(31) , data2(31) ,  c_tmp(30) , aluop , tmp(31) , c_tmp(31) , '0' , add_sub_out);

-- outputs 
cflag <= c_tmp(31);
oflag <=c_tmp(31) xor c_tmp(30);
dataout<=tmp;

zflag <= '1' when tmp (31 downto 0)="00000000000000000000000000000000" else '0' ;  -- which one should I check tmp or data out 
--end process;
end Behavioral;

