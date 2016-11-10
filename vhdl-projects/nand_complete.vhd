-- Deklaration und Implementierung der NAND-Entity

Library IEEE;
use IEEE.std_logic_1164.all;

entity NAND_gate is
  port (
    a, b : in  STD_LOGIC;
    c    : out STD_LOGIC
  );
end NAND_gate;

Library IEEE;
use IEEE.std_logic_1164.all;

entity AND_gate is
	port (
		in0, in1 : in STD_LOGIC;
		out0 		: out STD_LOGIC
	);
end AND_gate;

architecture dataflow of AND_gate is
begin
	out0 <= in0 and in1;
end dataflow;

Library IEEE;
use IEEE.std_logic_1164.all;

entity INV_gate is
	port (
		in0  : in STD_LOGIC;
		out0 : out STD_LOGIC
	);
end INV_gate;
	
architecture dataflow of INV_gate is
begin
	out0 <= not in0;
end dataflow;

architecture dataflow of NAND_gate is
begin
  c <= not ( a and b );
end dataflow;

architecture behavior of NAND_gate is
begin
  P1:process(a,b)
  begin
    if (a = '1') and (b = '1') then 
      c <= '0';
    else
      c <= '1';
    end if;
  end process P1;
end behavior;

architecture structure of NAND_gate is

component AND_gate
  port (
    in0, in1 : in  STD_LOGIC;
    out0     : out  STD_LOGIC
  );
end component;

component INV_gate
  port (
    in0  : in  STD_LOGIC;
    out0 : out  STD_LOGIC
  );
end component;

signal And_out0, Inverter1_out0 : STD_LOGIC :='0';

begin
  And1 : AND_gate port map (a, b, And_out0);
  Inverter1 : INV_gate port map (And_out0, Inverter1_out0);
  
  -- Signal mapping
  c <= Inverter1_out0;
end structure;