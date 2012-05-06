-- Vhdl test bench created from schematic /home/max/ProjetNumerique/Frequencemetre/visu_afficheur.sch - Sun May  6 19:48:10 2012
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
ENTITY visu_afficheur_visu_afficheur_sch_tb IS
END visu_afficheur_visu_afficheur_sch_tb;
ARCHITECTURE behavioral OF visu_afficheur_visu_afficheur_sch_tb IS 

   COMPONENT visu_afficheur
   PORT( segments	:	OUT	STD_LOGIC_VECTOR (6 DOWNTO 0); 
          calibre	:	OUT	STD_LOGIC_VECTOR (2 DOWNTO 0); 
          point	:	OUT	STD_LOGIC; 
          selecteur	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          clk	:	IN	STD_LOGIC; 
          rst	:	IN	STD_LOGIC; 
          mhz	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL segments	:	STD_LOGIC_VECTOR (6 DOWNTO 0);
   SIGNAL calibre	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
   SIGNAL point	:	STD_LOGIC;
   SIGNAL selecteur	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL clk	:	STD_LOGIC;
   SIGNAL rst	:	STD_LOGIC;
   SIGNAL mhz	:	STD_LOGIC;

BEGIN

   UUT: visu_afficheur PORT MAP(
		segments => segments, 
		calibre => calibre, 
		point => point, 
		selecteur => selecteur, 
		clk => clk, 
		rst => rst, 
		mhz => mhz
   );

-- *** Test Bench - User Defined Section ***
   clockprocess : PROCESS
   BEGIN
		clk <= '1';
		wait for 10 ns;
		clk <= '0';
		wait for 10 ns;
   END PROCESS;
	
	stim_process : process
	begin
		rst<= '0';
		wait for 50ns;
		mhz <= '0';
		rst <= '1';
		wait;
	end process;
-- *** End Test Bench - User Defined Section ***

END;
