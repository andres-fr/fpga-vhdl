----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:43:27 11/10/2016 
-- Design Name: 
-- Module Name:    OR_Gate - Behavioral 
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

entity OR_Gate is
    Port ( in0 : in  STD_LOGIC;
           in1 : in  STD_LOGIC;
           out0 : out  STD_LOGIC);
end OR_Gate;

architecture Dataflow of OR_Gate is
begin
out0 <= in0 or in1;
end Dataflow;

architecture Dataflow_10ns of OR_Gate is
begin
out0 <= transport (in0 or in1) after 10ns;
end Dataflow_10ns;
