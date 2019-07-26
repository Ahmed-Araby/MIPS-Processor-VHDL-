----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:43:39 04/18/2019 
-- Design Name: 
-- Module Name:    registerfile - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use work.my_package.all;

entity registerfile is
Generic(n:NATURAL :=32);
    PORT(
         read_sel1 : IN  std_logic_vector(4 downto 0);
         read_sel2 : IN  std_logic_vector(4 downto 0);
         write_sel : IN  std_logic_vector(4 downto 0);
         write_ena : IN  std_logic;
         clk : IN  std_logic;
         write_data : IN  std_logic_vector(31 downto 0);
         data1 : OUT  std_logic_vector(31 downto 0);
         data2 : OUT  std_logic_vector(31 downto 0)
        );
end registerfile;

architecture Behavioral of registerfile is

signal val: STD_LOGIC_VECTOR (31 DOWNTO 0);
signal ldd : STD_LOGIC_VECTOR (31 DOWNTO 0);
signal d0 :STD_LOGIC_VECTOR(31 DOWnto 0);
signal d1 :STD_LOGIC_VECTOR(31 DOWnto 0);
signal d2 :STD_LOGIC_VECTOR(31 DOWnto 0);
signal d3 :STD_LOGIC_VECTOR(31 DOWnto 0);
signal d4 :STD_LOGIC_VECTOR(31 DOWnto 0);
signal d5 :STD_LOGIC_VECTOR(31 DOWnto 0);
signal d6 :STD_LOGIC_VECTOR(31 DOWnto 0);
signal d7 :STD_LOGIC_VECTOR(31 DOWnto 0);
signal d8 :STD_LOGIC_VECTOR(31 DOWnto 0);
signal d9 :STD_LOGIC_VECTOR(31 DOWnto 0);
signal d10:STD_LOGIC_VECTOR(31 DOWnto 0);
signal d11:STD_LOGIC_VECTOR(31 DOWnto 0);
signal d12:STD_LOGIC_VECTOR(31 DOWnto 0);
signal d13:STD_LOGIC_VECTOR(31  DOWnto 0);
signal d14:STD_LOGIC_VECTOR(31  DOWnto 0);
signal d15:STD_LOGIC_VECTOR(31  DOWnto 0);
signal d16:STD_LOGIC_VECTOR(31  DOWnto 0);
signal d17:STD_LOGIC_VECTOR(31  DOWnto 0);
signal d18:STD_LOGIC_VECTOR(31  DOWnto 0);
signal d19:STD_LOGIC_VECTOR(31  DOWnto 0);
signal d20:STD_LOGIC_VECTOR(31  DOWnto 0);
signal d21:STD_LOGIC_VECTOR(31  DOWnto 0);
signal d22:STD_LOGIC_VECTOR(31  DOWnto 0);
signal d23:STD_LOGIC_VECTOR(31  DOWnto 0);
signal d24:STD_LOGIC_VECTOR(31  DOWnto 0);
signal d25:STD_LOGIC_VECTOR(31  DOWnto 0);
signal d26:STD_LOGIC_VECTOR(31  DOWnto 0);
signal d27:STD_LOGIC_VECTOR(31  DOWnto 0);
signal d28:STD_LOGIC_VECTOR(31  DOWnto 0);
signal d29:STD_LOGIC_VECTOR(31  DOWnto 0);
signal d30:STD_LOGIC_VECTOR(31  DOWnto 0);
signal d31:STD_LOGIC_VECTOR(31  DOWnto 0);

begin

dec:decoder port map(write_sel,'1',val);

ldd(0)<=write_ena and val(0);
ldd(1)<=write_ena and val(1);
ldd(2)<=write_ena and val(2);
ldd(3)<=write_ena and val(3);
ldd(4)<=write_ena and val(4);
ldd(5)<=write_ena and val(5);
ldd(6)<=write_ena and val(6);
ldd(7)<=write_ena and val(7);
ldd(8)<=write_ena and val(8);
ldd(9)<=write_ena and val(9);
ldd(10)<=write_ena and val(10);
ldd(11)<=write_ena and val(11);
ldd(12)<=write_ena and val(12);
ldd(13)<=write_ena and val(13);
ldd(14)<=write_ena and val(14);
ldd(15)<=write_ena and val(15);
ldd(16)<=write_ena and val(16);
ldd(17)<=write_ena and val(17);
ldd(18)<=write_ena and val(19);
ldd(20)<=write_ena and val(20);
ldd(21)<=write_ena and val(21);
ldd(22)<=write_ena and val(22);
ldd(23)<=write_ena and val(23);
ldd(24)<=write_ena and val(24);
ldd(25)<=write_ena and val(25);
ldd(26)<=write_ena and val(26);
ldd(27)<=write_ena and val(27);
ldd(28)<=write_ena and val(28);
ldd(29)<=write_ena and val(29);
ldd(30)<=write_ena and val(30);
ldd(31)<=write_ena and val(31);

reg0: reg GENERIC MAP (32) PORT MAP (write_data , clk , ldd(0),'0','0',d0);
reg1: reg GENERIC MAP (32) PORT MAP (write_data , clk , ldd(1),'0','0',d1);
reg2: reg GENERIC MAP (32) PORT MAP (write_data , clk , ldd(2),'0','0',d2);
reg3: reg GENERIC MAP (32) PORT MAP (write_data ,clk,ldd(3) ,'0' ,'0' ,d3);
reg4: reg GENERIC MAP (32) PORT MAP (write_data ,clk,ldd(4) ,'0' ,'0' ,d4);
reg5: reg GENERIC MAP (32) PORT MAP (write_data ,clk,ldd(5) ,'0' ,'0' ,d5);
reg6: reg GENERIC MAP (32) PORT MAP (write_data ,clk,ldd(6) ,'0' ,'0' ,d6);
reg7: reg GENERIC MAP (32) PORT MAP (write_data ,clk,ldd(7) ,'0' ,'0' ,d7);
reg8: reg GENERIC MAP (32) PORT MAP (write_data ,clk,ldd(8) ,'0' ,'0' ,d8);
reg9: reg GENERIC MAP (32) PORT MAP (write_data ,clk,ldd(9) ,'0' ,'0' ,d9);
reg10: reg GENERIC MAP(32) PORT MAP (write_data,clk,ldd(10) ,'0' ,'0' ,d10);
reg11: reg GENERIC MAP(32) PORT MAP (write_data,clk,ldd(11) ,'0' ,'0' ,d11);
reg12: reg GENERIC MAP(32) PORT MAP (write_data,clk,ldd(12) ,'0' ,'0' ,d12);
reg13: reg GENERIC MAP(32) PORT MAP (write_data,clk,ldd(13) ,'0' ,'0' ,d13);
reg14: reg GENERIC MAP(32) PORT MAP (write_data,clk,ldd(14) ,'0' ,'0' ,d14);
reg15: reg GENERIC MAP(32) PORT MAP (write_data,clk,ldd(15) ,'0' ,'0' ,d15);
reg16: reg GENERIC MAP(32) PORT MAP (write_data,clk,ldd(16) ,'0' ,'0' ,d16);
reg17: reg GENERIC MAP(32) PORT MAP (write_data,clk,ldd(17) ,'0' ,'0' ,d17);
reg18: reg GENERIC MAP(32) PORT MAP (write_data,clk,ldd(18) ,'0' ,'0' ,d18);
reg19: reg GENERIC MAP(32) PORT MAP (write_data,clk,ldd(19) ,'0' ,'0' ,d19);
reg20: reg GENERIC MAP(32) PORT MAP (write_data,clk,ldd(20) ,'0' ,'0' ,d20);
reg21: reg GENERIC MAP(32) PORT MAP (write_data,clk,ldd(21) ,'0' ,'0' ,d21);
reg22: reg GENERIC MAP(32) PORT MAP (write_data,clk,ldd(22) ,'0' ,'0' ,d22);
reg23: reg GENERIC MAP(32) PORT MAP (write_data,clk,ldd(23) ,'0' ,'0' ,d23);
reg24: reg GENERIC MAP(32) PORT MAP (write_data,clk,ldd(24) ,'0' ,'0' ,d24);
reg25: reg GENERIC MAP(32) PORT MAP (write_data,clk,ldd(25) ,'0' ,'0' ,d25);
reg26: reg GENERIC MAP(32) PORT MAP (write_data,clk,ldd(26) ,'0' ,'0' ,d26);
reg27: reg GENERIC MAP(32) PORT MAP (write_data,clk,ldd(27) ,'0' ,'0' ,d27);
reg28: reg GENERIC MAP(32) PORT MAP (write_data,clk,ldd(28) ,'0' ,'0' ,d28);
reg29: reg GENERIC MAP(32) PORT MAP (write_data,clk,ldd(29) ,'0' ,'0' ,d29);
reg30: reg GENERIC MAP(32) PORT MAP (write_data,clk,ldd(30) ,'0' ,'0' ,d30);
reg31: reg GENERIC MAP(32) PORT MAP (write_data,clk,ldd(31) ,'0' ,'0' ,d31);

mux1:MUX32 PORT MAP( 
d0,d1,d2,d3,d4,d5,d6,d7, d8,d9,d10,d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,d21,d22,d23, d24,d25,d26,d27,d28,d29,d30,d31,data1 ,read_sel1);


mux2:MUX32 PORT MAP(
d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,d21,d22,d23,d24,d25,d26,d27,d28,d29,d30,d31,data2 ,read_sel2);
end Behavioral;

