----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:05:50 11/23/2016 
-- Design Name: 
-- Module Name:    D_Flipflop_simbox - Behavioral 
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

entity D_Flipflop_simbox is
end D_Flipflop_simbox;

architecture Behavioral of D_Flipflop_simbox is
component flipflop_interface
port (
  D, CLK : in STD_LOGIC;
  Q, NOT_Q : out STD_LOGIC
);
end component;

signal d_test, clk_test, q_test, notq_test : STD_LOGIC := '0';
constant CLK_period : time := 10ns;
for flipflop_obj : flipflop_interface use entity work.DFlipFlop(Behavioral);

begin

flipflop_obj : flipflop_interface
port map(

  D => d_test,
  CLK => clk_test,
  Q => q_test,
  NOT_Q => notq_test
);

clk_test <= not clk_test after CLK_period;
d_test <= not d_test after 1.5*CLK_period;

end Behavioral;

