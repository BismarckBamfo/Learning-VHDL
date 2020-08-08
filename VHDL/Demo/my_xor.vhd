----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:42:48 02/11/2020 
-- Design Name: 
-- Module Name:    my_xor - Behavioral 
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

entity my_xor is
	Port(	
			A, B	: in  std_logic;
			F		: out std_logic);
end my_xor;

architecture Behavioral of my_xor is

begin
	xor_proc: process(A, B) is 
		begin
			F	<=	A xor B;
		end process xor_proc;

end Behavioral;

