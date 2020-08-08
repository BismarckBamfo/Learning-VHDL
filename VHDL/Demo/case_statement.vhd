----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:45:08 02/26/2020 
-- Design Name: 
-- Module Name:    case_statement - case_statement_OP 
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

entity case_statement is
	Port(
			A, B, C	: in  std_logic;
			F_out		: out std_logic);
end case_statement;

architecture case_statement_OP of case_statement is
	signal ABC : std_logic_vector(2 downto 0);
	
begin
	ABC <= A & B & C;
	case_example1: process (ABC) 
		begin
			
			case (ABC) is
				when "011" => F_out <= '1';
				when "100" => F_out <= '1';
				when "111" => F_out <= '1';
				when others => F_out <='0';
			end case;
		
		end process case_example1;

end case_statement_OP;

