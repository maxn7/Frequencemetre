----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:42:40 04/23/2012 
-- Design Name: 
-- Module Name:    trouver_calibre - Behavioral 
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

entity trouver_calibre is
    Port ( 
			  frequence : in  STD_LOGIC_VECTOR (23 downto 0);
			  clk : in STD_LOGIC;
			  rst : in STD_LOGIC;
			  mHz : in STD_LOGIC;
           puissance : out  STD_LOGIC_VECTOR (2 downto 0);
           position_point : out  STD_LOGIC_VECTOR (1 downto 0);
           calibre : out  STD_LOGIC_VECTOR (2 downto 0)
			  );
end trouver_calibre;

architecture Behavioral of trouver_calibre is


begin

--Bloc F
process(clk)
begin
	if(clk'event and clk='1') then 
		if(rst='0') then position_point<= "00"; calibre <= "000"; puissance <= "000";
		elsif(mHz='1') --si on a des millihertz
		then
			if(frequence >= X"989680") then position_point<= "00"; calibre <= "111"; --erreur
			elsif(frequence >= X"0F4240") then position_point<= "10"; calibre <= "100"; puissance <= "110";  --MHz
			elsif(frequence >= X"0186A0") then position_point<= "01"; calibre <= "010"; puissance <= "101";--KHz
			elsif(frequence >= X"002710") then position_point<= "10"; calibre <= "010"; puissance <= "100";
			elsif(frequence >= X"0003E8") then position_point<= "11"; calibre <= "010"; puissance <= "011";
			elsif(frequence >= X"000064") then position_point<= "01"; calibre <= "001"; puissance <= "010";--Hz
			elsif(frequence >= X"00000A") then position_point<= "10"; calibre <= "001"; puissance <= "001";
			elsif(frequence >= X"000001") then position_point<= "11"; calibre <= "001"; puissance <= "000";
			else position_point<= "00"; calibre <= "111"; --erreur
			end if;
			
		else
			if(frequence >= X"989680") then position_point<= "00"; calibre <= "111"; --erreur
			elsif(frequence >= X"0F4240") then position_point<= "10"; calibre <= "100"; puissance <= "110";  --MHz
			elsif(frequence >= X"0186A0") then position_point<= "01"; calibre <= "010"; puissance <= "101";--KHz
			elsif(frequence >= X"002710") then position_point<= "10"; calibre <= "010"; puissance <= "100";
			elsif(frequence >= X"0003E8") then position_point<= "11"; calibre <= "010"; puissance <= "011";
			elsif(frequence >= X"000064") then position_point<= "01"; calibre <= "001"; puissance <= "010";--Hz
			elsif(frequence >= X"00000A") then position_point<= "10"; calibre <= "001"; puissance <= "001";
			elsif(frequence >= X"000001") then position_point<= "11"; calibre <= "001"; puissance <= "000";
			else position_point<= "00"; calibre <= "111"; --erreur
			end if;	
		end if;
	end if;
	
end process;

end Behavioral;

