----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:27:46 11/10/2016 
-- Design Name: 
-- Module Name:    adder_5_8 - Behavioral 
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


entity adder_5_8 is
	port (
		a : in STD_LOGIC_VECTOR(4 downto 0);
		b : in STD_LOGIC_VECTOR(7 downto 0);
		c : out STD_LOGIC_VECTOR(8 downto 0)
	);
end adder_5_8;

-- deklariere 4 volladdierer und 3 halbaddierer als components
-- weise die einzelnen bits der vektoren den eingängen der halb und volladdierer zu

architecture structure of adder_5_8 is

component half_adder
	port (
		a, b		:	in	STD_LOGIC;
		c_out, s	: out STD_LOGIC
	);
end component;

component full_adder
	port (
		a, b, c_in	:	in	STD_LOGIC;
		c_out, s		:	out STD_LOGIC
	);
end component;

signal hc_out, h_s, f_s, f_cout : STD_LOGIC;
signal tesths, testfs : STD_LOGIC;
signal testhcout, testhcout1, testhcout2, testhcout3	: STD_LOGIC;
signal testfcout, testfcout1, testfcout2, testfcout3	: STD_LOGIC;

begin
	s0	:	half_adder 
		port map (
			a => a(0),
			b => b(0),
			c_out => testhcout,
			s => c(0)
		);
	s1 :	full_adder
		port map (
			a => a(1),
			b => b(1),
			c_in => testhcout,
			c_out => testfcout,
			s => c(1)
		);
	s2	: 	full_adder
		port map (
			a => a(2),
			b => b(2),
			c_in => testfcout,
			c_out => testfcout1,
			s => c(2)
		);
	s3	: full_adder
		port map (
			a => a(3),
			b => b(3),
			c_in => testfcout1,
			c_out => testfcout2,
			s => c(3)
		);
	s4	: full_adder
		port map (
			a => a(4),
			b => b(4),
			c_in => testfcout2,
			c_out => testfcout3,
			s => c(4)
		);
	s5	: half_adder
		port map (
			a => testfcout3,
			b => b(5),
			c_out => testhcout1,
			s => c(5)
		);
	s6	: half_adder
		port map (
			a => testhcout1,
			b => b(6),
			c_out => testhcout2,
			s => c(6)
		);
	s7	: half_adder
		port map (
			a => testhcout2,
			b => b(7),
			c_out => c(8),
			s => c(7)
		);
end structure;



