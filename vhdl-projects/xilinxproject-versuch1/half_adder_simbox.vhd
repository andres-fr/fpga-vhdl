----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:44:34 10/27/2016 
-- Design Name: 
-- Module Name:    half_adder_simbox - Behavioral 
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

entity half_adder_simbox is
end half_adder_simbox;

architecture Behavioral of half_adder_simbox is
component adder_interface
port (
  a : in STD_LOGIC;
  b : in STD_LOGIC;
  s : out STD_LOGIC;
  c_out : out STD_LOGIC
);
end component;

signal a_test, b_test, s_test, c_out_test : STD_LOGIC;
for adder_class : adder_interface use entity work.half_adder(dataflow);


begin

adder_class : adder_interface
port map (
  a => a_test,
  b => b_test,
  s => s_test,
  c_out => c_out_test
);

a_test <= '0' after 0ns, '1' after 2ns, '0' after 4ns, '1' after 6ns;
b_test <= '0' after 0ns, '1' after 4ns;


end Behavioral;


