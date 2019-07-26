
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY PC_reg IS
	GENERIC(n:NATURAL := 32);
	PORT (
	I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	CLK, LOD, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (n-1 DOWNTO 0));
END PC_reg;

ARCHITECTURE Behavioral OF PC_reg IS
	SIGNAL temp: STD_LOGIC_VECTOR (n-1 DOWNTO 0) := (others => '0');
BEGIN
	PROCESS(clk)
	BEGIN
	IF(CLR = '1') THEN
		temp <=(others =>'0');
	ELSIF(CLK'event AND CLK='1')THEN
		IF(LOD ='1') THEN
			temp <= I;
		END IF;
	END IF;
	END PROCESS;
	
	O <= temp;
END Behavioral;