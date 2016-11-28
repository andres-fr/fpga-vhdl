-- Vhdl instantiation template created from schematic /home/afr/WS16-17/hwprak/vhdl-projects/xilinxproject-versuch3/BCD_3.sch - Thu Nov 24 11:32:17 2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module.
-- 2) To use this template to instantiate this component, cut-and-paste and then edit.
--

   COMPONENT BCD_3
   PORT( CLK	:	IN	STD_LOGIC; 
          BCD	:	OUT	STD_LOGIC_VECTOR (2 DOWNTO 0); 
          CLEAR	:	OUT	STD_LOGIC; 
          RESET	:	IN	STD_LOGIC);
   END COMPONENT;

   UUT: BCD_3 PORT MAP(
		CLK => , 
		BCD => , 
		CLEAR => , 
		RESET => 
   );
