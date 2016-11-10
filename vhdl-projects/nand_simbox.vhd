-- Deklaration und Implementierung der Simulationsumgebung

Library IEEE;
use IEEE.std_logic_1164.all;

-- Die SimBox ist die "ganze Welt", es existieren
-- keine Ein- und Ausgaenge
entity SimBox is
end SimBox;


architecture Test_NAND of SimBox is

-- Hier muss das NAND-Gatter mit
-- den gleichen Ports und Portnamen
-- wie in der Entity als Komponente deklariert werden

component NAND_gate
  port (
    a,b : in  STD_LOGIC;
    c   : out STD_LOGIC
  );
end component;

-- hier werden die Signale deklariert,
-- die in der Simbox verwendet werden

signal a_test, b_test, c_test: STD_LOGIC;

--Konfiguration der SimBox
-- hier werden die verwendeten Architectures der Entity-Instanzen
-- angegeben. Bei nur einer Architektur je Entity
-- ist dieser Block !OPTIONAL!

for my_NAND_gate : NAND_gate use entity work.NAND_gate(structure);

begin
  
  -- Dies ist die Instanziierung von
  -- my_NAND_gate der "Klasse" NAND_gate
  
  my_NAND_gate : NAND_gate
  port map (
    a => a_test,     -- explizite Zuordnung der Testsignale
    b => b_test,     -- zu den Ports der Entity
    c => c_test
  );
  
  -- Hier werden den Signalen konkrete Werte zugewiesen.
  -- Die Zeiten beziehen sich auf den Start der Simulation.
  a_test <=
  '0' after 0 ns,
  --'0' after 2 ns,  -- nicht notwendig, ein Signal behaelt
                     -- seinen Wert bis ein neuer zugewiesen wird
  '1' after 4 ns;
  
  b_test <=
  '0' after 0 ns,
  '1' after 2 ns,
  '0' after 4 ns,
  '1' after 6 ns;
  
end Test_NAND;