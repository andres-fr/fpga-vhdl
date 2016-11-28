--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : BCD_3.vhf
-- /___/   /\     Timestamp : 11/24/2016 11:16:35
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl /home/afr/WS16-17/hwprak/vhdl-projects/xilinxproject-versuch3/BCD_3.vhf -w /home/afr/WS16-17/hwprak/vhdl-projects/xilinxproject-versuch3/BCD_3.sch
--Design Name: BCD_3
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

entity BCD_3 is
   port ( CLK   : in    std_logic; 
          RESET : in    std_logic; 
          BCD   : out   std_logic_vector (2 downto 0); 
          CLEAR : out   std_logic);
end BCD_3;

architecture BEHAVIORAL of BCD_3 is
   signal XLXN_11     : std_logic;
   signal XLXN_12     : std_logic;
   signal XLXN_13     : std_logic;
   signal XLXN_14     : std_logic;
   signal XLXN_15     : std_logic;
   signal XLXN_24     : std_logic;
   signal XLXN_25     : std_logic;
   signal XLXN_26     : std_logic;
   signal CLEAR_DUMMY : std_logic;
   signal BCD_DUMMY   : std_logic_vector (2 downto 0);
   component DFlipFlop
      port ( D     : in    std_logic; 
             Q     : out   std_logic; 
             NOT_Q : out   std_logic; 
             CLK   : in    std_logic);
   end component;
   
   component And_gate
      port ( in0  : in    std_logic; 
             in1  : in    std_logic; 
             out0 : out   std_logic);
   end component;
   
   component NAND_gate
      port ( a : in    std_logic; 
             b : in    std_logic; 
             c : out   std_logic);
   end component;
   
begin
   BCD(2 downto 0) <= BCD_DUMMY(2 downto 0);
   CLEAR <= CLEAR_DUMMY;
   XLXI_1 : DFlipFlop
      port map (CLK=>CLK,
                D=>XLXN_26,
                NOT_Q=>XLXN_14,
                Q=>BCD_DUMMY(0));
   
   XLXI_2 : DFlipFlop
      port map (CLK=>BCD_DUMMY(0),
                D=>XLXN_15,
                NOT_Q=>XLXN_13,
                Q=>BCD_DUMMY(1));
   
   XLXI_3 : DFlipFlop
      port map (CLK=>BCD_DUMMY(0),
                D=>BCD_DUMMY(1),
                NOT_Q=>XLXN_12,
                Q=>BCD_DUMMY(2));
   
   XLXI_5 : And_gate
      port map (in0=>XLXN_13,
                in1=>XLXN_14,
                out0=>XLXN_11);
   
   XLXI_6 : And_gate
      port map (in0=>XLXN_12,
                in1=>XLXN_11,
                out0=>CLEAR_DUMMY);
   
   XLXI_7 : And_gate
      port map (in0=>XLXN_12,
                in1=>XLXN_13,
                out0=>XLXN_15);
   
   XLXI_8 : And_gate
      port map (in0=>XLXN_25,
                in1=>XLXN_14,
                out0=>XLXN_26);
   
   XLXI_9 : And_gate
      port map (in0=>RESET,
                in1=>CLEAR_DUMMY,
                out0=>XLXN_24);
   
   XLXI_10 : NAND_gate
      port map (a=>XLXN_24,
                b=>XLXN_24,
                c=>XLXN_25);
   
end BEHAVIORAL;

