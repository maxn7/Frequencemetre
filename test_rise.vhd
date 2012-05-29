--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:43:54 05/09/2012
-- Design Name:   
-- Module Name:   D:/2EN/FM_Frequencemetre/test_rise.vhd
-- Project Name:  FM_Frequencemetre
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: rise_detect
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
 
ENTITY test_rise IS
END test_rise;
 
ARCHITECTURE behavior OF test_rise IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT rise_detect
    PORT(
         rst : IN  std_logic;
         clk : IN  std_logic;
         entree : IN  std_logic;
         front : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';
   signal entree : std_logic := '0';

 	--Outputs
   signal front : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: rise_detect PORT MAP (
          rst => rst,
          clk => clk,
          entree => entree,
          front => front
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
	
	   signal_process :process
   begin
		entree <= '0';
		wait for 46 ns;
		entree <= '1';
		wait for 36 ns;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      rst <= '0';
      wait for 40 ns;	
		rst <= '1';

      wait;
   end process;

END;
