----------------------------------------------------------------------------------
-- Jérémie Fourmann & Maxime Morin
-- Projet Numérique 2EN 2012 - Réalisation d'un fréquencemètre
--
-- Fichier : compteur_clock.vhd
-- Description : Compte les fronts d'horloge entre deux fronts de signal
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity compteur_clock is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           front_signal : in  STD_LOGIC;
           periode : out  STD_LOGIC_VECTOR (27 downto 0));
end compteur_clock;

architecture Behavioral of compteur_clock is
type etat is (init, mesure, validation, nouvelleMesure);
signal etatf : etat; --etat futur
signal etatp : etat; --etat present

signal compteur  : STD_LOGIC_VECTOR (27 downto 0);

begin

--Bloc F
process(etatp, rst, front_signal)
begin
	if rst='0' then etatf <=init ;
	else	
		case etatp is 
		when init => 
			if(front_signal = '0') then etatf <= init;
			else etatf <= mesure;
			end if;
						
		when mesure => 
			if(front_signal = '0') then etatf <= mesure;	
			else etatf <= validation ;
			end if;
		
		when validation => etatf <= nouvelleMesure;
		
		when nouvelleMesure => etatf <= mesure;
		
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
	when mesure => compteur <= compteur + 1;
	when validation => periode <= compteur;
	when nouvelleMesure => compteur <= X"0000001";
	when others => 
	end case;
	
end if;	

end process;

end Behavioral;

