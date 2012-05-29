----------------------------------------------------------------------------------
-- Jérémie Fourmann & Maxime Morin
-- Projet Numérique 2EN 2012 - Réalisation d'un fréquencemètre
--
-- Fichier : compteur_fronts.vhd
-- Description : Compte les fronts de signal entre deux front du signal étalon
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity compteur_front is
    Port ( front_signal : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           front_etalon : in  STD_LOGIC;
           frequence : out  STD_LOGIC_VECTOR (23 downto 0));
end compteur_front;

architecture Behavioral of compteur_front is

type etat is (init, mesure, validation, nouvelleMesure);
signal etatf : etat; --etat futur
signal etatp : etat; --etat present

signal compteur  : STD_LOGIC_VECTOR (23 downto 0);

begin

--Bloc F
process(etatp, rst, front_signal, front_etalon)
begin
	if rst='0' then etatf <=init ;
	else	
		case etatp is 
		when init => if(front_etalon = '0') then etatf <= init;
						else etatf <= mesure;
						end if;
						
		when mesure => if(front_etalon = '0') then etatf <= mesure;
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
process(clk, front_signal)
begin
if(clk'event and clk='1') then
	case etatp is
	
	when init => compteur <= X"000000";
	when mesure => 
		if(front_signal = '1') then compteur <= compteur + 1;
		end if;
		
	when validation => frequence <= compteur;
	when nouvelleMesure => compteur <= X"000001";
	when others => 
	end case;
	
end if;	

end process;

end Behavioral;

