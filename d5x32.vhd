----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:02:39 04/07/2021 
-- Design Name: 
-- Module Name:    d5x32 - Behavioral 
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

entity d5x32 is
port (A0: in std_logic;
A1: in std_logic;
A2: in std_logic;
A3: in std_logic;
A4: in std_logic;
f: out std_logic_vector (0 to 31));
end d5x32;
--o : out std_logic
architecture Behavioral of d5x32 is

component d3x8 
port (a0: in std_logic;
	a1: in std_logic;
	a2: in std_logic;
	en: in std_logic;
	o : out std_logic_vector (0 to 7));
end component d3x8;

component d2x4 
	port (a0: in std_logic;
	a1: std_logic;
	o : out std_logic_vector (0 to 3));
end component d2x4;

------- signal
	signal s1 : std_logic_vector (3 downto 0);
	signal g0 : std_logic_vector (7 downto 0);
	signal g1 : std_logic_vector (7 downto 0);
	signal g2 : std_logic_vector (7 downto 0);
	signal g3 : std_logic_vector (7 downto 0);
   signal G  : std_logic_vector (31 downto 0);
begin

------- port map
	p1: d2x4 port map (A3,A4,s1);

	p2: d3x8 port map (A0,A1,A2,s1(0),g0);
	p3: d3x8 port map (A0,A1,A2,s1(1),g1);
	p4: d3x8 port map (A0,A1,A2,s1(2),g2);
	p5: d3x8 port map (A0,A1,A2,s1(3),g3);
	G(7 downto 0)   <= g0;
	G(15 downto 8)  <= g1;
	G(23 downto 16) <= g2;
	G(31 downto 24) <= g3;
	f <= G;
end Behavioral;

