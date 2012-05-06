----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:18:06 05/06/2012 
-- Design Name: 
-- Module Name:    nombre_24bits_generateur - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Poue le test de notre module d'affichage
--
-- affiche une puissance de deux par seconde
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity nombre_24bits_generateur is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           nombre : out  STD_LOGIC_VECTOR (23 downto 0));
end nombre_24bits_generateur;

architecture Behavioral of nombre_24bits_generateur is
type etat is (init, calc_nombre, attente);

signal etatf : etat; --etat futur
signal etatp : etat; --etat present

signal timer : STD_LOGIC_VECTOR (23 downto 0);

begin

--Bloc F
process(etatp, rst)
begin
	if rst='0' then etatf <=init ;
	else	
		case etatp is 
		when init => 
			
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
	when init => 

	when others => 
			
	end case;

end if;	
end process;

--autres process
process(step)
begin

end process;


end Behavioral;

