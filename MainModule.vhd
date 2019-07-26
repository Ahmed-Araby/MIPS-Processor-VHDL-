library IEEE;
library work;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.my_package.all;


entity MainModule is
    Port ( START : in  STD_LOGIC;   --  initialize the ins_mem and data_mem ??!!!
           CLK : in  STD_LOGIC;
           RegFileOut1 : out  STD_LOGIC_vector(31 downto 0);
           RegFileOut2 : out  STD_LOGIC_vector(31 downto 0);
           ALUOut : out  STD_LOGIC_vector (31 downto 0);
           PCOut : out  STD_LOGIC_vector(31 downto 0);  -- address I'm going for ?!
           DataMemOut : out  STD_LOGIC_vector(31 downto 0));
end MainModule;

architecture Behavioral of MainModule is
signal pc_in : std_logic_vector(31 downto 0):=(others =>'0');
signal pc_out : std_logic_vector (31 downto 0):=(others =>'0');
signal ins : std_logic_vector(31 downto 0):=(others=>'0');
signal aluout1: std_logic_vector(31 downto 0):=(others=>'0'); 
signal cflag: std_logic;
signal zflag: std_logic;
signal oflag: std_logic;

signal regdst: std_logic;
signal jump: std_logic;
signal alusrc: std_logic;
signal memtoreg: std_logic;
signal regwrite: std_logic;
signal memread: std_logic;
signal memwrite: std_logic;
signal beq: std_logic;
signal aluop1: std_logic;
signal aluop0: std_logic;
signal bnq: std_logic;
signal data1: std_logic_vector(31 downto 0):=(others =>'0');
signal data2 :std_logic_vector(31 downto 0):=(others =>'0');
signal write_sel :std_logic_vector(4 downto 0);
signal result :std_logic_vector(31 downto 0):=(others =>'0');
signal tmp: std_logic;
signal aluop: std_logic_vector(3 downto 0):=(others =>'0');
signal reg_data2 :std_logic_vector(31 downto 0):=(others =>'0');
signal data_mem_out: std_logic_vector(31 downto 0):=(others =>'0');
signal branch_address: std_logic_vector(31 downto 0):=(others =>'0');
signal jump_address: std_logic_vector(31 downto 0):=(others =>'0');
signal data_to_reg: std_logic_vector(31 downto 0):=(others =>'0');
signal branch : std_logic;
signal simd :std_logic_vector (31 downto 0):=(others =>'0');
begin
pc_register : reg  generic map(32) port map(pc_in , clk , start , '0' , not(start),pc_out);
PCOut<=pc_out;

ins_mem : INSTRMEMORY port map(not(start), ins , pc_out , clk);

main_control_bit : control_unit port map(ins(26),ins(27),ins(28),ins(29),ins(30),ins(31),
regdst,jump,alusrc,memtoreg,regwrite,memread,memwrite,beq,aluop1,aluop0,bnq);

alu_control_bit : ALUControl port map(aluop0 , aluop1 , ins(5 downto 0) , aluop);

write_sel<= ins(20 downto 16) when regdst='0' else 
				ins(15 downto 11);
				
reg_file : registerfile port map(ins(25 downto 21),ins(20 downto 16),write_sel ,
regwrite , clk , data_to_reg , data1 , data2);
simd <= "0000000000000000"&ins(15 downto 0) when ins(15)='0' else 
		  "1111111111111111"&ins(15 downto 0);
		  
reg_data2<= data2 when alusrc='0' else 
			 simd;
			 
alu1 :ALU port map(data1 , reg_data2 , aluop , '0' , result , cflag , zflag , oflag); -- normal

data_mem : DATAMEMORY port map(not(start) ,data2 , data_mem_out , memread , memwrite,
result , clk );

data_to_reg <= result when memtoreg='0' else 
					data_mem_out;


-- address calculation 
branch <= ((beq and zflag) or (bnq and not(zflag)));

alu2 : ALU port map(pc_out ,"00000000000000000000000000000100","0010",'0', aluout1 , 
tmp , tmp , tmp);

branch_address <="00000000000000" & ins(15 downto 0) & "00" when ins(15)='0' else 
					"11111111111111" & ins(15 downto 0) & "00" when ins(15)='1';
					
jump_address <=aluout1(31 downto 28) & ins(25 downto 0) & "00";

pc_in <= jump_address when jump='1' else 
			branch_address when branch='1' else 
			aluout1;

-- data for test bench 
RegFileOut1<=data1;
RegFileOut2<=data2;
DataMemOut<=data_mem_out;
ALUOut<=result;
--PCOut<=pc_in;  -- final address I'm going to 
-- mine 
end Behavioral; 