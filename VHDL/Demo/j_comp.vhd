----------------------------------------------------------------------------------
-- Company: ENOV8
-- Engineer: Shekinah W. Agbozo
-- 
-- Create Date:    12:54:00 02/25/2020 
-- Design Name: 
-- Module Name:    comparator - Behavioral 
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

entity j_comp is
	port(
			INPUT_1,INPUT_2 : in std_logic_vector (15 downto 0);
					 COMP_SEL : in std_logic_vector (2 downto 0);
							  Y : out std_logic);
	
end j_comp;

architecture Behavioral of j_comp is
signal ET, LST, LTET, GRT, GTET, LT5, GRT10 : std_logic; 
	begin
		ET 	<= '1' when(INPUT_1 = INPUT_2) else '0';
		LST 	<= '1' when (INPUT_1 < INPUT_2) else '0';
		LTET 	<= '1' when (INPUT_1 <= INPUT_2) else '0';
		GRT 	<= '1' when (INPUT_1 > INPUT_2) else '0';
		GTET 	<= '1' when (INPUT_1 >= INPUT_2) else '0';
		LT5 	<= '1' when (INPUT_1 < "0000000000000101") else '0';
		GRT10 <= '1' when (INPUT_1 > "0000000000001010") else'0';

			process(ET, LST, LTET, GRT, GTET, LT5, GRT10, COMP_SEL)
				begin
					case (COMP_SEL) is
						when "001" => Y <= ET;
						when "010" => Y <= LST;
						when "011" => Y <= LTET;
						when "100" => Y <= GRT;
						when "101" => Y <= GTET;
						when "110" => Y <= LT5;
						when "111" => Y <= GRT10;
						when others => Y <= '0';
					end case;
			end process;
end Behavioral;

