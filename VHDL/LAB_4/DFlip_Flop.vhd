----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:35:19 02/28/2020 
-- Design Name: 
-- Module Name:    DFlip_Flop - Behavioral 
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

entity DFlip_Flop is
	port(
			clk, D 	: in std_logic;
			Q			: out std_logic
		);
end DFlip_Flop;

architecture Behavioral of DFlip_Flop is

begin
	flop : process(clk)
				begin 
					if(rising_edge(clk)) then 
						Q <= D;
					end if;
				end process;

end Behavioral;

