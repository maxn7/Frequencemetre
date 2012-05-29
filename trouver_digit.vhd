----------------------------------------------------------------------------------
-- Jérémie Fourmann & Maxime Morin
-- Projet Numérique 2EN 2012 - Réalisation d'un fréquencemètre
--
-- Fichier : trouver_digit.vhd
-- Description : 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;


entity trouver_digit is
    Port ( frequence : in  STD_LOGIC_VECTOR (23 downto 0);
           puissance : in  STD_LOGIC_VECTOR (2 downto 0);
           position_point : in  STD_LOGIC_VECTOR (1 downto 0);
           digit : out  STD_LOGIC_VECTOR (3 downto 0);
			  point_on : out STD_LOGIC;
			  clk : in STD_LOGIC;
			  rst : in STD_LOGIC;
           selecteur : out  STD_LOGIC_VECTOR (3 downto 0));
end trouver_digit;

architecture Behavioral of trouver_digit is

type etat is (init,calc_digit,attente, incremente,affiche,calc_comp,soustraction);
signal etatf : etat; -- etat futur
signal etatp : etat; -- etat present

signal Spuissance : STD_LOGIC_VECTOR (2 downto 0); 
signal Sfrequence : STD_LOGIC_VECTOR (23 downto 0);
signal comp : STD_LOGIC_VECTOR (23 downto 0);
signal Sdigit : STD_LOGIC_VECTOR (3 downto 0);
signal step : STD_LOGIC_VECTOR (1 downto 0);

begin

--Bloc F
process(etatp, rst,Sfrequence,comp,step)
begin
	if rst='0' then etatf <=init ;
	else	
		case etatp is 
		when init => etatf <= calc_comp;
		
		when calc_comp => etatf <= soustraction;
		
		when soustraction => etatf <= calc_digit;
		
		when calc_digit => 
			if(Sfrequence < comp) then etatf <= affiche;
			else etatf <= soustraction;
			end if;

		when affiche => etatf<= attente; 
		
		when attente =>
			if(comp = X"00C350") then
				if(step = "00") then etatf <= init;
				else etatf <= calc_comp;
				end if;
			else etatf <= incremente;
			end if;
			
		when incremente => etatf <= attente;
			
		when others => etatf <= init;
		
		end case;
	end if;
end process;

--Bloc M
process(clk, rst)
begin
	if (clk'event and clk = '1') then etatp <= etatf ;
	end if;
end process;

--Bloc G
process(clk)
begin
if(clk'event and clk='1') then
	
	case etatp is
	when init => step <= "00"; Sfrequence <= frequence; Spuissance<=puissance;
	
	when calc_comp => Sdigit <= "0001";
				if(Spuissance="110") then comp <= X"0F4240"; --10^6
				elsif(Spuissance="101") then comp <= X"0186A0"; --10^5
				elsif(Spuissance="100") then comp <= X"002710"; --10^4
				elsif(Spuissance="011") then comp <= X"0003E8"; --10^3
				elsif(Spuissance="010") then comp <= X"000064"; --10^2
				elsif(Spuissance="001") then comp <= X"00000A"; --10^1
				elsif(Spuissance="000") then comp <= X"000001"; --10^0
				else comp <= X"000001"; --10^0
				end if;
				
			
	when soustraction => if(Sfrequence >= comp) then Sfrequence <= Sfrequence - comp;
								else Sdigit <= "0000";
								end if;
	
	when calc_digit => 
			if(Sfrequence >= comp) then Sdigit <= Sdigit + 1;
			end if;
			
	when affiche => 
			step <= step - 1 ; 
			Spuissance <= Spuissance - 1; 
			comp <= X"000000"; --Le signal va servir pour le comptage
			digit <= Sdigit;
			
	when incremente =>
			comp <= comp + 1; -- c'est le bloc F qui vérifie si on dépasse la valeur
	
	when others => 
			
	end case;

end if;	
end process;

--dec_sel
process(step)
begin
	if(step="00") then selecteur <= "0111";
	elsif(step="01") then selecteur <= "1011";
	elsif(step="10") then selecteur <= "1101";
	else selecteur <= "1110";
	end if;
end process;

--point_sel
process(position_point, step)
begin
	if(position_point = step) then point_on <='0';
	else point_on <= '1';
	end if;
end process;

		
end Behavioral;

