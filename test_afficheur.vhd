-- Vhdl test bench created from schematic D:\2EN\FM-PROJnum\frequencemetre\afficheur.sch - Wed May 02 17:22:58 2012
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;


LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY afficheur_afficheur_sch_tb IS
END afficheur_afficheur_sch_tb;
ARCHITECTURE behavioral OF afficheur_afficheur_sch_tb IS 

   COMPONENT afficheur
   PORT( calibre	:	OUT	STD_LOGIC_VECTOR (2 DOWNTO 0); 
          point	:	OUT	STD_LOGIC; 
          clk	:	IN	STD_LOGIC; 
          rst	:	IN	STD_LOGIC; 
          mhz	:	IN	STD_LOGIC; 
          frequence	:	IN	STD_LOGIC_VECTOR (23 DOWNTO 0); 
          segments	:	OUT	STD_LOGIC_VECTOR (6 DOWNTO 0); 
          selecteur	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0));
   END COMPONENT;

   SIGNAL calibre	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
   SIGNAL point	:	STD_LOGIC;
   SIGNAL clk	:	STD_LOGIC;
   SIGNAL rst	:	STD_LOGIC;
   SIGNAL mhz	:	STD_LOGIC;
   SIGNAL frequence	:	STD_LOGIC_VECTOR (23 DOWNTO 0);
   SIGNAL segments	:	STD_LOGIC_VECTOR (6 DOWNTO 0);
   SIGNAL selecteur	:	STD_LOGIC_VECTOR (3 DOWNTO 0);

BEGIN

   UUT: afficheur PORT MAP(
		calibre => calibre, 
		point => point, 
		clk => clk, 
		rst => rst, 
		mhz => mhz, 
		frequence => frequence, 
		segments => segments, 
		selecteur => selecteur
   );

-- *** Test Bench - User Defined Section ***
   clk_process : PROCESS
   BEGIN
		clk <= '0';
      wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
   END PROCESS;
	
	init_process : process
	begin
		rst <= '0';
		mhz <= '0';
		frequence <= X"00000C";
		wait for 50 ns;
		rst <= '1';
      wait;
	end process;
	
--	test_process : process
--	begin
--	
--		if(rst='0') then frequence <= X"000000" ;
--		else frequence <= frequence + X"000001";
-- 	end if;
--		
--		
--		wait;
--		
--	end process;
	
	
-- *** End Test Bench - User Defined Section ***


END;
