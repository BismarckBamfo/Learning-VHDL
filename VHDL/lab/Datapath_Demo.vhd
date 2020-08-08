----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:52:15 03/13/2020 
-- Design Name: 
-- Module Name:    Datapath_Demo - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Datapath_Demo is
	port(
				i1, i2 : in std_logic_vector(7 downto 0);
				clk : in std_logic;
				Output : out std_logic_vector(7 downto 0)
 
		);
end Datapath_Demo;

architecture Behavioral of Datapath_Demo is
	signal xOut, yOut : std_logic_vector(7 downto 0);
begin

XRegister : process(clk)
					begin 
						if(rising_edge(clk)) then 
							xOut <= i1;
						end if;
					end process;
					
					
YRegister : process(clk)
					begin 
						if(rising_edge(clk)) then 
							yOut <= i2;
						end if;
					end process;


	Output <= xOut + yOut;

end Behavioral;

