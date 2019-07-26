----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:19:31 04/18/2019 
-- Design Name: 
-- Module Name:    mux32 - Behavioral 
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux32 is
    Port (
	 input0,input1,input2,input3,input4,input5,input6,input7,input8,input9,input10,input11,input12,input13,input14,input15,input16,input17,input18,input19,input20,input21,input22,input23,input24,input25,input26,input27,input28,input29,input30,input31 : in  STD_LOGIC_VECTOR (31 downto 0);
	 
	 output : out  STD_LOGIC_VECTOR (31 downto 0);
selector : in  STD_LOGIC_VECTOR (4 downto 0)	 );
end  mux32;

architecture Behavioral of mux32 is

begin

output <= input0 WHEN  selector="00000" ELSE
          input1 WHEN  selector="00001" ELSE 
			 input2 WHEN  selector="00010" ELSE 
			 input3 WHEN  selector="00011" ELSE 
          input4 WHEN  selector="00100" ELSE 
			 input5 WHEN  selector="00101" ELSE 
			 input6 WHEN  selector="00110" ELSE 
			 input7 WHEN  selector="00111" ELSE 
			 input8 WHEN  selector="01000" ELSE 
			 input9 WHEN  selector="01001" ELSE 
          input10 WHEN selector="01010" ELSE 
			 input11 WHEN selector="01011" ELSE 
			 input12 WHEN selector="01100" ELSE 
          input13 WHEN selector="01101" ELSE 
			 input14 WHEN selector="01110" ELSE 
			 input15 WHEN selector="01111" ELSE
          input16 WHEN selector="10000" ELSE			 
			 input17 WHEN selector="10001" ELSE 
			 input18 WHEN selector="10010" ELSE 
          input19 WHEN selector="10011" ELSE 
			 input20 WHEN selector="10100" ELSE 
			 input21 WHEN selector="10101" ELSE 
          input22 WHEN selector="10110" ELSE 
			 input23 WHEN selector="10111" ELSE 
			 input24 WHEN selector="11000" ELSE 
          input25 WHEN selector="11001" ELSE 
			 input26 WHEN selector="11010" ELSE 
			 input27 WHEN selector="11011" ELSE 
          input28 WHEN selector="11100" ELSE 
			 input29 WHEN selector="11101" ELSE 
			 input30 WHEN selector="11110" ELSE 
			 input31 WHEN selector="11111" ELSE
			  "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";


end Behavioral;

