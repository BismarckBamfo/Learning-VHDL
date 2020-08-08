----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:04:03 02/14/2020 
-- Design Name: 
-- Module Name:    process_one - process_op 
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

entity process_one is
	Port(	
			A, B, C	:	in  std_logic;
			F, Q		: out  std_logic);
end process_one;

architecture process_op of process_one is
signal A1	: std_logic;
begin
something: process(A,B,C) is
	variable x,y : integer;
	
	begin
	x :=74;
	y :=67;
	
	A1 <= A and B and C;
	 if x> y then
		F <= A1 or B;
	 end if;
	end process something;
	
	
	Q <= not A;

	 

end process_op;

