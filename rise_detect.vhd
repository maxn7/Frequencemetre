----------------------------------------------------------------------------------
-- Jérémie Fourmann & Maxime Morin
-- Projet Numérique 2EN 2012 - Réalisation d'un fréquencemètre
--
-- Fichier : rise_detect.vhd
-- Description : Génère un front de largeur 1*Tclk lorsqu'il détécte un front montant
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rise_detect is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  entree : in STD_LOGIC;
           front : out  STD_LOGIC);
end rise_detect;

architecture Behavioral of rise_detect is

type etat is (init,passage0,passage1);
signal etatf : etat; --etat futur
signal etatp : etat; --etat present

begin
	process(rst, etatp,entree)
	begin
		if(rst='0') then etatf <= init;
		else
			case etatp is
			 when init => if(entree = '0') then etatf <= passage0;
				else etatf <= init;
				end if;
			 when passage0 => if(entree = '1') then etatf <= passage1;
				else etatf <= passage0;
				end if;
			 when passage1 => etatf <= init	;
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
	when init => front <= '0';
	when passage0 => front <= '0';
	when passage1 => front <= '1'; 
	end case;
end if;	
end process;

end Behavioral;
