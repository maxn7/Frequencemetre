----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:33:06 05/06/2012 
-- Design Name: 
-- Module Name:    generateur_nombre_24bits - Behavioral 
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

entity generateur_nombre_24bits is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           sortie : out  STD_LOGIC_VECTOR (23 downto 0));
end generateur_nombre_24bits;

architecture Behavioral of generateur_nombre_24bits is
type etat is (init, calc_nombre, attente);

signal etatf : etat; --etat futur
signal etatp : etat; --etat present

signal timer  : STD_LOGIC_VECTOR (27 downto 0);
signal nombre : STD_LOGIC_VECTOR (23 downto 0);


begin

--Bloc F
process(etatp, rst, timer)
begin
	if rst='0' then etatf <=init ;
	else	
		case etatp is 
		when init => etatf <= attente;
			
		when attente =>
			if(timer > X"2FAF080") then etatf <= calc_nombre;
			else etatf <= attente;
			end if;

		when calc_nombre => etatf <= attente;
		
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
	when init => timer <= X"0000000"; nombre <= X"000400";

	when attente => timer <= timer + 1;
	
	when calc_nombre => timer <= X"0000000"; nombre <= nombre (22 downto 0) & '0' ; 
	
	end case;

end if;	
end process;

--sorties
process(nombre)
begin

sortie <= nombre;

end process;

end Behavioral;
