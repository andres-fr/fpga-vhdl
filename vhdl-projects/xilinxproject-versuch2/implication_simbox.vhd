----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:29:32 11/10/2016 
-- Design Name: 
-- Module Name:    implication_simbox - Behavioral 
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

entity implication_simbox is
end implication_simbox;

architecture Structure of implication_simbox is
component implication_interface
  port(
    a : in STD_LOGIC;
	 b : in STD_LOGIC;
	 c : OUT STD_LOGIC);
end component;

signal a_test, b_test, c_test : STD_LOGIC;
--for implication_elt:implication_interface use entity work.Implication_Gate(Dataflow);
--for implication_elt:implication_interface use entity work.Implication_Gate(Behavioral);
--for implication_elt:implication_interface use entity work.Implication_Gate(Structure);
for implication_elt:implication_interface use entity work.Implication_Gate(Structure_Hazard);

begin
implication_elt : implication_interface
port map (
  a => a_test,
  b => b_test,
  c => c_test
  );

--a_test <= '0' after 0ns, '1' after 2ns;
--b_test <= '0' after 0ns, '1' after 1ns, '0' after 2ns, '1' after 3ns;

a_test <= '1' after 0ns, '0' after 30ns;
b_test <= '1' after 0ns, '0' after 30ns;

end Structure;



