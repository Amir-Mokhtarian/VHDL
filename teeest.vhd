--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:30:02 04/08/2021
-- Design Name:   
-- Module Name:   C:/users/crossover/Desktop/My Mac Desktop/az 02 arezo/amir1/teeest.vhd
-- Project Name:  amir1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: d5x32
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
 
ENTITY teeest IS
END teeest;
 
ARCHITECTURE behavior OF teeest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT d5x32
    PORT(
         A0 : IN  std_logic;
         A1 : IN  std_logic;
         A2 : IN  std_logic;
         A3 : IN  std_logic;
         A4 : IN  std_logic;
         f : OUT  std_logic_vector(0 to 31)
        );
    END COMPONENT;
    

   --Inputs
   signal A0 : std_logic := '0';
   signal A1 : std_logic := '0';
   signal A2 : std_logic := '0';
   signal A3 : std_logic := '0';
   signal A4 : std_logic := '0';

 	--Outputs
   signal f : std_logic_vector(0 to 31);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: d5x32 PORT MAP (
          A0 => A0,
          A1 => A1,
          A2 => A2,
          A3 => A3,
          A4 => A4,
          f => f
        );

   -- Clock process definitions

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
wait for 100 ns;	


			A0 <= '1'; --kam arzesh
			A1 <= '0';
         A2 <= '0';
         A3 <= '0';
         A4 <= '0'; --por arzesh
wait for 100 ns;	


			A0 <= '0';
			A1 <= '1';
         A2 <= '0';
         A3 <= '0';
         A4 <= '0';
wait for 100 ns;	


			A0 <= '1';
			A1 <= '1';
         A2 <= '0';
         A3 <= '0';
         A4 <= '0';

wait for 100 ns;	


			A0 <= '0';
			A1 <= '0';
         A2 <= '0';
         A3 <= '0';
         A4 <= '1';

      -- insert stimulus here 

      wait;
   end process;

END;
