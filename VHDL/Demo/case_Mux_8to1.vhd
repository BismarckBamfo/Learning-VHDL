----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:01:08 02/26/2020 
-- Design Name: 
-- Module Name:    case_Mux_8to1 - case_Mux_8to1_OP 
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

entity case_Mux_8to1 is
	Port(
			Data_in	:	in  std_logic_vector(7 downto 0);
			SEL		:  in  std_logic_vector(2 downto 0);
			CE			:  in  std_logic;
			F_ctrl	:  out std_logic);
end case_Mux_8to1;

architecture case_Mux_8to1_OP of case_Mux_8to1 is

begin

case_mux_example: process( Data_in, SEL, CE)
	
	begin
		if (CE='1') then 
			case (SEL) is when "111" => F_ctrl <= Data_in(7);
							  when "110" => F_ctrl <= Data_in(6);
							  when "101" => F_ctrl <= Data_in(5);
							  when "100" => F_ctrl <= Data_in(4);
							  when "011" => F_ctrl <= Data_in(3);
							  when "010" => F_ctrl <= Data_in(2);
							  when "001" => F_ctrl <= Data_in(1);
							  when "000" => F_ctrl <= Data_in(0);
							  when others => F_ctrl <= '0';
			end case;
		else
			F_ctrl <= '0';
		end if;
			 
	
	
	
	
	
	
	end process case_mux_example;


end case_Mux_8to1_OP;

