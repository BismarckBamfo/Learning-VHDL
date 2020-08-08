----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:27:55 02/03/2020 
-- Design Name: 
-- Module Name:    voter4of5_select - Behavioral 
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

entity voter4of5_select is
	Port(
			A, B, C, D, E: in std_logic;
			Y				 : out std_logic);
end voter4of5_select;

architecture Behavioral of voter4of5_select is
	signal t_sig	<=	std_logic_vector(4 downto 0);
begin
	t_sig <= (A & B & C & D & E);
	with (t_sig) select
		Y	<=	'1' when "01111" | "10111" | "11011" | "11101" | "11110" | "11111",
				'0' when others;



end Behavioral;

