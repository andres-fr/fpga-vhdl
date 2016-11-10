----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:43:25 10/26/2016 
-- Design Name: 
-- Module Name:    eq_gate - dataflow 
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

entity eq_gate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end eq_gate;

architecture dataflow of eq_gate is
begin
c <= (a and b) or ((not a) and (not b));
end dataflow;


architecture eq_structure of eq_gate is

component mux_interface
port (
  d0 : in STD_LOGIC;
  d1 : in STD_LOGIC;
  d2 : in STD_LOGIC;
  d3 : in STD_LOGIC;
  s0 : in STD_LOGIC;
  s1 : in STD_LOGIC;
  y : out STD_LOGIC
);
end component;

for mux_class : mux_interface use entity work.mux_gate(Behavioral);

begin

mux_class : mux_interface
port map (
  d0 => '1',
  d1 => '0',
  d2 => '0',
  d3 => '1',
  s0 => a,
  s1 => b,
  y => c
);

end eq_structure;



