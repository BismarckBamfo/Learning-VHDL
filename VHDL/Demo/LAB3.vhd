----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:12:24 02/14/2020 
-- Design Name: 
-- Module Name:    LAB3 - Behavioral 
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

entity LAB3 is
	port (
				A, B, C, D : in std_logic;
				F			  : out std_logic
			);
end LAB3;

architecture Behavioral of LAB3 is

begin
	process(a, b, c, d)
		begin
			F <= (not A and C and not D) or (not B and C) or (B and C and not D);
		end process;; 
end Behavioral;

