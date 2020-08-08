----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:33:39 02/28/2020 
-- Design Name: 
-- Module Name:    EnabledFlop - Behavioral 
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

entity EnabledFlop is
	port (
							clk, reset, FlopEn, D : in std_logic;
							Q						    : out std_logic				
			);
end EnabledFlop;

architecture Behavioral of EnabledFlop is

begin
	flop_proc : process(clk, reset)	
						begin 
							if(reset = '0') then 
								Q <= '0';
							elsif(rising_edge(clk)) then 
								if(FlopEn = '1') then 
										Q <= D;
								end if;
							end if;
						end process;

end Behavioral;

