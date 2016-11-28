----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:41:53 11/10/2016 
-- Design Name: 
-- Module Name:    Mux_2_1 - Behavioral 
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

entity Mux_2_1 is
    Port ( d0 : in  STD_LOGIC;
           d1 : in  STD_LOGIC;
           s : in  STD_LOGIC;
           y : out  STD_LOGIC);
end Mux_2_1;


architecture Behavioral of Mux_2_1 is
begin
 P1 : process (s, d0, d1)
  begin
    if (s='0') then
      y <= d0;
	 else
	   y <= d1;
	 end if;
  end process P1; 
end Behavioral;





