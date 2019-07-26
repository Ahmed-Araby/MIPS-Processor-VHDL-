 
library IEEE;
use IEEE.STD_LOGIC_1164.all;

package my_package is

-- alu component
component mux_2_1 is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           s0 : in  STD_LOGIC;
           res : out  STD_LOGIC);
end component;

component mux_4_1 is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
			  i2 : in  std_logic;
			  i3 : in  std_logic;
			  
           s0 : in  STD_LOGIC;
			  s1 : in std_logic;
           res : out  STD_LOGIC);
end component;

component one_bit_full_add_sub is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           res : out  STD_LOGIC;
           cout : out  STD_LOGIC
			  );
end component;

component and_gate is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           res : out  STD_LOGIC);
end component;

component or_gate is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           res : out  STD_LOGIC);
end component;




component one_bit_alu is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           aluop : in  STD_LOGIC_vector(3 downto 0);
           res : out  STD_LOGIC;
           cout : out  STD_LOGIC;
			  less : in std_logic
			  );
end component;
-- end alu 

-- register file 
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

 

component registerfile is
Generic(n:NATURAL :=32);
    PORT(
	 -- take care you are dealing with reg file 

         read_sel1 : IN  std_logic_vector(4 downto 0);
         read_sel2 : IN  std_logic_vector(4 downto 0);
         write_sel : IN  std_logic_vector(4 downto 0);
         write_ena : IN  std_logic;
         clk : IN  std_logic;
         write_data : IN  std_logic_vector(31 downto 0);
         data1 : OUT  std_logic_vector(31 downto 0);
         data2 : OUT  std_logic_vector(31 downto 0)
        );
end component;
-- end register file 

--  main control unit 
component and_gate_6 is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           i2 : in  STD_LOGIC;
           i3 : in  STD_LOGIC;
           i4 : in  STD_LOGIC;
           i5 : in  STD_LOGIC;
           out_put : out  STD_LOGIC);
end component;
-- end main control unit 


-- memory 
-- instruction memory 
component INSTRMEMORY is
	Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port(
    LoadIt: in Std_logic ;  -- what is it's use ?!  , I guess it's like enable control bit
	 DATA: out STD_LOGIC_VECTOR(wordsize-1 downto 0);  -- data that we readit 
    ADDRESS: in STD_LOGIC_VECTOR(addresssize-1 downto 0);  -- in mem 
    CLK: in STD_LOGIC
    );
end component;

-- data memory 
component DATAMEMORY is
  Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port ( LoadIt: in STD_LOGIC;
  			INPUT     : in STD_LOGIC_VECTOR (wordsize-1 downto 0);
			OUTPUT    : out STD_LOGIC_VECTOR (wordsize-1 downto 0);
         MEM_READ : in STD_LOGIC;
			MEM_WRITE : in STD_LOGIC;
			ADDRESS   : in STD_LOGIC_VECTOR (addresssize-1 downto 0);
			CLK       : in STD_LOGIC
			);

end component;

-- end of memory 
component ALUControl is
    Port ( op0,op1 : in  STD_LOGIC;
           f : in  STD_LOGIC_VECTOR (5 downto 0);
           operation : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component ALU is
    Port ( data1 : in  STD_LOGIC_vector(31 downto 0);
           data2 : in  STD_LOGIC_vector(31 downto 0);
           aluop : in  STD_LOGIC_vector(3 downto 0);
           cin : in  STD_LOGIC;  -- what I'm going to do with it !!!??
           dataout : out  STD_LOGIC_vector(31 downto 0);
           cflag : out  STD_LOGIC;
           zflag : out  STD_LOGIC;
           oflag : out  STD_LOGIC);
end component;

component control_unit is
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
end component;


component alu_control is
    Port ( op0 : in  STD_LOGIC;
           op1 : in  STD_LOGIC;
           f : in  STD_LOGIC_vector(3 downto 0);
           o : out  STD_LOGIC_vector (3 downto 0));
end component;


component reg IS
	GENERIC(n:NATURAL);
	PORT (
	I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (n-1 DOWNTO 0));
END component;


component s_one_bit_alu is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           aluop : in  STD_LOGIC_vector(3 downto 0);
           res : out  STD_LOGIC;
           cout : out  STD_LOGIC;
			  less : in std_logic;
			  s_add_sub_res : out std_logic
			  );
end component;

end my_package;


 
