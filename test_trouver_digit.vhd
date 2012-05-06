--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:15:17 05/06/2012
-- Design Name:   
-- Module Name:   /home/max/ProjetNumerique/frequencemetre/test_trouver_digit.vhd
-- Project Name:  frequencemetre
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: trouver_digit
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_trouver_digit IS
END test_trouver_digit;
 
ARCHITECTURE behavior OF test_trouver_digit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT trouver_digit
    PORT(
         frequence : IN  std_logic_vector(23 downto 0);
         puissance : IN  std_logic_vector(2 downto 0);
         position_point : IN  std_logic_vector(1 downto 0);
         digit : OUT  std_logic_vector(3 downto 0);
         point_on : OUT  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
         selecteur : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal frequence : std_logic_vector(23 downto 0) := (others => '0');
   signal puissance : std_logic_vector(2 downto 0) := (others => '0');
   signal position_point : std_logic_vector(1 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal digit : std_logic_vector(3 downto 0);
   signal point_on : std_logic;
   signal selecteur : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: trouver_digit PORT MAP (
          frequence => frequence,
          puissance => puissance,
          position_point => position_point,
          digit => digit,
          point_on => point_on,
          clk => clk,
          rst => rst,
          selecteur => selecteur
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Init process
   init_proc: process
   begin		
      rst <= '0';-- hold reset state for 100 ns.
      wait for 50 ns;	
      rst <= '1';
      wait;
   end process;
	
	 -- stimulus process
   stim_proc: process
   begin	
	puissance <= "010";
	frequence <= X"0000EF";
	
	wait; 
   end process;
	
	

END;
