----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:18:39 01/16/2020 
-- Design Name: 
-- Module Name:    multiplexer - Behavioral 
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

entity multiplexer is
    Port ( d0 : in  STD_LOGIC;d1 : in  STD_LOGIC;s : in  STD_LOGIC;y : out  STD_LOGIC);
end multiplexer;

architecture Behavioral of multiplexer is

begin
	process(s, d0, d1)
	begin
		if(s = '1') then 
			y <= d1;
		else
			y <= d0;
		end if;
	end process;
end Behavioral;
