--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : AND_5_drc.vhf
-- /___/   /\     Timestamp : 11/10/2016 14:02:31
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: /home/afr/Xilinx/14.7/ISE_DS/ISE/bin/lin64/unwrapped/sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl AND_5_drc.vhf -w /home/afr/WS16-17/hwprak/vhdl-projects/xilinxproject-versuch2/AND_5.sch
--Design Name: AND_5
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity AND_5 is
   port ( XLXN_5  : in    std_logic; 
          XLXN_6  : in    std_logic; 
          XLXN_7  : in    std_logic; 
          XLXN_8  : in    std_logic; 
          XLXN_9  : in    std_logic; 
          XLXN_10 : out   std_logic);
end AND_5;

architecture BEHAVIORAL of AND_5 is
   signal XLXN_1  : std_logic;
   signal XLXN_2  : std_logic;
   signal XLXN_3  : std_logic;
   component AND_Gate
      port ( a : in    std_logic; 
             b : in    std_logic; 
             c : out   std_logic);
   end component;
   
begin
   XLXI_1 : AND_Gate
      port map (a=>XLXN_6,
                b=>XLXN_7,
                c=>XLXN_1);
   
   XLXI_2 : AND_Gate
      port map (a=>XLXN_8,
                b=>XLXN_9,
                c=>XLXN_2);
   
   XLXI_3 : AND_Gate
      port map (a=>XLXN_1,
                b=>XLXN_2,
                c=>XLXN_3);
   
   XLXI_4 : AND_Gate
      port map (a=>XLXN_3,
                b=>XLXN_5,
                c=>XLXN_10);
   
end BEHAVIORAL;


