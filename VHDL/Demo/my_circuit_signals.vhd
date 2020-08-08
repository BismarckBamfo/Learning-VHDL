----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:46:33 01/23/2020 
-- Design Name: 
-- Module Name:    my_circuit_signals - Behavioral 
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

entity my_circuit_signals is
    Port ( A_1 : in  STD_LOGIC;
           A_2 : in  STD_LOGIC;
           B_1 : in  STD_LOGIC;
           B_2 : in  STD_LOGIC;
           D_1 : in  STD_LOGIC;
           E_out : out  STD_LOGIC);
end my_circuit_signals;

architecture Behavioral of my_circuit_signals is
	signal A_out, B_out, C_out: std_logic;
	
begin
	A_out <= A_1 and A_2;
	B_out <= B_1 or B_2;
	C_out <= B_2 and (not D_1);
	E_out		<= A_out or B_out or C_out;

end Behavioral;

