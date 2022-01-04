----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:53:12 04/07/2021 
-- Design Name: 
-- Module Name:    d3x8 - Behavioral 
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

entity d3x8 is
port (a0: in std_logic;
a1: in std_logic;
a2: in std_logic;
en: in std_logic;
o: out std_logic_vector (0 to 7));
end d3x8;

architecture Behavioral of d3x8 is
signal a: std_logic_vector (0 to 2);
begin
a(0) <= a2;
a(1) <= a1;
a(2) <= a0;

	process (a,en)
		begin
		if(en='1')
		then
			case a is
				when "000" => o <= "00000001";
				when "001" => o <= "00000010";
				when "010" => o <= "00000100";
				when "011" => o <= "00001000";
				when "100" => o <= "00010000";
				when "101" => o <= "00100000";
				when "110" => o <= "01000000";
				when "111" => o <= "10000000";
				when others => o <= "00000000";
			end case;
		else o <= "00000000";
		end if;
	end process;
end Behavioral;
