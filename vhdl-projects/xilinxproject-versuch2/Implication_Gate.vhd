----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:24:37 11/10/2016 
-- Design Name: 
-- Module Name:    Implication_Gate - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Implication_Gate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end Implication_Gate;

architecture Dataflow of Implication_Gate is
begin
  c <= (not a) or b;
end Dataflow;





architecture Behavioral of Implication_Gate is
begin
  P1:process(a,b)
  begin
    if (a='0') then
	   c <= '1';
	 else
	   c <= b;
	 end if;
  end process P1;
end Behavioral;





architecture Structure of Implication_Gate is
-- DECLARE COMPONENTS
component or_interface
  port (
    in0 : in STD_LOGIC;
	 in1 : in STD_LOGIC;
	 out0 : out STD_LOGIC);
end component;
component not_interface
  port (
    in0 : in STD_LOGIC;
	 out0 : out STD_LOGIC);
end component;

-- CONFIGURE IMPLEMENTATION
signal or_out, not_out : STD_LOGIC;
for not_elt:not_interface use entity work.NOT_Gate(Dataflow);
for or_elt:or_interface use entity work.OR_Gate(Dataflow);

begin
-- MAKE INSTANCES OF THE COMPONENTS
not_elt : not_interface port map (a, not_out);
or_elt : or_interface port map (not_out, b, or_out);
-- SIGNAL MAPPING
c <= or_out;
end Structure;


architecture Structure_Hazard of Implication_Gate is
-- DECLARE COMPONENTS
component or_interface
  port (
    in0 : in STD_LOGIC;
	 in1 : in STD_LOGIC;
	 out0 : out STD_LOGIC);
end component;
component not_interface
  port (
    in0 : in STD_LOGIC;
	 out0 : out STD_LOGIC);
end component;

-- CONFIGURE
signal or_out, not_out : STD_LOGIC;
for not_elt:not_interface use entity work.NOT_Gate(Dataflow_10ns);
for or_elt:or_interface use entity work.OR_Gate(Dataflow_10ns);

begin
-- MAKE INSTANCES OF THE COMPONENTS
not_elt : not_interface port map (a, not_out);
or_elt : or_interface port map (not_out, b, or_out);
-- SIGNAL MAPPING
c <= or_out;

-- Diese Struktur ist Hazard-behaftet:
-- 1) not_out hat eine Verzögerung von 10ns
-- 2) or_out bekommt einerseits b mit 0ns Verz. und not_out mit 10ns Verz.
-- 3) or_out kommt erst nach 10ns, mit folgender Logik:
--    U X 0 1
--   ________
-- U| U U U 1
-- X| U X X 1
-- 0| U X 0 1
-- 1| 1 1 1 1



end Structure_Hazard;


