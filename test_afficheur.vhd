-- Vhdl test bench created from schematic /home/max/ProjetNumerique/frequencemetre/afficheur.sch - Sun May  6 15:15:39 2012
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
ENTITY afficheur_afficheur_sch_tb IS
END afficheur_afficheur_sch_tb;
ARCHITECTURE behavioral OF afficheur_afficheur_sch_tb IS 

   COMPONENT afficheur
   PORT( selecteur	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          point	:	OUT	STD_LOGIC; 
          clk	:	IN	STD_LOGIC; 
          rst	:	IN	STD_LOGIC; 
          calibre	:	OUT	STD_LOGIC_VECTOR (2 DOWNTO 0); 
          mhz	:	IN	STD_LOGIC; 
          frequence	:	IN	STD_LOGIC_VECTOR (23 DOWNTO 0); 
          segments	:	OUT	STD_LOGIC_VECTOR (6 DOWNTO 0));
   END COMPONENT;

   SIGNAL selecteur	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL point	:	STD_LOGIC;
   SIGNAL clk	:	STD_LOGIC;
   SIGNAL rst	:	STD_LOGIC;
   SIGNAL calibre	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
   SIGNAL mhz	:	STD_LOGIC;
   SIGNAL frequence	:	STD_LOGIC_VECTOR (23 DOWNTO 0);
   SIGNAL segments	:	STD_LOGIC_VECTOR (6 DOWNTO 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
	
BEGIN

   UUT: afficheur PORT MAP(
		selecteur => selecteur, 
		point => point, 
		clk => clk, 
		rst => rst, 
		calibre => calibre, 
		mhz => mhz, 
		frequence => frequence, 
		segments => segments
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
	mhz <= '0';
	frequence <= X"00FFFF";
	
	wait; 
   end process;

END;
