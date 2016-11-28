--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Stoppuhr.vhf
-- /___/   /\     Timestamp : 11/24/2016 11:48:22
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: /home/afr/Xilinx/14.7/ISE_DS/ISE/bin/lin64/unwrapped/sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl Stoppuhr.vhf -w /home/afr/WS16-17/hwprak/vhdl-projects/xilinxproject-versuch3/Stoppuhr.sch
--Design Name: Stoppuhr
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

entity BCD_3_MUSER_Stoppuhr is
   port ( CLK   : in    std_logic; 
          RESET : in    std_logic; 
          BCD   : out   std_logic_vector (2 downto 0); 
          CLEAR : out   std_logic);
end BCD_3_MUSER_Stoppuhr;

architecture BEHAVIORAL of BCD_3_MUSER_Stoppuhr is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity BCD_4_MUSER_Stoppuhr is
   port ( CLK   : in    std_logic; 
          RESET : in    std_logic; 
          BCD   : out   std_logic_vector (3 downto 0); 
          CLEAR : out   std_logic);
end BCD_4_MUSER_Stoppuhr;

architecture BEHAVIORAL of BCD_4_MUSER_Stoppuhr is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Stoppuhr is
   port ( CLK             : in    std_logic; 
          RESET           : in    std_logic; 
          Dezimalminuten  : out   std_logic_vector (2 downto 0); 
          Dezimalsekunden : out   std_logic_vector (2 downto 0); 
          Hundertstel     : out   std_logic_vector (3 downto 0); 
          Minuten         : out   std_logic_vector (3 downto 0); 
          Sekunden        : out   std_logic_vector (3 downto 0); 
          Zehntel         : out   std_logic_vector (3 downto 0));
end Stoppuhr;

architecture BEHAVIORAL of Stoppuhr is
   signal CLEAR                 : std_logic;
   signal XLXN_51               : std_logic;
   signal XLXN_52               : std_logic;
   signal XLXN_53               : std_logic;
   signal XLXN_54               : std_logic;
   signal XLXN_55               : std_logic;
   signal XLXN_56               : std_logic;
   signal XLXN_57               : std_logic;
   signal XLXN_58               : std_logic;
   signal XLXN_59               : std_logic;
   signal XLXN_60               : std_logic;
   signal XLXN_75               : std_logic;
   signal XLXN_76               : std_logic;
   signal XLXN_77               : std_logic;
   signal XLXN_78               : std_logic;
   signal XLXN_80               : std_logic;
   signal XLXN_102              : std_logic;
   signal XLXN_103              : std_logic;
   signal XLXN_106              : std_logic;
   signal Minuten_DUMMY         : std_logic_vector (3 downto 0);
   signal Sekunden_DUMMY        : std_logic_vector (3 downto 0);
   signal Dezimalsekunden_DUMMY : std_logic_vector (2 downto 0);
   signal Hundertstel_DUMMY     : std_logic_vector (3 downto 0);
   signal Zehntel_DUMMY         : std_logic_vector (3 downto 0);
   component BCD_4_MUSER_Stoppuhr
      port ( CLK   : in    std_logic; 
             RESET : in    std_logic; 
             CLEAR : out   std_logic; 
             BCD   : out   std_logic_vector (3 downto 0));
   end component;
   
   component And_gate
      port ( in0  : in    std_logic; 
             in1  : in    std_logic; 
             out0 : out   std_logic);
   end component;
   
   component BCD_3_MUSER_Stoppuhr
      port ( CLK   : in    std_logic; 
             RESET : in    std_logic; 
             BCD   : out   std_logic_vector (2 downto 0); 
             CLEAR : out   std_logic);
   end component;
   
   component NAND_gate
      port ( a : in    std_logic; 
             b : in    std_logic; 
             c : out   std_logic);
   end component;
   
   component INV_gate
      port ( in0  : in    std_logic; 
             out0 : out   std_logic);
   end component;
   
begin
   Dezimalsekunden(2 downto 0) <= Dezimalsekunden_DUMMY(2 downto 0);
   Hundertstel(3 downto 0) <= Hundertstel_DUMMY(3 downto 0);
   Minuten(3 downto 0) <= Minuten_DUMMY(3 downto 0);
   Sekunden(3 downto 0) <= Sekunden_DUMMY(3 downto 0);
   Zehntel(3 downto 0) <= Zehntel_DUMMY(3 downto 0);
   XLXI_2 : BCD_4_MUSER_Stoppuhr
      port map (CLK=>XLXN_103,
                RESET=>XLXN_102,
                BCD(3 downto 0)=>Hundertstel_DUMMY(3 downto 0),
                CLEAR=>XLXN_51);
   
   XLXI_3 : BCD_4_MUSER_Stoppuhr
      port map (CLK=>XLXN_75,
                RESET=>XLXN_102,
                BCD(3 downto 0)=>Zehntel_DUMMY(3 downto 0),
                CLEAR=>XLXN_56);
   
   XLXI_4 : And_gate
      port map (in0=>Hundertstel_DUMMY(0),
                in1=>Hundertstel_DUMMY(3),
                out0=>XLXN_75);
   
   XLXI_6 : BCD_4_MUSER_Stoppuhr
      port map (CLK=>XLXN_76,
                RESET=>XLXN_102,
                BCD(3 downto 0)=>Sekunden_DUMMY(3 downto 0),
                CLEAR=>XLXN_52);
   
   XLXI_7 : BCD_3_MUSER_Stoppuhr
      port map (CLK=>XLXN_78,
                RESET=>XLXN_102,
                BCD(2 downto 0)=>Dezimalsekunden_DUMMY(2 downto 0),
                CLEAR=>XLXN_57);
   
   XLXI_8 : And_gate
      port map (in0=>Zehntel_DUMMY(3),
                in1=>Zehntel_DUMMY(0),
                out0=>XLXN_76);
   
   XLXI_9 : And_gate
      port map (in0=>Sekunden_DUMMY(0),
                in1=>Sekunden_DUMMY(3),
                out0=>XLXN_78);
   
   XLXI_10 : BCD_4_MUSER_Stoppuhr
      port map (CLK=>XLXN_80,
                RESET=>XLXN_102,
                BCD(3 downto 0)=>Minuten_DUMMY(3 downto 0),
                CLEAR=>XLXN_53);
   
   XLXI_11 : BCD_3_MUSER_Stoppuhr
      port map (CLK=>XLXN_77,
                RESET=>XLXN_102,
                BCD(2 downto 0)=>Dezimalminuten(2 downto 0),
                CLEAR=>XLXN_58);
   
   XLXI_12 : And_gate
      port map (in0=>Minuten_DUMMY(0),
                in1=>Minuten_DUMMY(3),
                out0=>XLXN_77);
   
   XLXI_13 : And_gate
      port map (in0=>Dezimalsekunden_DUMMY(2),
                in1=>Dezimalsekunden_DUMMY(0),
                out0=>XLXN_80);
   
   XLXI_14 : And_gate
      port map (in0=>XLXN_51,
                in1=>XLXN_52,
                out0=>XLXN_54);
   
   XLXI_15 : And_gate
      port map (in0=>XLXN_54,
                in1=>XLXN_53,
                out0=>XLXN_55);
   
   XLXI_16 : And_gate
      port map (in0=>XLXN_56,
                in1=>XLXN_57,
                out0=>XLXN_59);
   
   XLXI_17 : And_gate
      port map (in0=>XLXN_58,
                in1=>XLXN_55,
                out0=>XLXN_60);
   
   XLXI_18 : And_gate
      port map (in0=>XLXN_59,
                in1=>XLXN_60,
                out0=>CLEAR);
   
   XLXI_20 : NAND_gate
      port map (a=>RESET,
                b=>CLEAR,
                c=>XLXN_106);
   
   XLXI_21 : INV_gate
      port map (in0=>XLXN_106,
                out0=>XLXN_102);
   
   XLXI_22 : And_gate
      port map (in0=>CLK,
                in1=>XLXN_106,
                out0=>XLXN_103);
   
end BEHAVIORAL;

