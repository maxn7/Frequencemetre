----------------------------------------------------------------------------------
-- Jérémie Fourmann & Maxime Morin
-- Projet Numérique 2EN 2012 - Réalisation d'un fréquencemètre
--
-- Fichier : clk1hz.vhd
-- Description : Génère un étalon à la fréquence de 1Hz à partir des 50MHz du signal d'horloge
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity clk1hz is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           sortie : out  STD_LOGIC);
end clk1hz;

architecture Behavioral of clk1hz is
type etat is (zero, un, attente1, attente0);

signal etatf : etat; --etat futur
signal etatp : etat; --etat present

signal timer  : STD_LOGIC_VECTOR (27 downto 0);

begin

--Bloc F
process(etatp, rst, timer)
begin
	if rst='0' then etatf <=zero ;
	else	
		case etatp is 
		when zero => etatf <= attente1;
			
		when attente1 =>
			if(timer = X"17D7840") then etatf <= un; --X"17D7840" X"00061A8"
			else etatf <= attente1;
			end if;

		when un => etatf <= attente0; --X"17D7840" X"00061A8"
		
		when attente0 =>
			if(timer = X"17D7840") then etatf <= zero;
			else etatf <= attente0;
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
	when zero => sortie <= '0'; timer <= X"0000000";
	when un => sortie <= '1'; timer <= X"0000000";
	when others => timer <= timer + 1;
	end case;

end if;	
end process;

end Behavioral;

