library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity DFlipFlop is
    Port ( D : in  STD_LOGIC:= '0';
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC:= '0';
           NOT_Q : out  STD_LOGIC:= '1');
end DFlipFlop;

architecture Behavioral of DFlipFlop is
	begin
		process (CLK)
		begin
			if falling_edge(CLK) then
				Q <= D;
				NOT_Q <= not D;
			end if;
		end process;
end Behavioral;

