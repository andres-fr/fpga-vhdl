--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : adder_8_5_bit.vhf
-- /___/   /\     Timestamp : 11/04/2016 15:50:55
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: /home/afr/Xilinx/14.7/ISE_DS/ISE/bin/lin64/unwrapped/sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl adder_8_5_bit.vhf -w /home/afr/WS16-17/hwprak/versuch1/xilinxproject-versuch2/adder_8_5_bit.sch
--Design Name: adder_8_5_bit
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

entity adder_8_5_bit is
   port ( );
end adder_8_5_bit;

architecture BEHAVIORAL of adder_8_5_bit is
   signal XLXN_1               : std_logic;
   signal XLXN_2               : std_logic;
   signal XLXN_10              : std_logic;
   signal XLXN_23              : std_logic;
   signal XLXN_25              : std_logic;
   signal XLXN_26              : std_logic;
   signal XLXN_27              : std_logic;
   signal XLXI_2_a_openSignal  : std_logic;
   signal XLXI_2_b_openSignal  : std_logic;
   signal XLXI_4_a_openSignal  : std_logic;
   signal XLXI_4_b_openSignal  : std_logic;
   signal XLXI_5_a_openSignal  : std_logic;
   signal XLXI_5_b_openSignal  : std_logic;
   signal XLXI_7_a_openSignal  : std_logic;
   signal XLXI_7_b_openSignal  : std_logic;
   signal XLXI_8_a_openSignal  : std_logic;
   signal XLXI_8_b_openSignal  : std_logic;
   signal XLXI_9_b_openSignal  : std_logic;
   signal XLXI_10_b_openSignal : std_logic;
   signal XLXI_11_b_openSignal : std_logic;
   component half_adder
      port ( a     : in    std_logic; 
             b     : in    std_logic; 
             c_out : out   std_logic; 
             s     : out   std_logic);
   end component;
   
   component full_adder
      port ( a     : in    std_logic; 
             b     : in    std_logic; 
             c_in  : in    std_logic; 
             s     : out   std_logic; 
             c_out : out   std_logic);
   end component;
   
begin
   XLXI_2 : half_adder
      port map (a=>XLXI_2_a_openSignal,
                b=>XLXI_2_b_openSignal,
                c_out=>open,
                s=>XLXN_1);
   
   XLXI_4 : full_adder
      port map (a=>XLXI_4_a_openSignal,
                b=>XLXI_4_b_openSignal,
                c_in=>XLXN_1,
                c_out=>XLXN_2,
                s=>open);
   
   XLXI_5 : full_adder
      port map (a=>XLXI_5_a_openSignal,
                b=>XLXI_5_b_openSignal,
                c_in=>XLXN_2,
                c_out=>XLXN_10,
                s=>open);
   
   XLXI_7 : full_adder
      port map (a=>XLXI_7_a_openSignal,
                b=>XLXI_7_b_openSignal,
                c_in=>XLXN_10,
                c_out=>XLXN_27,
                s=>open);
   
   XLXI_8 : full_adder
      port map (a=>XLXI_8_a_openSignal,
                b=>XLXI_8_b_openSignal,
                c_in=>XLXN_27,
                c_out=>XLXN_23,
                s=>open);
   
   XLXI_9 : half_adder
      port map (a=>XLXN_23,
                b=>XLXI_9_b_openSignal,
                c_out=>open,
                s=>XLXN_25);
   
   XLXI_10 : half_adder
      port map (a=>XLXN_25,
                b=>XLXI_10_b_openSignal,
                c_out=>open,
                s=>XLXN_26);
   
   XLXI_11 : half_adder
      port map (a=>XLXN_26,
                b=>XLXI_11_b_openSignal,
                c_out=>open,
                s=>open);
   
end BEHAVIORAL;


