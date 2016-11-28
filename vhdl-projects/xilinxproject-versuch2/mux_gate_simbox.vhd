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
    d0,d1,s : in  STD_LOGIC;
    y   : out STD_LOGIC
  );
end component;
signal d0_test, d1_test, s_test, y_test : STD_LOGIC;
--for my_test_mux : mux use entity work.mux_2_1(Behavioral);
for my_test_mux : mux use entity work.mux_2_1_delay(Behavioral);
begin
  my_test_mux : mux
  port map (
    d0 => d0_test,
	 d1 => d1_test,
	 s => s_test,
    y => y_test	 
  );
  
  d0_test <= '0' after 0ns;
  d1_test <= '1' after 0ns;
  s_test <= '0' after 0ns, '1' after 1ns;
  
end test_mux;