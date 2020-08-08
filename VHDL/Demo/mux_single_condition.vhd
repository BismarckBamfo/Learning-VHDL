----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:24:00 01/23/2020 
-- Design Name: 
-- Module Name:    mux_single_condition - Behavioral 
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

entity mux_single_condition is
    Port ( D3 : in  STD_LOGIC;
           D2 : in  STD_LOGIC;
           D1 : in  STD_LOGIC;
           D0 : in  STD_LOGIC;
           SEL : in  STD_LOGIC_VECTOR (0 to 1);
           MX_OUT : out  STD_LOGIC);
end mux_single_condition;

architecture Behavioral of mux_single_condition is

begin

	MX_OUT <=	D3 when (SEL = "11") else
					D2 when (SEL = "10") else
					D1 when (SEL = "01") else
					D0 when (SEL = "00") else
					'0';


end Behavioral;

