--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:17:46 05/09/2012
-- Design Name:   
-- Module Name:   D:/2EN/FM_Frequencemetre/test_1hz.vhd
-- Project Name:  FM_Frequencemetre
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: clk1hz
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_1hz IS
END test_1hz;
 
ARCHITECTURE behavior OF test_1hz IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT clk1hz
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         sortie : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal sortie : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: clk1hz PORT MAP (
          clk => clk,
          rst => rst,
          sortie => sortie
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      rst <= '0';
      wait for 30 ns;	
		rst <= '1';


      wait;
   end process;

END;
