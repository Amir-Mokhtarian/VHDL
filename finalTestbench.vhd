--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:56:19 04/08/2021
-- Design Name:   
-- Module Name:   C:/users/crossover/Desktop/My Mac Desktop/az 02 arezo/amir1/finalTestBench.vhd
-- Project Name:  amir1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: final
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY finalTestBench IS
END finalTestBench;
 
ARCHITECTURE behavior OF finalTestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT final
    PORT(
         A0 : IN  std_logic;
         A1 : IN  std_logic;
         A2 : IN  std_logic;
         A3 : IN  std_logic;
         A4 : IN  std_logic;
         fx : IN  std_logic_vector(31 downto 0);
         O : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A0 : std_logic := '0';
   signal A1 : std_logic := '0';
   signal A2 : std_logic := '0';
   signal A3 : std_logic := '0';
   signal A4 : std_logic := '0';
   signal fx : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal O : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: final PORT MAP (
          A0 => A0,
          A1 => A1,
          A2 => A2,
          A3 => A3,
          A4 => A4,
          fx => fx,
          O => O
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
	A0<='0'; --kam arzesh
	A1<='1';
	A2<='0';
	A3<='0';
	A4<='0'; --por arzesh
fx <= "00000000000000000000000000000100";
      wait for 100 ns;	
	A0<='1';
	A1<='1';
	A2<='0';
	A3<='0';
	A4<='0';
fx <= "00000000000000000000000000001000";
      wait for 100 ns;	
	A0<='0';
	A1<='1';
	A2<='0';
	A3<='0';
	A4<='0';
fx <= "00000000000000000000000000001010";
      wait for 100 ns;	
	A0<='1';
	A1<='0';
	A2<='1';
	A3<='0';
	A4<='0';
fx <= "00000000000000000000000000100000";
      wait for 100 ns;	
	A0<='0';
	A1<='1';
	A2<='0';
	A3<='0';
	A4<='0';
fx <= "11111111111111111111111111111011";

      -- insert stimulus here 

      wait;
   end process;

END;
