----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:44:46 02/28/2020 
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
	port 
	(
		Clk, T, set : in std_logic;
		Q 				: out std_logic 
	);
end TFlipFlop;

architecture Behavioral of TFlipFlop is
	signal t_tmp : std_logic;
begin	
	tflop : process(clk, set)
				begin 
					if(set = '1') then 
						t_tmp <= '1';
					elsif(rising_edge(clk)) then 
						t_tmp <= t_tmp xor T;
					end if;
				end process;
				
				Q <= t_tmp;

end Behavioral;

