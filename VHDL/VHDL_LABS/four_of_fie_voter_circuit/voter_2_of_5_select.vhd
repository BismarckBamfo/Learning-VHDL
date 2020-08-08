----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:52:57 02/11/2020 
-- Design Name: 
-- Module Name:    voter_2_of_5_select - voter_2_of_5_OP 
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

entity voter_2_of_5_select is
	Port(
			A, B, C, D, E:	in  std_logic;
			Y				 : out std_logic);
end voter_2_of_5_select;

architecture voter_2_of_5_OP of voter_2_of_5_select is
signal ip_sig : std_logic_vector(4 downto 0);
begin
ip_sig <= A & B & C & D & E;
	with ip_sig select
		

	Y <= '0' when "00000",
		  '0' when "00001", 
		  '0' when "00010", 
		  '0' when "00100", 
		  '0' when "01000",
		  '0' when "10000",
		  '1' when others;
		


end voter_2_of_5_OP;

