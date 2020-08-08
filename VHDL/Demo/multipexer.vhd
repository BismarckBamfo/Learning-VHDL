----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:12:12 01/20/2020 
-- Design Name: 
-- Module Name:    multipexer - Behavioral 
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

entity multipexer is
    Port ( d0 : in  STD_LOGIC;
           d1 : in  STD_LOGIC;
           s : in  STD_LOGIC;
           y : out  STD_LOGIC);
end multipexer;

architecture Structural of multipexer is
	component and2gate port(
		i1, i2: in std_logic;
		o: out std_logic);
	end component;
	component or2gate port(
		i1, i2: in std_logic;
		o: out std_logic);
	end component;
	component notgate port(
		i: in std_logic;
		o: out std_logic);
	end component;
	signal sn, sd1, snd0: std_logic;

begin
	u1: notgate port map(s, sn);
	u2: and2gate port map(d0,sn, snd0);
	u3: and2gate port map(s, d1, sd1);
	u4: or2gate port map(snd0, sd1, y);

end Structural;

