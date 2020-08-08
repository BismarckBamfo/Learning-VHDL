----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:30:48 02/13/2020 
-- Design Name: 
-- Module Name:    comparator_s - Behavioral 
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

entity comparator_s is
Port(
			Input_1, Input_2	:	in		std_logic_vector(15 downto 0);
			SEL					: 	in		std_logic_vector(2 downto 0);
			Y						: 	out 	boolean);
end comparator_s;

architecture Behavioral of comparator_s is

begin
with SEL select	
	Y <=		 (Input_1 = Input_2) 	when  "000",
			    (Input_1 < Input_2) 	when  "001",
			    (Input_1 <= Input_2)	when  "010",
			    (Input_1 > Input_2) 	when  "011",
			    (Input_1 >= Input_2) 	when  "100",
			    (Input_1 < x"0005") 	when  "101",
			    (Input_1 > x"000a") 	when  "110",
				 false when others;


end Behavioral;

