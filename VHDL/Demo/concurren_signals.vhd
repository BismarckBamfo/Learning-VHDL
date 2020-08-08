----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:59:13 01/23/2020 
-- Design Name: 
-- Module Name:    concurren_signals - Behavioral 
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

entity concurren_signals is
    Port ( L : in  STD_LOGIC;
           M : in  STD_LOGIC;
           N : in  STD_LOGIC;
           F3 : out  STD_LOGIC);
end concurren_signals;

architecture Behavioral of concurren_signals is

begin
	F3	<=	'1' when (L='0' and M='0' and N='1') else
			'1' when (L='1' and M='1') else
			'0';

end Behavioral;

