-- Vhdl test bench created from schematic D:\2EN\FM_Frequencemetre\echantillon.sch - Mon May 14 17:39:48 2012
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY echantillon_echantillon_sch_tb IS
END echantillon_echantillon_sch_tb;
ARCHITECTURE behavioral OF echantillon_echantillon_sch_tb IS 

   COMPONENT echantillon
   PORT( entree	:	IN	STD_LOGIC; 
          clk	:	IN	STD_LOGIC; 
          rst	:	IN	STD_LOGIC; 
          frequence	:	OUT	STD_LOGIC_VECTOR (23 DOWNTO 0));
   END COMPONENT;

   SIGNAL entree	:	STD_LOGIC;
   SIGNAL clk	:	STD_LOGIC;
   SIGNAL rst	:	STD_LOGIC;
   SIGNAL frequence	:	STD_LOGIC_VECTOR (23 DOWNTO 0);

BEGIN

   UUT: echantillon PORT MAP(
		entree => entree, 
		clk => clk, 
		rst => rst, 
		frequence => frequence
   );

-- *** Test Bench - User Defined Section ***
   clock_process : PROCESS
   BEGIN
	
	clk <= '0' ;
	wait for 10 ns ;
	clk <= '1' ;
	wait for 10 ns;

   END PROCESS;
	
	
	init_process : PROCESS
   BEGIN
	
	rst <= '0';
	wait for 30 ns;
	rst <= '1';
	wait ;
	
   END PROCESS;
	
	gene_process : PROCESS
   BEGIN
	
	entree <= '0' ;
	wait for 0.3 ms ;
	entree <= '1' ;
	wait for 0.2 ms;

   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
