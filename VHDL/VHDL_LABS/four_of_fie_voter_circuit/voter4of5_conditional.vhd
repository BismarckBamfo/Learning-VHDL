----------------------------------------------------------------------------------
-- Company: 		 VHDL LABS	
-- Engineer: 		 Bismarck Bamfo Odoom
-- 
-- Create Date:    11:05:16 02/06/2020 
-- Design Name: 
-- Module Name:    voter4of5_conditional - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 	A 4 of 5 Voter Circuit.
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

entity voter4of5_conditional is
	Port(
			A, B, C, D, E: in std_logic;
			Y				 : out std_logic);
end voter4of5_conditional;

architecture Behavioral of voter4of5_conditional is
	
begin
	Y	<= '1' when (A='1' and B='1' and C='1' and D='1') else
			'1' when (A='1' and B='1' and C='1' and E='1') else
			'1' when (A='1' and C='1' and D='1' and E='1') else
			'1' when (A='1' and B='1' and D='1' and E='1') else
			'1' when (B='1' and C='1' and D='1' and E='1') else
			'0';


end Behavioral;

