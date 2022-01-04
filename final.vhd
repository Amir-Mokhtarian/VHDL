----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:53:21 04/08/2021 
-- Design Name: 
-- Module Name:    final - Behavioral 
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

entity final is
port (A0: in std_logic;
A1: in std_logic;
A2: in std_logic;
A3: in std_logic;
A4: in std_logic;
fx: in std_logic_vector (31 downto 0);
O : out std_logic);
end final;

architecture Behavioral of final is
component d5x32 is
port (A0: in std_logic;
A1: in std_logic;
A2: in std_logic;
A3: in std_logic;
A4: in std_logic;
f: out std_logic_vector (0 to 31));
end component d5x32;

--signal:
   signal gFinal  : std_logic_vector (31 downto 0);
	--signal fxin : std_logic_vector (31 downto 0);
	signal gOut  : std_logic_vector (31 downto 0);

begin

-- port map:
--fXor <= "10111010101011010010110111011000";

pFinal: d5x32 port map (A0,A1,A2,A3,A4,gFinal);
gOut <= (gFinal and fx);
process (gOut)
begin
	if(gOut="00000000000000000000000000000000")
	--	if (gOut=gFinal)
		then
			O <= '0';
		else 
			O <= '1';
		end if;
	end process;
end Behavioral;

