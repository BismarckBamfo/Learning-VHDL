----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:29:39 02/26/2020 
-- Design Name: 
-- Module Name:    process_Mux - process_Mux_Op 
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

entity process_Mux1 is
	Port(
			Data_in	:in std_logic_vector(7 downto 0);
			SEL		:in std_logic_vector(2 downto 0);
			CE			:in std_logic;
			F_Ctrl	:out std_logic);
end process_Mux;

architecture process_Mux1_Op of process_Mux1 is

begin
	mux_process : process( Data_in, Sel, CE)
		begin
			if CE='0' then 
				F_ctrl <='0'
			else
				if Sel="111" then F_Ctrl <= Data_in(7);
				elsif Sel="110" then F_Ctrl <=Data_in(6);
				elsif Sel="101" then F_Ctrl <=Data_in(5);
				elsif Sel="100" then F_Ctrl <=Data_in(4);
				elsif Sel="011" then F_Ctrl <=Data_in(3);
				elsif Sel="010" then F_Ctrl <=Data_in(2);
				elsif Sel="001" then F_Ctrl <=Data_in(1);
				elsif Sel="000" then F_Ctrl <=Data_in(0);
				else F_ctrl <='0;
				end if;
			end if;
		
		
		end process mux_process

end process_Mux1_Op;

