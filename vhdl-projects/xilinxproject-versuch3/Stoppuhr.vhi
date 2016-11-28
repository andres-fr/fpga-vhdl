-- Vhdl instantiation template created from schematic /home/afr/WS16-17/hwprak/vhdl-projects/xilinxproject-versuch3/Stoppuhr.sch - Thu Nov 24 12:59:18 2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module.
-- 2) To use this template to instantiate this component, cut-and-paste and then edit.
--

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

   UUT: Stoppuhr PORT MAP(
		Hundertstel => , 
		Zehntel => , 
		Sekunden => , 
		Dezimalsekunden => , 
		Minuten => , 
		Dezimalminuten => , 
		RESET => , 
		CLK => 
   );
