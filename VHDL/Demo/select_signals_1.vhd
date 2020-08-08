----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:32:44 01/27/2020 
-- Design Name: 
-- Module Name:    select_signals_1 - Behavioral 
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

entity select_signals_1 is
    Port ( L : in  STD_LOGIC;
           M : in  STD_LOGIC;
           N : in  STD_LOGIC;
           F3 : out  STD_LOGIC);
end select_signals_1;

architecture Behavioral of select_signals_1 is

begin
	with ((L ='0' and M ='0' and N ='1') or (L ='1' and M ='1')) select
		F3 <= '1' when '1',
				'0' when '0',
				'0' when others;


end Behavioral;

