----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:29:06 02/07/2020 
-- Design Name: 
-- Module Name:    Voter4_5 - Behavioral 
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

entity Voter4_5 is
	PORT (
				a,b,c,d,e : in std_logic;
				y		    : out std_logic
			);
end Voter4_5;

architecture Behavioral of Voter4_5 is

begin
	y <= '1' when ( a = '1' and b='1' and c='1' and d='1' and e='0') else
		  '1' when ( a = '1' and b='1' and c='1' and d='0' and e='1') else
		  '1' when ( a = '1' and b='1' and c='0' and d='1' and e='1') else
		  '1' when ( a = '1' and b='0' and c='1' and d='1' and e='1') else
		  '1' when ( a = '0' and b='1' and c='1' and d='1' and e='1') else
		  '1' when ( a = '1' and b='1' and c='1' and d='1' and e='1') else
		  '0';

end Behavioral;

