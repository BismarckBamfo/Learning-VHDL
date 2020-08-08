----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:01:54 02/07/2020 
-- Design Name: 
-- Module Name:    voter4_5__2 - Behavioral 
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

entity voter4_5__2 is
	port(a,b,c,d,e	: IN STD_logic;
					 y	: out std_logic
					 );
					 
end voter4_5__2;

architecture Behavioral of voter4_5__2 is
	signal Input : std_logic_vector(4 downto 0);
begin
	Input <= a  & b & c & d & e;
	
	with Input 
		select y<= '1' when "11110",
					  '1' when "11101",
					  '1' when "11011",
					  '1' when "10111",
					  '1' when "01111",
					  '1' when "11111",
					  '0' when others;
					  

end Behavioral;

