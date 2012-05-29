--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:50:59 05/09/2012
-- Design Name:   
-- Module Name:   D:/2EN/FM_Frequencemetre/test_echelon.vhd
-- Project Name:  FM_Frequencemetre
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: echelon
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
 
ENTITY test_echelon IS
END test_echelon;
 
ARCHITECTURE behavior OF test_echelon IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT echelon
    PORT(
         front_signal : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
         front_etalon : IN  std_logic;
         frequence : OUT  std_logic_vector(23 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal front_signal : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal front_etalon : std_logic := '0';

 	--Outputs
   signal frequence : std_logic_vector(23 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: echelon PORT MAP (
          front_signal => front_signal,
          clk => clk,
          rst => rst,
          front_etalon => front_etalon,
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
