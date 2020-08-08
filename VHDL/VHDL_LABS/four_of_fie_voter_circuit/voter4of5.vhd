----------------------------------------------------------------------------------
-- Company: 		 VHDL LABS
-- Engineer: 		 Bimarck Bamfo Odoom
-- 
-- Create Date:    07:50:58 02/02/2020 
-- Design Name: 	 voter circuit
-- Module Name:    voter4of5 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 	 A 4 of 5 Voter Cicuit
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

entity voter4of5 is
	Port(
			A, B, C, D, E	:	in std_logic;
			Y					:	out std_logic);
end voter4of5;

architecture Behavioral of voter4of5 is

begin
	Y	<= ( ( A and B and C and D) or ( A and B and C and E ) or ( A and C and D and E ) or ( B and C and D and E ) );

end Behavioral;

