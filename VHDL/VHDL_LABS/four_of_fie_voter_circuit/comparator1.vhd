----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:15:46 02/13/2020 
-- Design Name: 
-- Module Name:    comparator1 - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity comparator1 is
	Port(
			Input_1, Input_2	:	in		std_logic_vector(15 downto 0);
			SEL					: 	in		std_logic_vector(2 downto 0);
			Y						: 	out 	std_logic);
end comparator1;

architecture Behavioral of comparator1 is

begin
	
		Y <= '1' when ( (Input_1 = Input_2) 	and SEL="000") else
			  '1' when ( (Input_1 < Input_2) 	and SEL="001") else
			  '1' when ( (Input_1 <= Input_2)	and SEL="010") else
			  '1' when ( (Input_1 > Input_2) 	and SEL="011") else
			  '1' when ( (Input_1 >= Input_2) 	and SEL="100") else
			  '1' when ( (Input_1 < x"0005") 	and SEL="101") else
			  '1' when ( (Input_1 > x"000a") 	and SEL="110") else
			  '0';


end Behavioral;

