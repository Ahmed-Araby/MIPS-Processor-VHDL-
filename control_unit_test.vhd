 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY control_unit_test IS
END control_unit_test;
 
ARCHITECTURE behavior OF control_unit_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT control_unit
    PORT(
         op0 : IN  std_logic;
         op1 : IN  std_logic;
         op2 : IN  std_logic;
         op3 : IN  std_logic;
         op4 : IN  std_logic;
         op5 : IN  std_logic;
         regdst : OUT  std_logic;
			jump : out std_logic;
         alusrc : OUT  std_logic;
         memtoreg : OUT  std_logic;
         regwrite : OUT  std_logic;
         memread : OUT  std_logic;
         memwrite : OUT  std_logic;
         beq : OUT  std_logic;
         aluop1 : OUT  std_logic;
         aluop0 : OUT  std_logic;
			bne : out std_logic -- 9
        );
    END COMPONENT;
    

   --Inputs
   signal op0 : std_logic := '0';
   signal op1 : std_logic := '0';
   signal op2 : std_logic := '0';
   signal op3 : std_logic := '0';
   signal op4 : std_logic := '0';
   signal op5 : std_logic := '0';

 	--Outputs
   signal regdst : std_logic;
	signal jump : std_logic;
   signal alusrc : std_logic;
   signal memtoreg : std_logic;
   signal regwrite : std_logic;
   signal memread : std_logic;
   signal memwrite : std_logic;
   signal beq : std_logic;
   signal aluop1 : std_logic;
   signal aluop0 : std_logic;
	signal bne: std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: control_unit PORT MAP (
          op0 => op0,
          op1 => op1,
          op2 => op2,
          op3 => op3,
          op4 => op4,
          op5 => op5,
          regdst => regdst,
			 jump => jump , 
          alusrc => alusrc,
          memtoreg => memtoreg,
          regwrite => regwrite,
          memread => memread,
          memwrite => memwrite,
          beq => beq,
          aluop1 => aluop1,
          aluop0 => aluop0,
			 bne => bne
        );

   -- Clock process definitions
  
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		-- R format 
		op5 <='0';
		op4 <='0';
		op3 <='0';
		op2 <='0';
		op1 <='0';
		op0 <='0';
		wait for 100 ns;
		-- lw instruction
		op5 <='1';
		op4 <='0';
		op3 <='0';
		op2 <='0';
		op1 <='1';
		op0 <='1';		
		wait for 100 ns;
		-- sw instruction 
		op5 <='1';
		op4 <='0';
		op3 <='1';
		op2 <='0';
		op1 <='1';
		op0 <='1';
		wait for 100 ns;
		-- beq  instruction 
		op5 <='0';
		op4 <='0';
		op3 <='0';
		op2 <='1';
		op1 <='0';
		op0 <='0';
		wait for 100 ns;
		
		-- bnq instruction 
		op5 <='0';
		op4 <='0';
		op3 <='0';
		op2 <='1';
		op1 <='0';
		op0 <='1';
		wait for 100 ns;
		
      -- insert stimulus here 

      wait;
   end process;

END;
