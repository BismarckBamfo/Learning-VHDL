----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:34:26 01/22/2020 
-- Design Name: 
-- Module Name:    sys2 - Behavioral 
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

entity sys2 is
	Port(
			input_w	: in std_logic;
			a_data	: in std_logic_vector (0 to 7);
			b_data	: in std_logic_vector (0 to 7);
			clk		: in std_logic;
			dat_4		: out std_logic_vector (0 to 7);
			dat_5		: out std_logic_vector (0 to 2);
			);
end sys2;

architecture Behavioral of sys2 is

begin


end Behavioral;

