----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:44:05 11/10/2016 
-- Design Name: 
-- Module Name:    and5_simbox - Behavioral 
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

entity and5_simbox is
end and5_simbox;

architecture Behavioral of and5_simbox is
COMPONENT AND_5
   PORT( XLXN_5	:	IN	STD_LOGIC; 
          XLXN_6	:	IN	STD_LOGIC; 
          XLXN_7	:	IN	STD_LOGIC; 
          XLXN_8	:	IN	STD_LOGIC; 
          XLXN_9	:	IN	STD_LOGIC; 
          XLXN_10	:	OUT	STD_LOGIC);
   END COMPONENT;
	
	
signal test5, test6, test7, test8, test9, test10 : STD_LOGIC;
for a5 : AND_5 use entity work.AND_5(BEHAVIORAL);
begin
   a5: AND_5 PORT MAP(
		XLXN_5 => test5, 
		XLXN_6 => test6, 
		XLXN_7 => test7, 
		XLXN_8 => test8, 
		XLXN_9 => test9,
		XLXN_10 => test10);
		
		
test6 <= '1' after 0ns;
test7 <= '1' after 0ns;
test8 <= '1' after 0ns;
test9 <= '1' after 0ns, '0' after 100ns;
test5 <= '0' after 0ns, '1' after 100ns;


end Behavioral;
