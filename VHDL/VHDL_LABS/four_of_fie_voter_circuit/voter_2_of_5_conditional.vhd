----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:34:23 02/11/2020 
-- Design Name: 
-- Module Name:    voter_2_of_5_conditional - voter_2_of_5_cdnOP 
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

entity voter_2_of_5_conditional is
	Port(
			A, B, C, D, E	: in std_logic;
			Y					: out std_logic);
end voter_2_of_5_conditional;

architecture voter_2_of_5_cdnOP of voter_2_of_5_conditional is
signal ip_sig : std_logic_vector(4 downto 0);
begin
	ip_sig <= A & B & C & D & E;

	Y <= '0' when ip_sig="00000" else
		  '0' when ip_sig="00001" else
		  '0' when ip_sig="00010" else
		  '0' when ip_sig="00100" else
		  '0' when ip_sig="01000" else
		  '0' when ip_sig="10000" else
		  '1';
end voter_2_of_5_cdnOP;

