----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:38:16 02/20/2020 
-- Design Name: 
-- Module Name:    process_if - process_if_OP 
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

entity process_if is
	Port(
			A, B, C	:	in  std_logic;
			F_OUT		:	out std_logic);
end process_if;

architecture process_if_OP of process_if is

begin
if_proc	:	process(A, B, C) is
	begin
	if ( A='1' and B='0' and C='0' ) then
		F_out	<=	'1';
	
	elsif ( B='1' and C='1' ) then
		F_out <='1';
	
	else
		F_out <='0';
	end if;
end process if_proc;

end process_if_OP;

