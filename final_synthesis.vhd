--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: final_synthesis.vhd
-- /___/   /\     Timestamp: Thu Apr 15 14:00:47 2021
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm final -w -dir netgen/synthesis -ofmt vhdl -sim final.ngc final_synthesis.vhd 
-- Device	: xc3s500e-4-fg320
-- Input file	: final.ngc
-- Output file	: C:\users\crossover\Desktop\My Mac Desktop\UNI\Term 8\VHDL\az02 VHDL\amir1\netgen\synthesis\final_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: final
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity final is
  port (
    O : out STD_LOGIC; 
    A0 : in STD_LOGIC := 'X'; 
    A1 : in STD_LOGIC := 'X'; 
    A2 : in STD_LOGIC := 'X'; 
    A3 : in STD_LOGIC := 'X'; 
    A4 : in STD_LOGIC := 'X'; 
    fx : in STD_LOGIC_VECTOR ( 31 downto 0 ) 
  );
end final;

architecture Structure of final is
  signal A0_IBUF_1 : STD_LOGIC; 
  signal A1_IBUF_3 : STD_LOGIC; 
  signal A2_IBUF_5 : STD_LOGIC; 
  signal A3_IBUF_7 : STD_LOGIC; 
  signal A4_IBUF_9 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal O1123_21 : STD_LOGIC; 
  signal O1143_22 : STD_LOGIC; 
  signal O1156_23 : STD_LOGIC; 
  signal O1196_24 : STD_LOGIC; 
  signal O120_25 : STD_LOGIC; 
  signal O1209_26 : STD_LOGIC; 
  signal O1261_27 : STD_LOGIC; 
  signal O1346_28 : STD_LOGIC; 
  signal O1401_29 : STD_LOGIC; 
  signal O1450_30 : STD_LOGIC; 
  signal O1465_31 : STD_LOGIC; 
  signal O1521_32 : STD_LOGIC; 
  signal O1580 : STD_LOGIC; 
  signal O15801_34 : STD_LOGIC; 
  signal O15802_35 : STD_LOGIC; 
  signal O160_36 : STD_LOGIC; 
  signal O17_37 : STD_LOGIC; 
  signal O173_38 : STD_LOGIC; 
  signal O_OBUF_39 : STD_LOGIC; 
  signal fx_0_IBUF_72 : STD_LOGIC; 
  signal fx_10_IBUF_73 : STD_LOGIC; 
  signal fx_11_IBUF_74 : STD_LOGIC; 
  signal fx_12_IBUF_75 : STD_LOGIC; 
  signal fx_13_IBUF_76 : STD_LOGIC; 
  signal fx_14_IBUF_77 : STD_LOGIC; 
  signal fx_15_IBUF_78 : STD_LOGIC; 
  signal fx_16_IBUF_79 : STD_LOGIC; 
  signal fx_17_IBUF_80 : STD_LOGIC; 
  signal fx_18_IBUF_81 : STD_LOGIC; 
  signal fx_19_IBUF_82 : STD_LOGIC; 
  signal fx_1_IBUF_83 : STD_LOGIC; 
  signal fx_20_IBUF_84 : STD_LOGIC; 
  signal fx_21_IBUF_85 : STD_LOGIC; 
  signal fx_22_IBUF_86 : STD_LOGIC; 
  signal fx_23_IBUF_87 : STD_LOGIC; 
  signal fx_24_IBUF_88 : STD_LOGIC; 
  signal fx_25_IBUF_89 : STD_LOGIC; 
  signal fx_26_IBUF_90 : STD_LOGIC; 
  signal fx_27_IBUF_91 : STD_LOGIC; 
  signal fx_28_IBUF_92 : STD_LOGIC; 
  signal fx_29_IBUF_93 : STD_LOGIC; 
  signal fx_2_IBUF_94 : STD_LOGIC; 
  signal fx_30_IBUF_95 : STD_LOGIC; 
  signal fx_31_IBUF_96 : STD_LOGIC; 
  signal fx_3_IBUF_97 : STD_LOGIC; 
  signal fx_4_IBUF_98 : STD_LOGIC; 
  signal fx_5_IBUF_99 : STD_LOGIC; 
  signal fx_6_IBUF_100 : STD_LOGIC; 
  signal fx_7_IBUF_101 : STD_LOGIC; 
  signal fx_8_IBUF_102 : STD_LOGIC; 
  signal fx_9_IBUF_103 : STD_LOGIC; 
begin
  O17 : LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => fx_31_IBUF_96,
      I1 => A4_IBUF_9,
      I2 => fx_15_IBUF_78,
      O => O17_37
    );
  O120 : LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => fx_23_IBUF_87,
      I1 => A4_IBUF_9,
      I2 => fx_7_IBUF_101,
      O => O120_25
    );
  O160 : LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => fx_27_IBUF_91,
      I1 => A4_IBUF_9,
      I2 => fx_11_IBUF_74,
      O => O160_36
    );
  O173 : LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => fx_19_IBUF_82,
      I1 => A4_IBUF_9,
      I2 => fx_3_IBUF_97,
      O => O173_38
    );
  O1143 : LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => fx_29_IBUF_93,
      I1 => A4_IBUF_9,
      I2 => fx_13_IBUF_76,
      O => O1143_22
    );
  O1156 : LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => fx_21_IBUF_85,
      I1 => A4_IBUF_9,
      I2 => fx_5_IBUF_99,
      O => O1156_23
    );
  O1196 : LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => fx_25_IBUF_89,
      I1 => A4_IBUF_9,
      I2 => fx_9_IBUF_103,
      O => O1196_24
    );
  O1209 : LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => fx_17_IBUF_80,
      I1 => A4_IBUF_9,
      I2 => fx_1_IBUF_83,
      O => O1209_26
    );
  O1450 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => A3_IBUF_7,
      I1 => A4_IBUF_9,
      I2 => fx_12_IBUF_75,
      I3 => fx_28_IBUF_92,
      O => O1450_30
    );
  O1465 : LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => A3_IBUF_7,
      I1 => A4_IBUF_9,
      I2 => fx_4_IBUF_98,
      I3 => fx_20_IBUF_84,
      O => O1465_31
    );
  O1610 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => A0_IBUF_1,
      I1 => O1123_21,
      I2 => O1580,
      I3 => O1261_27,
      O => O_OBUF_39
    );
  A0_IBUF : IBUF
    port map (
      I => A0,
      O => A0_IBUF_1
    );
  A1_IBUF : IBUF
    port map (
      I => A1,
      O => A1_IBUF_3
    );
  A2_IBUF : IBUF
    port map (
      I => A2,
      O => A2_IBUF_5
    );
  A3_IBUF : IBUF
    port map (
      I => A3,
      O => A3_IBUF_7
    );
  A4_IBUF : IBUF
    port map (
      I => A4,
      O => A4_IBUF_9
    );
  fx_31_IBUF : IBUF
    port map (
      I => fx(31),
      O => fx_31_IBUF_96
    );
  fx_30_IBUF : IBUF
    port map (
      I => fx(30),
      O => fx_30_IBUF_95
    );
  fx_29_IBUF : IBUF
    port map (
      I => fx(29),
      O => fx_29_IBUF_93
    );
  fx_28_IBUF : IBUF
    port map (
      I => fx(28),
      O => fx_28_IBUF_92
    );
  fx_27_IBUF : IBUF
    port map (
      I => fx(27),
      O => fx_27_IBUF_91
    );
  fx_26_IBUF : IBUF
    port map (
      I => fx(26),
      O => fx_26_IBUF_90
    );
  fx_25_IBUF : IBUF
    port map (
      I => fx(25),
      O => fx_25_IBUF_89
    );
  fx_24_IBUF : IBUF
    port map (
      I => fx(24),
      O => fx_24_IBUF_88
    );
  fx_23_IBUF : IBUF
    port map (
      I => fx(23),
      O => fx_23_IBUF_87
    );
  fx_22_IBUF : IBUF
    port map (
      I => fx(22),
      O => fx_22_IBUF_86
    );
  fx_21_IBUF : IBUF
    port map (
      I => fx(21),
      O => fx_21_IBUF_85
    );
  fx_20_IBUF : IBUF
    port map (
      I => fx(20),
      O => fx_20_IBUF_84
    );
  fx_19_IBUF : IBUF
    port map (
      I => fx(19),
      O => fx_19_IBUF_82
    );
  fx_18_IBUF : IBUF
    port map (
      I => fx(18),
      O => fx_18_IBUF_81
    );
  fx_17_IBUF : IBUF
    port map (
      I => fx(17),
      O => fx_17_IBUF_80
    );
  fx_16_IBUF : IBUF
    port map (
      I => fx(16),
      O => fx_16_IBUF_79
    );
  fx_15_IBUF : IBUF
    port map (
      I => fx(15),
      O => fx_15_IBUF_78
    );
  fx_14_IBUF : IBUF
    port map (
      I => fx(14),
      O => fx_14_IBUF_77
    );
  fx_13_IBUF : IBUF
    port map (
      I => fx(13),
      O => fx_13_IBUF_76
    );
  fx_12_IBUF : IBUF
    port map (
      I => fx(12),
      O => fx_12_IBUF_75
    );
  fx_11_IBUF : IBUF
    port map (
      I => fx(11),
      O => fx_11_IBUF_74
    );
  fx_10_IBUF : IBUF
    port map (
      I => fx(10),
      O => fx_10_IBUF_73
    );
  fx_9_IBUF : IBUF
    port map (
      I => fx(9),
      O => fx_9_IBUF_103
    );
  fx_8_IBUF : IBUF
    port map (
      I => fx(8),
      O => fx_8_IBUF_102
    );
  fx_7_IBUF : IBUF
    port map (
      I => fx(7),
      O => fx_7_IBUF_101
    );
  fx_6_IBUF : IBUF
    port map (
      I => fx(6),
      O => fx_6_IBUF_100
    );
  fx_5_IBUF : IBUF
    port map (
      I => fx(5),
      O => fx_5_IBUF_99
    );
  fx_4_IBUF : IBUF
    port map (
      I => fx(4),
      O => fx_4_IBUF_98
    );
  fx_3_IBUF : IBUF
    port map (
      I => fx(3),
      O => fx_3_IBUF_97
    );
  fx_2_IBUF : IBUF
    port map (
      I => fx(2),
      O => fx_2_IBUF_94
    );
  fx_1_IBUF : IBUF
    port map (
      I => fx(1),
      O => fx_1_IBUF_83
    );
  fx_0_IBUF : IBUF
    port map (
      I => fx(0),
      O => fx_0_IBUF_72
    );
  O_OBUF : OBUF
    port map (
      I => O_OBUF_39,
      O => O
    );
  O1123 : MUXF5
    port map (
      I0 => N2,
      I1 => N3,
      S => A2_IBUF_5,
      O => O1123_21
    );
  O1123_F : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => A1_IBUF_3,
      I1 => A3_IBUF_7,
      I2 => O173_38,
      I3 => O160_36,
      O => N2
    );
  O1123_G : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => A1_IBUF_3,
      I1 => A3_IBUF_7,
      I2 => O120_25,
      I3 => O17_37,
      O => N3
    );
  O1261 : MUXF5
    port map (
      I0 => N4,
      I1 => N5,
      S => A2_IBUF_5,
      O => O1261_27
    );
  O1261_F : LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => A1_IBUF_3,
      I1 => A3_IBUF_7,
      I2 => O1209_26,
      I3 => O1196_24,
      O => N4
    );
  O1261_G : LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => A1_IBUF_3,
      I1 => A3_IBUF_7,
      I2 => O1156_23,
      I3 => O1143_22,
      O => N5
    );
  O1346 : MUXF5
    port map (
      I0 => N6,
      I1 => N7,
      S => A3_IBUF_7,
      O => O1346_28
    );
  O1346_F : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => A2_IBUF_5,
      I1 => A4_IBUF_9,
      I2 => fx_6_IBUF_100,
      I3 => fx_22_IBUF_86,
      O => N6
    );
  O1346_G : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => A2_IBUF_5,
      I1 => A4_IBUF_9,
      I2 => fx_14_IBUF_77,
      I3 => fx_30_IBUF_95,
      O => N7
    );
  O1401 : MUXF5
    port map (
      I0 => N8,
      I1 => N9,
      S => A3_IBUF_7,
      O => O1401_29
    );
  O1401_F : LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => A2_IBUF_5,
      I1 => A4_IBUF_9,
      I2 => fx_2_IBUF_94,
      I3 => fx_18_IBUF_81,
      O => N8
    );
  O1401_G : LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => A2_IBUF_5,
      I1 => A4_IBUF_9,
      I2 => fx_10_IBUF_73,
      I3 => fx_26_IBUF_90,
      O => N9
    );
  O1521 : MUXF5
    port map (
      I0 => N10,
      I1 => N11,
      S => A4_IBUF_9,
      O => O1521_32
    );
  O1521_F : LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => fx_8_IBUF_102,
      I1 => A3_IBUF_7,
      I2 => fx_0_IBUF_72,
      O => N10
    );
  O1521_G : LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => fx_24_IBUF_88,
      I1 => A3_IBUF_7,
      I2 => fx_16_IBUF_79,
      O => N11
    );
  O15801 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => O1346_28,
      I1 => O1401_29,
      O => O15801_34
    );
  O15802 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => A2_IBUF_5,
      I1 => O1450_30,
      I2 => O1521_32,
      I3 => O1465_31,
      O => O15802_35
    );
  O1580_f5 : MUXF5
    port map (
      I0 => O15802_35,
      I1 => O15801_34,
      S => A1_IBUF_3,
      O => O1580
    );

end Structure;

