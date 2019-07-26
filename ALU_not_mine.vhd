
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED ;
use work.alu_package.all;


entity ALU is
port(
         data1 : IN  std_logic_vector(31 downto 0);
         data2 : IN  std_logic_vector(31 downto 0);
         aluop : IN  std_logic_vector(3 downto 0);
         cin : IN  std_logic;
         dataout : OUT  std_logic_vector(31 downto 0);
         cflag : OUT  std_logic;
         zflag : OUT  std_logic;
         oflag : OUT  std_logic
        );
end ALU;

architecture Behavioral of ALU is

signal cu0 : std_logic;
signal cu1 : std_logic;
signal cu2 : std_logic;
signal cu3 : std_logic;
signal cu4 : std_logic;
signal cu5 : std_logic;
signal cu6 : std_logic;
signal cu7 : std_logic;
signal cu8 : std_logic;
signal cu9 : std_logic;
signal cu10 : std_logic;
signal cu11 : std_logic;
signal cu12 : std_logic;
signal cu13: std_logic;
signal cu14: std_logic;
signal cu15: std_logic;
signal cu16: std_logic;
signal cu17: std_logic;
signal cu18: std_logic;
signal cu19: std_logic;
signal cu20: std_logic;
signal cu21 : std_logic;
signal cu22: std_logic;
signal cu23: std_logic;
signal cu24: std_logic;
signal cu25: std_logic;
signal cu26: std_logic;
signal cu27: std_logic;
signal cu28: std_logic;
signal cu29: std_logic;
signal cu30: std_logic;
signal cu31: std_logic;
signal  outp : std_logic_vector (31 downto 0);
signal  outp1 : std_logic_vector (31 downto 0);
signal dontcarr : std_logic;
signal aluop1 :  std_logic_vector(3 downto 0);
signal c: std_logic;
signal oflag1 : std_logic;
signal less : std_logic;
signal DC : std_logic;
signal nota : std_logic_vector(31 downto 0);
signal notb : std_logic_vector(31 downto 0);
signal ope : std_logic_vector(3 downto 0);

begin
ope <= aluop;
notb <=not data2 when ope(2)='1' else 
		     data2;

nota <= not data1 when ope(3)='1' else
				data1;

A0 : alu_mini port map(nota(0),notb(0),aluop,aluop(2),cu0    ,outp(0) ,less,DC);
A1 : alu_mini port map(nota(1),notb(1),aluop,cu0,cu1    ,outp(1) ,'0' ,DC);
A2 : alu_mini port map(nota(2),notb(2),aluop,cu1,cu2    ,outp(2) ,'0' ,DC);
A3 : alu_mini port map(nota(3),notb(3),aluop,cu2,cu3   ,outp(3)  ,'0' ,DC);
A4 : alu_mini port map(nota(4),notb(4),aluop,cu3,cu4     ,outp(4),'0' ,DC);
A5 : alu_mini port map(nota(5),notb(5),aluop,cu4,cu5    ,outp(5) ,'0' ,DC);
A6 : alu_mini port map(nota(6),notb(6),aluop,cu5,cu6    ,outp(6) ,'0' ,DC);
A7 : alu_mini port map(nota(7),notb(7),aluop,cu6,cu7     ,outp(7),'0' ,DC);
A8 : alu_mini port map(nota(8),notb(8),aluop,cu7,cu8     ,outp(8),'0' ,DC);
A9 : alu_mini port map(nota(9),notb(9),aluop,cu8,cu9     ,outp(9),'0' ,DC);
A10 : alu_mini port map(nota(10),notb(10),aluop,cu9,cu10 ,outp(10),'0' ,DC );
A11 : alu_mini port map(nota(11),notb(11),aluop,cu10,cu11 ,outp(11)  ,'0' ,DC);
A12 : alu_mini port map(nota(12),notb(12),aluop,cu11,cu12 ,outp(12),'0' ,DC);
A13 : alu_mini port map(nota(13),notb(13),aluop,cu12,cu13 ,outp(13),'0' ,DC);
A14 : alu_mini port map(nota(14),notb(14),aluop,cu13,cu14,outp(14) ,'0' ,DC);
A15 : alu_mini port map(nota(15),notb(15),aluop,cu14,cu15,outp(15),'0' ,DC);
A16 : alu_mini port map(nota(16),notb(16),aluop,cu15,cu16,outp(16),'0' ,DC);
A17 : alu_mini port map(nota(17),notb(17),aluop,cu16,cu17,outp(17),'0' ,DC);
A18 : alu_mini port map(nota(18),notb(18),aluop,cu17,cu18,outp(18),'0' ,DC);
A19 : alu_mini port map(nota(19),notb(19),aluop,cu18,cu19,outp(19),'0' ,DC);
A20 : alu_mini port map(nota(20),notb(20),aluop,cu19,cu20,outp(20),'0' ,DC);
A21 : alu_mini port map(nota(21),notb(21),aluop,cu20,cu21,outp(21),'0' ,DC);
A22 : alu_mini port map(nota(22),notb(22),aluop,cu21,cu22,outp(22),'0' ,DC);
A23: alu_mini port map(nota(23),notb(23),aluop,cu22,cu23,outp(23), '0' ,DC);
A24: alu_mini port map(nota(24),notb(24),aluop,cu23,cu24,outp(24), '0' ,DC);
A25: alu_mini port map(nota(25),notb(25),aluop,cu24,cu25,outp(25), '0' ,DC);
A26: alu_mini port map(nota(26),notb(26),aluop,cu25,cu26,outp(26), '0' ,DC);
A27: alu_mini port map(nota(27),notb(27),aluop,cu26,cu27,outp(27), '0' ,DC);
A28: alu_mini port map(nota(28),notb(28),aluop,cu27,cu28,outp(28), '0' ,DC);
A29: alu_mini port map(nota(29),notb(29),aluop,cu28,cu29,outp(29), '0' ,DC);
A30: alu_mini port map(nota(30),notb(30),aluop,cu29,cu30,outp(30), '0' ,DC);
A31: alu_mini port map(nota(31),notb(31),aluop,cu30,cu31,outp(31), '0' ,less);

zflag <= not(outp(0) or outp(1) or outp(2) or outp(3) or outp(4) or outp(5) or outp(6) or outp(7) or outp(8) or outp(9) or outp(10)or outp(11)or outp(12)or outp(13)or outp(14)or outp(15)or outp(16)or outp(17)or outp(18)or outp(19)or outp(20)or outp(21)or outp(22)or outp(23)or outp(24)or outp(25)or outp(26)or outp(27)or outp(28)or outp(29)or outp(30)or outp(31));
oflag <= (cu30 XOR cu31);
dataout<=outp;
cflag <= cu31;
end Behavioral;
