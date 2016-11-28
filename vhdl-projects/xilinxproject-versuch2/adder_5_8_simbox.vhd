----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:34:32 11/10/2016 
-- Design Name: 
-- Module Name:    adder_5_8_simbox - Behavioral 
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

entity adder_5_8_simbox is
end adder_5_8_simbox;

architecture test_adder_5_8 of adder_5_8_simbox is
component adder_5_8
	port (
		a	: in STD_LOGIC_VECTOR(4 downto 0);
		b	: in STD_LOGIC_VECTOR(7 downto 0);
		c	: out STD_LOGIC_VECTOR(8 downto 0)
	);
end component;

signal a_test : STD_LOGIC_VECTOR(4 downto 0);
signal b_test : STD_LOGIC_VECTOR(7 downto 0);
signal c_test : STD_LOGIC_VECTOR(8 downto 0);

begin
	test_adder_5_8 : adder_5_8
	port map (
		a => a_test,
		b => b_test,
		c => c_test
	);
	-- signals
	a_test <= "10101";
	b_test <= "00101010";
end test_adder_5_8;

