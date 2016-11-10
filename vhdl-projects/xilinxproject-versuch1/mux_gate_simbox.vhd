----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:58:09 10/26/2016 
-- Design Name: 
-- Module Name:    mux_gate_simbox - Behavioral 
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

entity mux_gate_simbox is
end mux_gate_simbox;

architecture test_mux of mux_gate_simbox is

component mux
  port (
    d0,d1,d2,d3,s0,s1 : in  STD_LOGIC;
    y   : out STD_LOGIC
  );
end component;

signal d0_test, d1_test, d2_test, d3_test, s0_test, s1_test, y_test : STD_LOGIC;

for my_test_mux : mux use entity work.mux_gate(Behavioral);

begin

  my_test_mux : mux
  port map (
    d0 => d0_test,
	 d1 => d1_test,
	 d2 => d2_test,
	 d3 => d3_test,
	 s0 => s0_test,
	 s1 => s1_test,
    y => y_test	 
  );
  
  d0_test <= '0' after 0ns;
  d1_test <= '1' after 0ns;
  d2_test <= '0' after 0ns, '1' after 1ns, '0' after 2ns, '1' after 3ns, 
             '0' after 4ns, '1' after 5ns, '0' after 6ns, '1' after 7ns,
				 '0' after 8ns, '1' after 9ns, '0' after 10ns, '1' after 11ns,
				 '0' after 12ns, '1' after 13ns, '0' after 14ns;
  d3_test <= '0' after 0ns, '1' after 2ns, '0' after 4ns, '1' after 6ns,
             '0' after 8ns, '1' after 10ns, '0' after 12ns, '1' after 14ns;
  
  s0_test <= '0' after 0ns, '1' after 6ns;
  s1_test <= '0' after 0ns, '1' after 3ns, '0' after 6ns, '1' after 10ns, '0' after 14ns;
  
end test_mux;

