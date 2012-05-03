--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.2
--  \   \         Application : sch2hdl
--  /   /         Filename : afficheur.vhf
-- /___/   /\     Timestamp : 05/02/2012 17:20:24
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl D:/2EN/FM-PROJnum/frequencemetre/afficheur.vhf -w D:/2EN/FM-PROJnum/frequencemetre/afficheur.sch
--Design Name: afficheur
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity afficheur is
   port ( clk       : in    std_logic; 
          frequence : in    std_logic_vector (23 downto 0); 
          mhz       : in    std_logic; 
          rst       : in    std_logic; 
          calibre   : out   std_logic_vector (2 downto 0); 
          point     : out   std_logic; 
          segments  : out   std_logic_vector (6 downto 0); 
          selecteur : out   std_logic_vector (3 downto 0));
end afficheur;

architecture BEHAVIORAL of afficheur is
   signal XLXN_7    : std_logic_vector (3 downto 0);
   signal XLXN_8    : std_logic_vector (2 downto 0);
   signal XLXN_9    : std_logic_vector (1 downto 0);
   component decodeur
      port ( valeur : in    std_logic_vector (3 downto 0); 
             sortie : out   std_logic_vector (6 downto 0));
   end component;
   
   component trouver_calibre
      port ( clk            : in    std_logic; 
             rst            : in    std_logic; 
             mHz            : in    std_logic; 
             frequence      : in    std_logic_vector (23 downto 0); 
             puissance      : out   std_logic_vector (2 downto 0); 
             position_point : out   std_logic_vector (1 downto 0); 
             calibre        : out   std_logic_vector (2 downto 0));
   end component;
   
   component trouver_digit
      port ( clk            : in    std_logic; 
             rst            : in    std_logic; 
             frequence      : in    std_logic_vector (23 downto 0); 
             puissance      : in    std_logic_vector (2 downto 0); 
             position_point : in    std_logic_vector (1 downto 0); 
             point_on       : out   std_logic; 
             digit          : out   std_logic_vector (3 downto 0); 
             selecteur      : out   std_logic_vector (3 downto 0));
   end component;
   
begin
   XLXI_2 : decodeur
      port map (valeur(3 downto 0)=>XLXN_7(3 downto 0),
                sortie(6 downto 0)=>segments(6 downto 0));
   
   XLXI_3 : trouver_calibre
      port map (clk=>clk,
                frequence(23 downto 0)=>frequence(23 downto 0),
                mHz=>mhz,
                rst=>rst,
                calibre(2 downto 0)=>calibre(2 downto 0),
                position_point(1 downto 0)=>XLXN_9(1 downto 0),
                puissance(2 downto 0)=>XLXN_8(2 downto 0));
   
   XLXI_5 : trouver_digit
      port map (clk=>clk,
                frequence(23 downto 0)=>frequence(23 downto 0),
                position_point(1 downto 0)=>XLXN_9(1 downto 0),
                puissance(2 downto 0)=>XLXN_8(2 downto 0),
                rst=>rst,
                digit(3 downto 0)=>XLXN_7(3 downto 0),
                point_on=>point,
                selecteur(3 downto 0)=>selecteur(3 downto 0));
   
end BEHAVIORAL;


