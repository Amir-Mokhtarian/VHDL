----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:03:01 04/07/2021 
-- Design Name: 
-- Module Name:    d2x4 - Behavioral 
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

entity d2x4 is
port (a0: in std_logic;
a1: std_logic;
o : out std_logic_vector (0 to 3));
end d2x4;

architecture Behavioral of d2x4 is
signal a: std_logic_vector (0 to 1);
begin
a(0) <= a1;
a(1) <= a0;
	process (a)
		begin
			case a is
				when "00" => o <= "0001";
				when "01" => o <= "0010";
				when "10" => o <= "0100";
				when "11" => o <= "1000";
				when others => o <= "0000";
			end case;
	end process;
end Behavioral;

