--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:14:38 05/14/2012
-- Design Name:   
-- Module Name:   D:/2EN/FM_Frequencemetre/test_perToFreq.vhd
-- Project Name:  FM_Frequencemetre
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: perToFreq
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
 
ENTITY test_perToFreq IS
END test_perToFreq;
 
ARCHITECTURE behavior OF test_perToFreq IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT perToFreq
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         periode : IN  std_logic_vector(23 downto 0);
         frequence : OUT  std_logic_vector(23 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal periode : std_logic_vector(23 downto 0) := (others => '0');

 	--Outputs
   signal frequence : std_logic_vector(23 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: perToFreq PORT MAP (
          clk => clk,
          rst => rst,
          periode => periode,
          frequence => frequence
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
      wait for 100 ns;	
		rst <= '1';
		
      wait for clk_period*4;

      periode <= X"0165BC";

      wait;
   end process;

END;
