----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:10:59 01/20/2020 
-- Design Name: 
-- Module Name:    or2gate - Behavioral 
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

entity or2gate is
    Port ( i1 : in  STD_LOGIC;
           i2 : in  STD_LOGIC;
           o : out  STD_LOGIC);
end or2gate;

architecture Dataflow of or2gate is

begin
	o<=i1 or i2;

end Dataflow;

