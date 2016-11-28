----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:18:24 11/10/2016 
-- Design Name: 
-- Module Name:    mux_implication_simbox - Behavioral 
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

entity mux_implication_simbox is
end mux_implication_simbox;

architecture Behavioral of mux_implication_simbox is

component mux
  port (
    d0,d1,s : in  STD_LOGIC;
    y   : out STD_LOGIC
  );
end component;

signal a_test, b_test, y_test : STD_LOGIC;
for my_test_mux : mux use entity work.mux_2_1_delay(Behavioral);

begin
  my_test_mux : mux
  port map (
    d0 => '1',
	 d1 => b_test,
	 s => a_test,
    y => y_test	 
  );
  
  
--a_test <= '0' after 0ns, '1' after 2ns;
--b_test <= '0' after 0ns, '1' after 1ns, '0' after 2ns, '1' after 3ns;
a_test <= '1' after 0ns, '0' after 1ns;
b_test <= '1' after 0ns, '0' after 1ns;

end Behavioral;

