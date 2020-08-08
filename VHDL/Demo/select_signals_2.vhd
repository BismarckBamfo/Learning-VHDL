----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:44:36 01/27/2020 
-- Design Name: 
-- Module Name:    select_signals_2 - Behavioral 
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

entity select_signals_2 is
    Port ( D3 : in  STD_LOGIC;
           D2 : in  STD_LOGIC;
           D1 : in  STD_LOGIC;
           D0 : in  STD_LOGIC;
           SEL : in  STD_LOGIC_VECTOR ( 1 downto 0);
           MX_OUT : out  STD_LOGIC);
end select_signals_2;

architecture Behavioral of select_signals_2 is

begin
	with SEL select
		F3	<=	D3 when "11",
			<= D2 when "10",
			<= D1 when "01",
			<= D0 when "00",
			<= '0' when others;
end Behavioral;

