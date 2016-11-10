----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:47:16 10/26/2016 
-- Design Name: 
-- Module Name:    eq_gate_simbox - structure 
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

entity eq_gate_simbox is
end eq_gate_simbox;

architecture structure of eq_gate_simbox is

component eq_interface
port (
  a, b : in STD_LOGIC;
  c : out STD_LOGIC
);
end component;

signal a_test, b_test, c_test : STD_LOGIC;

---- configuration for assignment 5
for eq_class : eq_interface use entity work.eq_gate(dataflow);
---- configuration for assignment 6
-- for eq_class : eq_interface use entity work.eq_gate(eq_structure);

begin

eq_class : eq_interface
port map (
  a => a_test,
  b => b_test,
  c => c_test
);

a_test <= '0' after 0ns, '1' after 1ns, '0' after 3ns;
b_test <= '0' after 0ns, '1' after 2ns;

end structure;

