----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:43:51 01/22/2020 
-- Design Name: 
-- Module Name:    my_ent - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity my_ent is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           F : out  STD_LOGIC);
end my_ent;

architecture Behavioral of my_ent is
	signal v1, v2	: std_logic_vector (3 downto 0);
	signal u1		: unsigned (3 downto 0);
	signal i1		: integer;
begin
	u1	<= "1101";
	i1	<= 13;
	v1	<= std_logic_vector(u1);
	v2	<= std_logic_vector(to_unsigned(i1, v2'length));
	
	F	<= NOT (A AND B AND C);

end Behavioral;

