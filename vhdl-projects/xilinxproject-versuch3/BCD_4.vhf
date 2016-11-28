--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : BCD_4.vhf
-- /___/   /\     Timestamp : 11/24/2016 11:32:48
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl /home/afr/WS16-17/hwprak/vhdl-projects/xilinxproject-versuch3/BCD_4.vhf -w /home/afr/WS16-17/hwprak/vhdl-projects/xilinxproject-versuch3/BCD_4.sch
--Design Name: BCD_4
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

entity BCD_4 is
   port ( CLK   : in    std_logic; 
          RESET : in    std_logic; 
          BCD   : out   std_logic_vector (3 downto 0); 
          CLEAR : out   std_logic);
end BCD_4;

architecture BEHAVIORAL of BCD_4 is
   signal XLXN_3      : std_logic;
   signal XLXN_5      : std_logic;
   signal XLXN_10     : std_logic;
   signal XLXN_11     : std_logic;
   signal XLXN_41     : std_logic;
   signal XLXN_54     : std_logic;
   signal XLXN_55     : std_logic;
   signal XLXN_56     : std_logic;
   signal XLXN_61     : std_logic;
   signal XLXN_77     : std_logic;
   signal XLXN_79     : std_logic;
   signal CLEAR_DUMMY : std_logic;
   signal BCD_DUMMY   : std_logic_vector (3 downto 0);
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
   BCD(3 downto 0) <= BCD_DUMMY(3 downto 0);
   CLEAR <= CLEAR_DUMMY;
   XLXI_1 : DFlipFlop
      port map (CLK=>CLK,
                D=>XLXN_56,
                NOT_Q=>XLXN_54,
                Q=>BCD_DUMMY(0));
   
   XLXI_2 : DFlipFlop
      port map (CLK=>BCD_DUMMY(0),
                D=>XLXN_5,
                NOT_Q=>XLXN_3,
                Q=>BCD_DUMMY(1));
   
   XLXI_3 : DFlipFlop
      port map (CLK=>BCD_DUMMY(1),
                D=>XLXN_79,
                NOT_Q=>XLXN_79,
                Q=>BCD_DUMMY(2));
   
   XLXI_4 : DFlipFlop
      port map (CLK=>BCD_DUMMY(0),
                D=>XLXN_10,
                NOT_Q=>XLXN_11,
                Q=>BCD_DUMMY(3));
   
   XLXI_5 : And_gate
      port map (in0=>XLXN_11,
                in1=>XLXN_3,
                out0=>XLXN_5);
   
   XLXI_6 : And_gate
      port map (in0=>BCD_DUMMY(1),
                in1=>BCD_DUMMY(2),
                out0=>XLXN_10);
   
   XLXI_7 : And_gate
      port map (in0=>XLXN_54,
                in1=>XLXN_3,
                out0=>XLXN_77);
   
   XLXI_8 : And_gate
      port map (in0=>XLXN_79,
                in1=>XLXN_77,
                out0=>XLXN_41);
   
   XLXI_25 : And_gate
      port map (in0=>XLXN_11,
                in1=>XLXN_41,
                out0=>CLEAR_DUMMY);
   
   XLXI_27 : And_gate
      port map (in0=>XLXN_55,
                in1=>XLXN_54,
                out0=>XLXN_56);
   
   XLXI_28 : And_gate
      port map (in0=>RESET,
                in1=>CLEAR_DUMMY,
                out0=>XLXN_61);
   
   XLXI_29 : NAND_gate
      port map (a=>XLXN_61,
                b=>XLXN_61,
                c=>XLXN_55);
   
end BEHAVIORAL;


