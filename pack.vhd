--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.ALL;

package pack is

component mux32 is
    Port (
	 input0,input1,input2,input3,input4,input5,input6,input7,input8,input9,input10,input11,input12,input13,input14,input15,input16,input17,input18,input19,input20,input21,input22,input23,input24,input25,input26,input27,input28,input29,input30,input31 : in  STD_LOGIC_VECTOR (31 downto 0);
	 
	 output : out  STD_LOGIC_VECTOR (31 downto 0);
selector : in  STD_LOGIC_VECTOR (4 downto 0)	 );
end  component;



component decoder is
    Port ( input : in  STD_LOGIC_VECTOR (4 downto 0);
           enable : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end component;


component REG is
Generic(n:NATURAL :=32);
	PORT (
	input: IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
	CLK, LD, INC, CLR: IN STD_LOGIC;
	outp: OUT  STD_LOGIC_VECTOR (31 DOWNTO 0));
end component;


end pack;
