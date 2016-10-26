----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:51:39 10/26/2016 
-- Design Name: 
-- Module Name:    mux_gate - Behavioral 
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

entity mux_gate is
    Port ( d0 : in  STD_LOGIC;
           d1 : in  STD_LOGIC;
           d2 : in  STD_LOGIC;
           d3 : in  STD_LOGIC;
           s0 : in  STD_LOGIC;
           s1 : in  STD_LOGIC;
           y : out  STD_LOGIC);
end mux_gate;

architecture Behavioral of mux_gate is

begin
  P1 : process (s0, s1, d0, d1, d2, d3)
  begin
    if (s0='0') and (s1='0') then
      y <= d0;
	 elsif (s0='0') and (s1='1') then
	   y <= d1;
    elsif (s0='1') and (s1='0') then
	   y <= d2;
	 else
	   y <= d3;
	 end if;
  end process P1; 
end Behavioral;

