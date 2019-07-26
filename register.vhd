library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity REG is
Generic(n:NATURAL :=32);
	PORT (
	input: IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	outp: OUT  STD_LOGIC_VECTOR (31 DOWNTO 0));
end REG;
architecture Behavioral of REG is
SIGNAL tmp: STD_LOGIC_VECTOR (31 DOWNTO 0) := (others => '0');
BEGIN
	PROCESS(clk)
	BEGIN
	IF(CLK' event AND CLK='1')THEN
		IF(LOD ='1') THEN
			tmp <= input;
		ELSIF (INC='1')THEN
			tmp <= tmp+1;
		ELSIF(CLR='1') THEN
			tmp <=(others =>'0');
		END IF;
	END IF;
	END PROCESS;
	outp <= tmp;
end Behavioral;

