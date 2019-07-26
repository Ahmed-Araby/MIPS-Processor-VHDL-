 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
 
ENTITY tmp_test IS
END tmp_test;
 
ARCHITECTURE behavior OF tmp_test IS 
 
  
    COMPONENT tmp
    PORT(
         i0 : IN  std_logic;
         i1 : IN  std_logic;
         o : out std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i0 : std_logic := '0';
   signal i1 : std_logic := '0';
   signal o : std_logic := '0';
    
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: tmp PORT MAP (
          i0 => i0,
          i1 => i1,
          o => o
        );

    
 

   -- Stimulus process
   stim_proc: process
   begin		
       wait for 10 ns;

 
      -- insert stimulus here 

      wait;
   end process;

END;
