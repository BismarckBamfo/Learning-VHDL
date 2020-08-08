----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:00:25 01/31/2020 
-- Design Name: 
-- Module Name:    ckt_3 - Behavioral 
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

entity ckt_3 is
	port(
			a_1, a_2, b_2, b_1, d_1	: in std_logic;
			e_out : out std_logic
		);
end ckt_3;

architecture Behavioral of ckt_3 is
signal sig1, sig2, sig3 : std_logic;
begin
sig3 <= not D_1 and b_2;
e_out <= sig1 or sig2 or sig3;
sig1 <= a_1 and a_2;
sig2 <= b_1 or b_2;




end Behavioral;

