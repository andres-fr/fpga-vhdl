----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:57:19 10/26/2016 
-- Design Name: 
-- Module Name:    vorbereitungsaufgabe2 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

Library IEEE;
use ieee.std_logic_1164.all;

entity X_gate is
 port ( a : in STD_LOGIC;
        b : in std_LOGIC;
        c  : out std_logic);
end X_gate;

architecture dataflow of X_gate IS
begin
c <= A and b ;
END dataflow;