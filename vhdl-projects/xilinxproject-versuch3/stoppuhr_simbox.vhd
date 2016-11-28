----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:52:01 11/24/2016 
-- Design Name: 
-- Module Name:    stoppuhr_simbox - Behavioral 
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

entity stoppuhr_simbox is
end stoppuhr_simbox;

architecture Behavioral of stoppuhr_simbox is

-- interface
COMPONENT Stoppuhr
   PORT( Hundertstel	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          Zehntel	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          Sekunden	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          Dezimalsekunden	:	OUT	STD_LOGIC_VECTOR (2 DOWNTO 0); 
          Minuten	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          Dezimalminuten	:	OUT	STD_LOGIC_VECTOR (2 DOWNTO 0); 
          RESET	:	IN	STD_LOGIC; 
          CLK	:	IN	STD_LOGIC);
   END COMPONENT;

-- signale
signal hundertstel_test, zehntel_test, sekunden_test, minuten_test : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
signal dezimalsekunden_test, dezimalminuten_test : STD_LOGIC_VECTOR(2 DOWNTO 0) := "000";
signal clk_test, reset_test : STD_LOGIC := '0';
constant CLK_period : time := 1ns;
-- config
--for UUT : Stoppuhr use entity work.Stoppuhr(Behavioral);
   

begin
-- instance
UUT: Stoppuhr PORT MAP(
		Hundertstel => hundertstel_test, 
		Zehntel => zehntel_test, 
		Sekunden => sekunden_test, 
		Dezimalsekunden => dezimalsekunden_test, 
		Minuten => minuten_test, 
		Dezimalminuten => dezimalminuten_test, 
		RESET => reset_test, 
		CLK => clk_test
   );

clk_test <= not clk_test after CLK_period;
reset_test <= '1' after 200ns;

end Behavioral;

