----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:44:46 02/14/2020 
-- Design Name: 
-- Module Name:    LAB_3_2 - Behavioral 
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

entity LAB_3_2 is
	port(
			A,B,C,D,E,F,G,H : in std_logic;
			CE : in std_logic;
			SEL : in std_logic_vector(2 downto 0);
			Ouput : out std_logic;
			);
end LAB_3_2;

architecture Behavioral of LAB_3_2 is

begin

	my_mux : process(CE, SEL) 
		begin
			if(CE = '1')
				then
					if(SEL = "000") then
						Ouput <= A;
					elsif(SEL = "001") then 
						Ouput <= B;
					elsif(SEL = "010") then
						Ouput <= c;
					elsif(SEL = "011") then
						Ouput <= d;
					elsif(SEL = "100") then
						Ouput <= e;
					elsif(SEL = "101") then
						Ouput <= f;
					elsif(SEL = "110") then
						Ouput <= g;
					else 
						Output <= h;
			else
				Outpt <= '0';
			end if;
		end process;
end Behavioral;

