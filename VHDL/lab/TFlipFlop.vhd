----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:16:44 02/28/2020 
-- Design Name: 
-- Module Name:    TFlipFlop - Behavioral 
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

entity TFlipFlop is
	port (
				clk, T, S : in std_logic;
				Q 			 : out std_logic
			);
end TFlipFlop;

architecture Behavioral of TFlipFlop is
	signal Q_tmp : std_logic;
begin
	T_Flop : process(clk)
					begin
						if(S = '1') then 
							q_tmp <= '1';
						elsif(rising_edge(clk)) then 
							q_tmp <= q_tmp xor T;
						end if;
						
					end process; 
					
					Q <= q_tmp;

end Behavioral;

