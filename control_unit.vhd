library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library work;
use work.my_package.all;
entity control_unit is
    Port ( op0 : in  STD_LOGIC;
           op1 : in  STD_LOGIC;
           op2 : in  STD_LOGIC;
           op3 : in  STD_LOGIC;
           op4 : in  STD_LOGIC;
           op5 : in  STD_LOGIC;
			  
           regdst : out  STD_LOGIC;  -- 0
			  jump : out std_logic; --1
           alusrc : out  STD_LOGIC; -- 2 
           memtoreg : out  STD_LOGIC; -- 3 
           regwrite : out  STD_LOGIC;  -- 4
           memread : out  STD_LOGIC;  -- 5
           memwrite : out  STD_LOGIC; -- 6 
           beq : out  STD_LOGIC; -- 7
           aluop1 : out  STD_LOGIC; -- 8 
           aluop0 : out  STD_LOGIC; -- 9
			  bne : out std_logic -- 10  -- will select zero flag or it's invert 
			  );
end control_unit;
architecture Behavioral of control_unit is
signal rf_out : std_logic;
signal lw_out : std_logic;
signal sw_out : std_logic;
signal beq_out : std_logic;
signal bne_out : std_logic;
signal jump_out: std_logic;

begin

and_gate0 : and_gate_6  port map(not op0 , not op1 , not op2 , not op3  , not op4 , not op5 , rf_out);  -- r-format 
and_gate1 : and_gate_6  port map(op0 , op1 , not op2 , not op3  , not op4 , op5 , lw_out);
and_gate2 : and_gate_6  port map(op0 , op1 , not op2 , op3  , not op4 , op5 , sw_out);
and_gate3 : and_gate_6  port map(not op0 , not op1 , op2 , not op3  , not op4 , not op5 , beq_out);
and_gate4 : and_gate_6 port map(op0 , not op1 , op2 , not op3 , not op4 , not op5 , bne_out);
and_gate5 : and_gate_6 port map(not op0 , op1 , not op2 , not op3 , not op4 , not op5 , jump_out); 

-- assign values for controls 
regdst <=rf_out;
or0 : or_gate port map(lw_out , sw_out , alusrc);
memtoreg <=lw_out;
or1 : or_gate port map(rf_out , lw_out , regwrite);
memread <= lw_out;  -- *****
memwrite <= sw_out;
beq <= beq_out;
aluop1 <= rf_out;
aluop0 <= beq_out;
bne <=bne_out;
jump <= jump_out;
end Behavioral;