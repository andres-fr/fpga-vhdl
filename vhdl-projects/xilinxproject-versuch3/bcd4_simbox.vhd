-- Vhdl instantiation template created from schematic /home/afr/WS16-17/hwprak/vhdl-projects/xilinxproject-versuch3/BCD_3.sch - Thu Nov 24 11:11:46 2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module.
-- 2) To use this template to instantiate this component, cut-and-paste and then edit.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bcd4_simbox is
end bcd4_simbox;

architecture Behavioral of bcd4_simbox is
   COMPONENT BCD_4
   PORT( CLK	:	IN	STD_LOGIC; 
          BCD	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          CLEAR	:	OUT	STD_LOGIC; 
          RESET	:	IN	STD_LOGIC);
   END COMPONENT;
	

signal clear_test : STD_LOGIC;
signal clk_test, reset_test : STD_LOGIC := '0';
signal bcd_test : STD_LOGIC_VECTOR (3 downto 0) := "0000";
constant CLK_period : time := 10ns;
--for UUT : BCD_4 use entity work.BCD_4(Behavioral);

begin

   UUT: BCD_4 PORT MAP(
		CLK => clk_test, 
		BCD => bcd_test, 
		CLEAR => clear_test, 
		RESET => reset_test 
   );
	
clk_test <= not clk_test after CLK_period;
reset_test <= '1' after 250ns, '0' after 600ns;

end Behavioral;

