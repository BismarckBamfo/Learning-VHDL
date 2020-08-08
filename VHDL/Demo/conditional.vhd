----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:49:47 01/23/2020 
-- Design Name: 
-- Module Name:    conditional - Behavioral 
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

entity conditional is
    Port ( L : in  STD_LOGIC;
           M : in  STD_LOGIC;
           N : in  STD_LOGIC;
           F3 : out  STD_LOGIC);
end conditional;

architecture Behavioral of conditional is
	signal A_1, A_2: std_logic;
begin
	A_1 <= ( (not L) and (not M) and N);
	A_2 <= L and M;
	F3 <= A_1 or A_2;

end Behavioral;

