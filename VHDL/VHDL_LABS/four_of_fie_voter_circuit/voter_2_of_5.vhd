----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:28:48 02/11/2020 
-- Design Name: 
-- Module Name:    voter_2_of_5 - voter_2_of_5_OP 
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

entity voter_2_of_5 is 
	Port(
			A, B, C, D, E	: in std_logic;
			Y					: out std_logic);
end voter_2_of_5;

architecture voter_2_of_5_OP of voter_2_of_5 is

begin
	Y	<=	( A and B ) or ( A and C ) or ( A and D ) or ( A and E ) or ( B and C ) or ( B and D) or ( B and E) or (C and D) or ( C and E ) or ( D and E );

end voter_2_of_5_OP;

