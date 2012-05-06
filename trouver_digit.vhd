----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:30:12 04/23/2012 
-- Design Name: 
-- Module Name:    trouver_digit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

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
signal etatf : etat; --etat futur
signal etatp : etat; --etat present

signal Spuissance : STD_LOGIC_VECTOR (2 downto 0); 
signal Sfrequence : STD_LOGIC_VECTOR (23 downto 0);
signal comp : STD_LOGIC_VECTOR (23 downto 0);
signal Sdigit : STD_LOGIC_VECTOR (3 downto 0);
signal step : STD_LOGIC_VECTOR (1 downto 0);


begin

--Bloc F
process(etatp, rst)
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
			
	when soustraction => Sfrequence <= Sfrequence - comp;
	
	when calc_digit => 
			if(Sfrequence >= comp) then Sdigit <= Sdigit + 1;
			--elsif(Sfrequence = comp)  then Sdigit <= Sdigit + 1;
			end if;
			
	when affiche => 
			step <= step - 1 ; 
			Spuissance <= Spuissance - 1; 
			comp <= X"000000"; --Le signal va servir pour le comptage
			digit <= Sdigit;
			--dec_sel affiche valeur
			--dec_point affiche point	
			
	when incremente =>
			comp <= comp + 1; -- c'est le bloc F qui vérifie si on dépasse la valeur
	
	when others => 
			
	end case;

end if;	
end process;

--dec_sel
process(step)
begin
	if(step="11") then selecteur <= "1000";
	elsif(step="10") then selecteur <= "0100";
	elsif(step="01") then selecteur <= "0010";
	else selecteur <= "0001";
	end if;
end process;

--dec_sel
process(position_point)
begin
	if(position_point = step) then point_on <='1';
	else point_on <= '0';
	end if;
end process;

		
end Behavioral;

