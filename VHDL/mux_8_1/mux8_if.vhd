----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:44:17 02/21/2020 
-- Design Name: 
-- Module Name:    mux8_if - Behavioral 
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

entity mux8_if is
	port (
				Data_In : in std_logic_vector(7 downto 0);
				CE	     : in std_logic;
				SEL	  : in std_logic_vector(2 downto 0);
				F_Ctrl  : out std_logic
			);
end mux8_if;

architecture Behavioral of mux8_if is

begin
if_case_proc :	process(Data_In, ce, sel)
						begin 
							if(ce = '1') then 
									case(sel) is
										when "000" => F_Ctrl <= Data_In(7);
										when "001" => F_Ctrl <= Data_In(6);
										when "010" => F_Ctrl <= Data_In(5);
										when "011" => F_Ctrl <= Data_In(4);
										when "100" => F_Ctrl <= Data_In(3);
										when "101" => F_Ctrl <= Data_In(2);
										when "110" => F_Ctrl <= Data_In(1);
										when "111" => F_Ctrl <= Data_In(0);
										when others => 
											F_Ctrl <= 'Z';
									end case;
								else 
										F_Ctrl <= 'Z';
								end if;
						end process;

end Behavioral;

