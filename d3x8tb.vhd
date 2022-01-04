--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:35:33 04/08/2021
-- Design Name:   
-- Module Name:   C:/users/crossover/Desktop/My Mac Desktop/az 02 arezo/amir1/d3x8tb.vhd
-- Project Name:  amir1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: d3x8
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
 
ENTITY d3x8tb IS
END d3x8tb;
 
ARCHITECTURE behavior OF d3x8tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT d3x8
    PORT(
         a0 : IN  std_logic;
         a1 : IN  std_logic;
         a2 : IN  std_logic;
         en : IN  std_logic;
         o : OUT  std_logic_vector(0 to 7)
        );
    END COMPONENT;
    

   --Inputs
   signal a0 : std_logic := '0';
   signal a1 : std_logic := '0';
   signal a2 : std_logic := '0';
   signal en : std_logic := '0';

 	--Outputs
   signal o : std_logic_vector(0 to 7);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: d3x8 PORT MAP (
          a0 => a0,
          a1 => a1,
          a2 => a2,
          en => en,
          o => o
        );

   -- Clock process definitions


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

a0 <= '0';
a1 <= '0';
a2 <= '1';
en <= '1';

      -- insert stimulus here 

      wait;
   end process;

END;
