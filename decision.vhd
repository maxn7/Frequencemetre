----------------------------------------------------------------------------------
-- Jérémie Fourmann & Maxime Morin
-- Projet Numérique 2EN 2012 - Réalisation d'un fréquencemètre
--
-- Fichier : decision.vhd
-- Description : Détermine quelle mesure de fréquence va être affichée
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity decision is
    Port ( echelonHF : in  STD_LOGIC_VECTOR (23 downto 0);
           echantillonBF : in  STD_LOGIC_VECTOR (23 downto 0);
           frequence : out  STD_LOGIC_VECTOR (23 downto 0);
           clk : in  STD_LOGIC;
           mhz : out  STD_LOGIC;
           rst : in  STD_LOGIC);
end decision;


architecture Behavioral of decision is
type etat is (init, choix, attente, setBF, setHF);
signal etatf : etat; --etat futur
signal etatp : etat; --etat present

signal compteur  : STD_LOGIC_VECTOR (27 downto 0);

begin

--Bloc F
process(etatp, rst, compteur, echelonHF)
begin
	if rst='0' then etatf <=init ;
	else	
		case etatp is 
		when init => etatf <= choix ;
						
		when choix => 
			if(echelonHF < X"0003E8") then etatf <= setBF;			
			else  etatf <= setHF ;
			end if;
			
		when setHF => etatf <= attente;
		when setBF => etatf <= attente;
		
		when attente =>
			if(compteur > X"2FAF080") then etatf <= init;
			else etatf <= attente;
			end if;
		
		end case;	
	end if;
end process;

--Bloc M
process(clk)
begin
	if (clk'event and clk = '1') then etatp <= etatf ;
	end if;
end process;

--Bloc G
process(clk)
begin
if(clk'event and clk='1') then
	case etatp is
	
	when init => compteur <= X"0000000";
	
	when attente => compteur <= compteur + 1; 
	
	when setHF => frequence <= echelonHF; mhz <= '0' ;
	
	when setBF => frequence <= echantillonBF; mhz <= '1' ;

	when others => 
	end case;
	
end if;	

end process;


end Behavioral;

