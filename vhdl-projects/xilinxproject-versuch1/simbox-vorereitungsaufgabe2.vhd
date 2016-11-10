----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:03:36 10/26/2016 
-- Design Name: 
-- Module Name:    simbox-vorereitungsaufgabe2 - Behavioral 
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

Library IEEE;
use ieee.std_logic_1164.all;

entity SimBox1234 is
end SimBox1234;


architecture Test_X of SimBox1234 is

component X_gate
port
(
a : in STD_LOGIC;
b : in STD_LOGIC;
c : out STD_LOGIC
);
end component;

signal a_test, b_test, c_test : STD_logic;

for my_X_gate : x_gate use entity work.X_gate(dataflow);

begin

my_X_gate : X_gate
port map
(
a => a_test ,
b => b_test ,
c => c_test
);

a_test <=
  '0' after 0 ns ,
  '1' after 2 ns ;

b_test <=
  '0' after 0 ns ,
  '1' after 4 ns ;

end Test_X;

