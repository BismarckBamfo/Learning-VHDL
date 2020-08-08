
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:01:56 02/21/2020 
-- Design Name: 
-- Module Name:    mux_8_1 - Behavioral 
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

entity mux_8_1 is
	port (
				A, B, C, D, E, F,G, H : in std_logic;
				mux_sel					 : in std_logic_vector(2 downto 0);
				F_Ctrl					 : out std_logic
			);
end mux_8_1;

architecture Behavioral of mux_8_1 is

begin
mux_8_1	:	process(a,b,c,d,e,f,g,h, mux_sel)
					begin 
						case(mux_sel) is 
							when "000" => F_Ctrl <= A;
							when "001" => F_Ctrl <= b;
							when "010" => F_Ctrl <= c;
							when "011" => F_Ctrl <= d;
							when "100" => F_Ctrl <= e;
							when "101" => F_Ctrl <= f;
							when "110" => F_Ctrl <= g;
							when "111" => F_Ctrl <= h;
							when others => F_Ctrl <= 'Z';
						end case;
						
					end process;
end Behavioral;

