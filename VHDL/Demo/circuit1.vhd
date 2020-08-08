----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:15:13 01/22/2020 
-- Design Name: 
-- Module Name:    circuit1 - Behavioral 
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

entity circuit1 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           F : out  STD_LOGIC;
           G : out  STD_LOGIC);
end circuit1;

architecture Behavioral of circuit1 is
signal sig_1: std_logic;

begin
	process(a, b, c)
		variable var_1: integer;
	begin
		F <=	not (A and B and C);
		sig_1 <=	A;
		var_1	:=34;
	end process;
	
	G <= not (A and B);


end Behavioral;

