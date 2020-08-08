----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:08:15 02/07/2020 
-- Design Name: 
-- Module Name:    mux4 - Behavioral 
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

entity mux4 is
	port (
				a, b, c, d : in std_logic_vector(31 downto 0);
				sel		: in std_logic_vector(1 downto 0);
				y				: out std_logic_vector(31 downto 0)
			);
end mux4;

architecture Behavioral of mux4 is
begin
Y <= a when sel = "00"else
	  b when sel = "01" else 
	  c when sel = "10" else
	  d;



end Behavioral;

