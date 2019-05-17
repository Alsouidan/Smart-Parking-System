-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "12/10/2018 21:11:44"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	smart_parking IS
    PORT (
	clk : IN std_logic;
	sensor_in : IN std_logic;
	sensor_out : IN std_logic;
	pswrd : IN std_logic_vector(3 DOWNTO 0);
	pass_in : IN std_logic;
	pass_rsv : IN std_logic;
	sensor_s1 : IN std_logic;
	sensor_s2 : IN std_logic;
	sensor_s3 : IN std_logic;
	sensor_s4 : IN std_logic;
	green_light : OUT std_logic;
	digs : OUT std_logic_vector(6 DOWNTO 0);
	g1_out : OUT std_logic;
	g2_out : OUT std_logic;
	g3_out : OUT std_logic;
	g4_out : OUT std_logic;
	y1_out : OUT std_logic;
	y2_out : OUT std_logic;
	y3_out : OUT std_logic;
	y4_out : OUT std_logic;
	r1_out : OUT std_logic;
	r2_out : OUT std_logic;
	r3_out : OUT std_logic;
	r4_out : OUT std_logic
	);
END smart_parking;

-- Design Ports Information
-- green_light	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digs[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digs[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digs[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digs[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digs[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digs[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digs[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g1_out	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g2_out	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g3_out	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g4_out	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y1_out	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y2_out	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y3_out	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y4_out	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1_out	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2_out	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r3_out	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r4_out	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor_s1	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor_s2	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor_s3	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor_s4	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pass_in	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pswrd[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pswrd[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pswrd[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pswrd[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pass_rsv	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor_out	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor_in	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF smart_parking IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_sensor_in : std_logic;
SIGNAL ww_sensor_out : std_logic;
SIGNAL ww_pswrd : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_pass_in : std_logic;
SIGNAL ww_pass_rsv : std_logic;
SIGNAL ww_sensor_s1 : std_logic;
SIGNAL ww_sensor_s2 : std_logic;
SIGNAL ww_sensor_s3 : std_logic;
SIGNAL ww_sensor_s4 : std_logic;
SIGNAL ww_green_light : std_logic;
SIGNAL ww_digs : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_g1_out : std_logic;
SIGNAL ww_g2_out : std_logic;
SIGNAL ww_g3_out : std_logic;
SIGNAL ww_g4_out : std_logic;
SIGNAL ww_y1_out : std_logic;
SIGNAL ww_y2_out : std_logic;
SIGNAL ww_y3_out : std_logic;
SIGNAL ww_y4_out : std_logic;
SIGNAL ww_r1_out : std_logic;
SIGNAL ww_r2_out : std_logic;
SIGNAL ww_r3_out : std_logic;
SIGNAL ww_r4_out : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \comb_3|countdecr2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_3|always5~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_3|comb_3|slow_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_3|stateout~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \green_light~output_o\ : std_logic;
SIGNAL \digs[0]~output_o\ : std_logic;
SIGNAL \digs[1]~output_o\ : std_logic;
SIGNAL \digs[2]~output_o\ : std_logic;
SIGNAL \digs[3]~output_o\ : std_logic;
SIGNAL \digs[4]~output_o\ : std_logic;
SIGNAL \digs[5]~output_o\ : std_logic;
SIGNAL \digs[6]~output_o\ : std_logic;
SIGNAL \g1_out~output_o\ : std_logic;
SIGNAL \g2_out~output_o\ : std_logic;
SIGNAL \g3_out~output_o\ : std_logic;
SIGNAL \g4_out~output_o\ : std_logic;
SIGNAL \y1_out~output_o\ : std_logic;
SIGNAL \y2_out~output_o\ : std_logic;
SIGNAL \y3_out~output_o\ : std_logic;
SIGNAL \y4_out~output_o\ : std_logic;
SIGNAL \r1_out~output_o\ : std_logic;
SIGNAL \r2_out~output_o\ : std_logic;
SIGNAL \r3_out~output_o\ : std_logic;
SIGNAL \r4_out~output_o\ : std_logic;
SIGNAL \pswrd[2]~input_o\ : std_logic;
SIGNAL \pass_rsv~input_o\ : std_logic;
SIGNAL \pswrd[3]~input_o\ : std_logic;
SIGNAL \comb_3|password[3]~feeder_combout\ : std_logic;
SIGNAL \comb_3|Equal0~1_combout\ : std_logic;
SIGNAL \pswrd[1]~input_o\ : std_logic;
SIGNAL \comb_3|password[1]~feeder_combout\ : std_logic;
SIGNAL \pswrd[0]~input_o\ : std_logic;
SIGNAL \comb_3|Equal0~0_combout\ : std_logic;
SIGNAL \comb_3|Equal0~2_combout\ : std_logic;
SIGNAL \pass_in~input_o\ : std_logic;
SIGNAL \comb_3|green_light~combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~0_combout\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~1\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~2_combout\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~3\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~4_combout\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~5\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~6_combout\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~7\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~8_combout\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~9\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~10_combout\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~11\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~12_combout\ : std_logic;
SIGNAL \comb_3|comb_3|count~0_combout\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~13\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~14_combout\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~15\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~16_combout\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~17\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~18_combout\ : std_logic;
SIGNAL \comb_3|comb_3|count~1_combout\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~19\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~20_combout\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~21\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~22_combout\ : std_logic;
SIGNAL \comb_3|comb_3|Equal0~2_combout\ : std_logic;
SIGNAL \comb_3|comb_3|Equal0~1_combout\ : std_logic;
SIGNAL \comb_3|comb_3|Equal0~0_combout\ : std_logic;
SIGNAL \comb_3|comb_3|count~2_combout\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~23\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~24_combout\ : std_logic;
SIGNAL \comb_3|comb_3|count~3_combout\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~25\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~26_combout\ : std_logic;
SIGNAL \comb_3|comb_3|count~4_combout\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~27\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~28_combout\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~29\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~30_combout\ : std_logic;
SIGNAL \comb_3|comb_3|Equal0~3_combout\ : std_logic;
SIGNAL \comb_3|comb_3|Equal0~4_combout\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~31\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~33\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~34_combout\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~35\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~36_combout\ : std_logic;
SIGNAL \comb_3|comb_3|count~7_combout\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~37\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~38_combout\ : std_logic;
SIGNAL \comb_3|comb_3|count~6_combout\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~39\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~40_combout\ : std_logic;
SIGNAL \comb_3|comb_3|count~5_combout\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~41\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~43\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~44_combout\ : std_logic;
SIGNAL \comb_3|comb_3|count~10_combout\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~45\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~46_combout\ : std_logic;
SIGNAL \comb_3|comb_3|Equal0~8_combout\ : std_logic;
SIGNAL \comb_3|comb_3|count~11_combout\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~47\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~48_combout\ : std_logic;
SIGNAL \comb_3|comb_3|Equal0~7_combout\ : std_logic;
SIGNAL \comb_3|comb_3|count~8_combout\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~32_combout\ : std_logic;
SIGNAL \comb_3|comb_3|Equal0~6_combout\ : std_logic;
SIGNAL \comb_3|comb_3|count~9_combout\ : std_logic;
SIGNAL \comb_3|comb_3|Add0~42_combout\ : std_logic;
SIGNAL \comb_3|comb_3|Equal0~5_combout\ : std_logic;
SIGNAL \comb_3|comb_3|slow_clk~0_combout\ : std_logic;
SIGNAL \comb_3|comb_3|slow_clk~1_combout\ : std_logic;
SIGNAL \comb_3|comb_3|slow_clk~feeder_combout\ : std_logic;
SIGNAL \comb_3|comb_3|slow_clk~q\ : std_logic;
SIGNAL \comb_3|comb_3|slow_clk~clkctrl_outclk\ : std_logic;
SIGNAL \sensor_s2~input_o\ : std_logic;
SIGNAL \sensor_s1~input_o\ : std_logic;
SIGNAL \comb_3|yo1t~feeder_combout\ : std_logic;
SIGNAL \comb_3|yo1t~q\ : std_logic;
SIGNAL \sensor_s3~input_o\ : std_logic;
SIGNAL \sensor_s4~input_o\ : std_logic;
SIGNAL \comb_3|always0~2_combout\ : std_logic;
SIGNAL \comb_3|yo4t~q\ : std_logic;
SIGNAL \comb_3|always0~1_combout\ : std_logic;
SIGNAL \comb_3|yo3t~q\ : std_logic;
SIGNAL \comb_3|countdecr2~1_combout\ : std_logic;
SIGNAL \comb_3|always0~0_combout\ : std_logic;
SIGNAL \comb_3|yo2t~q\ : std_logic;
SIGNAL \comb_3|countdecr2~2_combout\ : std_logic;
SIGNAL \comb_3|countdecr2~0_combout\ : std_logic;
SIGNAL \comb_3|Add1~1_cout\ : std_logic;
SIGNAL \comb_3|Add1~3_cout\ : std_logic;
SIGNAL \comb_3|Add1~5_cout\ : std_logic;
SIGNAL \comb_3|Add1~7_cout\ : std_logic;
SIGNAL \comb_3|Add1~9\ : std_logic;
SIGNAL \comb_3|Add1~10_combout\ : std_logic;
SIGNAL \comb_3|Add1~11\ : std_logic;
SIGNAL \comb_3|Add1~13\ : std_logic;
SIGNAL \comb_3|Add1~14_combout\ : std_logic;
SIGNAL \comb_3|Add1~8_combout\ : std_logic;
SIGNAL \comb_3|Add1~12_combout\ : std_logic;
SIGNAL \comb_3|LessThan0~0_combout\ : std_logic;
SIGNAL \comb_3|Add1~15\ : std_logic;
SIGNAL \comb_3|Add1~17\ : std_logic;
SIGNAL \comb_3|Add1~18_combout\ : std_logic;
SIGNAL \comb_3|Add1~16_combout\ : std_logic;
SIGNAL \comb_3|Add1~19\ : std_logic;
SIGNAL \comb_3|Add1~21\ : std_logic;
SIGNAL \comb_3|Add1~22_combout\ : std_logic;
SIGNAL \comb_3|Add1~20_combout\ : std_logic;
SIGNAL \comb_3|LessThan0~1_combout\ : std_logic;
SIGNAL \comb_3|Add1~23\ : std_logic;
SIGNAL \comb_3|Add1~24_combout\ : std_logic;
SIGNAL \comb_3|LessThan0~2_combout\ : std_logic;
SIGNAL \comb_3|yo2~0_combout\ : std_logic;
SIGNAL \comb_3|yo2~q\ : std_logic;
SIGNAL \comb_3|yo1~0_combout\ : std_logic;
SIGNAL \comb_3|yo1~q\ : std_logic;
SIGNAL \comb_3|yo4~0_combout\ : std_logic;
SIGNAL \comb_3|yo4~q\ : std_logic;
SIGNAL \comb_3|yo3~0_combout\ : std_logic;
SIGNAL \comb_3|yo3~1_combout\ : std_logic;
SIGNAL \comb_3|yo3~q\ : std_logic;
SIGNAL \comb_3|always4~0_combout\ : std_logic;
SIGNAL \comb_3|Add0~0_combout\ : std_logic;
SIGNAL \comb_3|timer[0]~feeder_combout\ : std_logic;
SIGNAL \comb_3|Add0~1\ : std_logic;
SIGNAL \comb_3|Add0~2_combout\ : std_logic;
SIGNAL \comb_3|timer[1]~feeder_combout\ : std_logic;
SIGNAL \comb_3|Add0~3\ : std_logic;
SIGNAL \comb_3|Add0~4_combout\ : std_logic;
SIGNAL \comb_3|timer[2]~feeder_combout\ : std_logic;
SIGNAL \comb_3|Add0~5\ : std_logic;
SIGNAL \comb_3|Add0~6_combout\ : std_logic;
SIGNAL \comb_3|timer[3]~feeder_combout\ : std_logic;
SIGNAL \comb_3|Add0~7\ : std_logic;
SIGNAL \comb_3|Add0~8_combout\ : std_logic;
SIGNAL \comb_3|Add0~9\ : std_logic;
SIGNAL \comb_3|Add0~10_combout\ : std_logic;
SIGNAL \comb_3|Add0~11\ : std_logic;
SIGNAL \comb_3|Add0~12_combout\ : std_logic;
SIGNAL \comb_3|Add0~13\ : std_logic;
SIGNAL \comb_3|Add0~14_combout\ : std_logic;
SIGNAL \comb_3|Add0~15\ : std_logic;
SIGNAL \comb_3|Add0~16_combout\ : std_logic;
SIGNAL \comb_3|Add0~17\ : std_logic;
SIGNAL \comb_3|Add0~18_combout\ : std_logic;
SIGNAL \comb_3|Add0~19\ : std_logic;
SIGNAL \comb_3|Add0~20_combout\ : std_logic;
SIGNAL \comb_3|Add0~21\ : std_logic;
SIGNAL \comb_3|Add0~22_combout\ : std_logic;
SIGNAL \comb_3|Add0~23\ : std_logic;
SIGNAL \comb_3|Add0~24_combout\ : std_logic;
SIGNAL \comb_3|Add1~25\ : std_logic;
SIGNAL \comb_3|Add1~26_combout\ : std_logic;
SIGNAL \comb_3|LessThan0~3_combout\ : std_logic;
SIGNAL \comb_3|countdecr2~3_combout\ : std_logic;
SIGNAL \comb_3|countdecr2~feeder_combout\ : std_logic;
SIGNAL \comb_3|countdecr2~q\ : std_logic;
SIGNAL \comb_3|countdecr2~clkctrl_outclk\ : std_logic;
SIGNAL \comb_3|countneg2[0]~9_combout\ : std_logic;
SIGNAL \comb_3|countneg2[2]~6\ : std_logic;
SIGNAL \comb_3|countneg2[3]~7_combout\ : std_logic;
SIGNAL \sensor_out~input_o\ : std_logic;
SIGNAL \comb_3|comb~0_combout\ : std_logic;
SIGNAL \comb_3|comb~1_combout\ : std_logic;
SIGNAL \comb_3|nextout~combout\ : std_logic;
SIGNAL \comb_3|stateout~q\ : std_logic;
SIGNAL \comb_3|stateout~clkctrl_outclk\ : std_logic;
SIGNAL \comb_3|countneg[0]~9_combout\ : std_logic;
SIGNAL \comb_3|countneg[1]~3_combout\ : std_logic;
SIGNAL \comb_3|countneg[1]~4\ : std_logic;
SIGNAL \comb_3|countneg[2]~5_combout\ : std_logic;
SIGNAL \comb_3|countneg[2]~6\ : std_logic;
SIGNAL \comb_3|countneg[3]~7_combout\ : std_logic;
SIGNAL \comb_3|always5~1_combout\ : std_logic;
SIGNAL \sensor_in~input_o\ : std_logic;
SIGNAL \comb_3|comb~3_combout\ : std_logic;
SIGNAL \comb_3|comb~2_combout\ : std_logic;
SIGNAL \comb_3|next~combout\ : std_logic;
SIGNAL \comb_3|state~feeder_combout\ : std_logic;
SIGNAL \comb_3|state~q\ : std_logic;
SIGNAL \comb_3|always5~0_combout\ : std_logic;
SIGNAL \comb_3|always5~0clkctrl_outclk\ : std_logic;
SIGNAL \comb_3|Add5~0_combout\ : std_logic;
SIGNAL \comb_3|Add6~0_combout\ : std_logic;
SIGNAL \comb_3|countres[0]~feeder_combout\ : std_logic;
SIGNAL \comb_3|countpos[1]~3_combout\ : std_logic;
SIGNAL \comb_3|LessThan1~0_combout\ : std_logic;
SIGNAL \comb_3|LessThan1~1_combout\ : std_logic;
SIGNAL \comb_3|Add5~1\ : std_logic;
SIGNAL \comb_3|Add5~2_combout\ : std_logic;
SIGNAL \comb_3|Add6~1\ : std_logic;
SIGNAL \comb_3|Add6~2_combout\ : std_logic;
SIGNAL \comb_3|comb_502|Decoder0~1_combout\ : std_logic;
SIGNAL \comb_3|countpos[0]~7_combout\ : std_logic;
SIGNAL \comb_3|countpos[1]~4\ : std_logic;
SIGNAL \comb_3|countpos[2]~5_combout\ : std_logic;
SIGNAL \comb_3|countpos[2]~6\ : std_logic;
SIGNAL \comb_3|countpos[3]~8_combout\ : std_logic;
SIGNAL \comb_3|Add5~3\ : std_logic;
SIGNAL \comb_3|Add5~5\ : std_logic;
SIGNAL \comb_3|Add5~6_combout\ : std_logic;
SIGNAL \comb_3|Add5~4_combout\ : std_logic;
SIGNAL \comb_3|Add6~3\ : std_logic;
SIGNAL \comb_3|Add6~5\ : std_logic;
SIGNAL \comb_3|Add6~6_combout\ : std_logic;
SIGNAL \comb_3|LessThan2~0_combout\ : std_logic;
SIGNAL \comb_3|LessThan2~1_combout\ : std_logic;
SIGNAL \comb_3|countneg2[1]~3_combout\ : std_logic;
SIGNAL \comb_3|countneg2[1]~4\ : std_logic;
SIGNAL \comb_3|countneg2[2]~5_combout\ : std_logic;
SIGNAL \comb_3|Add6~4_combout\ : std_logic;
SIGNAL \comb_3|comb_502|Mux3~0_combout\ : std_logic;
SIGNAL \comb_3|comb_502|Decoder0~0_combout\ : std_logic;
SIGNAL \comb_3|comb_502|Mux1~0_combout\ : std_logic;
SIGNAL \comb_3|comb_502|Mux0~0_combout\ : std_logic;
SIGNAL \s1|g_out~0_combout\ : std_logic;
SIGNAL \s2|g_out~0_combout\ : std_logic;
SIGNAL \s3|g_out~0_combout\ : std_logic;
SIGNAL \s4|g_out~0_combout\ : std_logic;
SIGNAL \s1|y_out~0_combout\ : std_logic;
SIGNAL \s2|y_out~0_combout\ : std_logic;
SIGNAL \s3|y_out~0_combout\ : std_logic;
SIGNAL \s4|y_out~0_combout\ : std_logic;
SIGNAL \comb_3|countneg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \comb_3|countpos\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \comb_3|countneg2\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \comb_3|comb_3|count\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \comb_3|countres\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \comb_3|password\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_3|timer\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_3|rsrv_counter\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ALT_INV_pass_rsv~input_o\ : std_logic;
SIGNAL \ALT_INV_sensor_s4~input_o\ : std_logic;
SIGNAL \ALT_INV_sensor_s3~input_o\ : std_logic;
SIGNAL \ALT_INV_sensor_s2~input_o\ : std_logic;
SIGNAL \ALT_INV_sensor_s1~input_o\ : std_logic;
SIGNAL \s4|ALT_INV_g_out~0_combout\ : std_logic;
SIGNAL \s3|ALT_INV_g_out~0_combout\ : std_logic;
SIGNAL \s2|ALT_INV_g_out~0_combout\ : std_logic;
SIGNAL \s1|ALT_INV_g_out~0_combout\ : std_logic;
SIGNAL \comb_3|comb_502|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \comb_3|comb_502|ALT_INV_Decoder0~1_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_sensor_in <= sensor_in;
ww_sensor_out <= sensor_out;
ww_pswrd <= pswrd;
ww_pass_in <= pass_in;
ww_pass_rsv <= pass_rsv;
ww_sensor_s1 <= sensor_s1;
ww_sensor_s2 <= sensor_s2;
ww_sensor_s3 <= sensor_s3;
ww_sensor_s4 <= sensor_s4;
green_light <= ww_green_light;
digs <= ww_digs;
g1_out <= ww_g1_out;
g2_out <= ww_g2_out;
g3_out <= ww_g3_out;
g4_out <= ww_g4_out;
y1_out <= ww_y1_out;
y2_out <= ww_y2_out;
y3_out <= ww_y3_out;
y4_out <= ww_y4_out;
r1_out <= ww_r1_out;
r2_out <= ww_r2_out;
r3_out <= ww_r3_out;
r4_out <= ww_r4_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\comb_3|countdecr2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \comb_3|countdecr2~q\);

\comb_3|always5~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \comb_3|always5~0_combout\);

\comb_3|comb_3|slow_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \comb_3|comb_3|slow_clk~q\);

\comb_3|stateout~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \comb_3|stateout~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_pass_rsv~input_o\ <= NOT \pass_rsv~input_o\;
\ALT_INV_sensor_s4~input_o\ <= NOT \sensor_s4~input_o\;
\ALT_INV_sensor_s3~input_o\ <= NOT \sensor_s3~input_o\;
\ALT_INV_sensor_s2~input_o\ <= NOT \sensor_s2~input_o\;
\ALT_INV_sensor_s1~input_o\ <= NOT \sensor_s1~input_o\;
\s4|ALT_INV_g_out~0_combout\ <= NOT \s4|g_out~0_combout\;
\s3|ALT_INV_g_out~0_combout\ <= NOT \s3|g_out~0_combout\;
\s2|ALT_INV_g_out~0_combout\ <= NOT \s2|g_out~0_combout\;
\s1|ALT_INV_g_out~0_combout\ <= NOT \s1|g_out~0_combout\;
\comb_3|comb_502|ALT_INV_Mux0~0_combout\ <= NOT \comb_3|comb_502|Mux0~0_combout\;
\comb_3|comb_502|ALT_INV_Decoder0~1_combout\ <= NOT \comb_3|comb_502|Decoder0~1_combout\;

-- Location: LCCOMB_X44_Y45_N20
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X22_Y0_N2
\green_light~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|green_light~combout\,
	devoe => ww_devoe,
	o => \green_light~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\digs[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|comb_502|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \digs[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\digs[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \digs[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\digs[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|comb_502|Decoder0~0_combout\,
	devoe => ww_devoe,
	o => \digs[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\digs[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|comb_502|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \digs[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\digs[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|comb_502|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \digs[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\digs[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|comb_502|ALT_INV_Decoder0~1_combout\,
	devoe => ww_devoe,
	o => \digs[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\digs[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|comb_502|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \digs[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N16
\g1_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1|ALT_INV_g_out~0_combout\,
	devoe => ww_devoe,
	o => \g1_out~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\g2_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|ALT_INV_g_out~0_combout\,
	devoe => ww_devoe,
	o => \g2_out~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\g3_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s3|ALT_INV_g_out~0_combout\,
	devoe => ww_devoe,
	o => \g3_out~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\g4_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s4|ALT_INV_g_out~0_combout\,
	devoe => ww_devoe,
	o => \g4_out~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\y1_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1|y_out~0_combout\,
	devoe => ww_devoe,
	o => \y1_out~output_o\);

-- Location: IOOBUF_X20_Y0_N30
\y2_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|y_out~0_combout\,
	devoe => ww_devoe,
	o => \y2_out~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\y3_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s3|y_out~0_combout\,
	devoe => ww_devoe,
	o => \y3_out~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\y4_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s4|y_out~0_combout\,
	devoe => ww_devoe,
	o => \y4_out~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\r1_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_sensor_s1~input_o\,
	devoe => ww_devoe,
	o => \r1_out~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\r2_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_sensor_s2~input_o\,
	devoe => ww_devoe,
	o => \r2_out~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\r3_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_sensor_s3~input_o\,
	devoe => ww_devoe,
	o => \r3_out~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\r4_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_sensor_s4~input_o\,
	devoe => ww_devoe,
	o => \r4_out~output_o\);

-- Location: IOIBUF_X56_Y54_N1
\pswrd[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pswrd(2),
	o => \pswrd[2]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\pass_rsv~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pass_rsv,
	o => \pass_rsv~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\pswrd[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pswrd(3),
	o => \pswrd[3]~input_o\);

-- Location: LCCOMB_X50_Y50_N28
\comb_3|password[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|password[3]~feeder_combout\ = \pswrd[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pswrd[3]~input_o\,
	combout => \comb_3|password[3]~feeder_combout\);

-- Location: FF_X50_Y50_N29
\comb_3|password[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pass_rsv~input_o\,
	d => \comb_3|password[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|password\(3));

-- Location: FF_X50_Y50_N7
\comb_3|password[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pass_rsv~input_o\,
	asdata => \pswrd[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|password\(2));

-- Location: LCCOMB_X50_Y50_N6
\comb_3|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~1_combout\ = (\pswrd[2]~input_o\ & (\comb_3|password\(2) & (\comb_3|password\(3) $ (!\pswrd[3]~input_o\)))) # (!\pswrd[2]~input_o\ & (!\comb_3|password\(2) & (\comb_3|password\(3) $ (!\pswrd[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pswrd[2]~input_o\,
	datab => \comb_3|password\(3),
	datac => \comb_3|password\(2),
	datad => \pswrd[3]~input_o\,
	combout => \comb_3|Equal0~1_combout\);

-- Location: IOIBUF_X58_Y54_N29
\pswrd[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pswrd(1),
	o => \pswrd[1]~input_o\);

-- Location: LCCOMB_X50_Y50_N12
\comb_3|password[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|password[1]~feeder_combout\ = \pswrd[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pswrd[1]~input_o\,
	combout => \comb_3|password[1]~feeder_combout\);

-- Location: FF_X50_Y50_N13
\comb_3|password[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pass_rsv~input_o\,
	d => \comb_3|password[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|password\(1));

-- Location: IOIBUF_X54_Y54_N15
\pswrd[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pswrd(0),
	o => \pswrd[0]~input_o\);

-- Location: FF_X50_Y50_N19
\comb_3|password[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pass_rsv~input_o\,
	asdata => \pswrd[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|password\(0));

-- Location: LCCOMB_X50_Y50_N18
\comb_3|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~0_combout\ = (\comb_3|password\(1) & (\pswrd[1]~input_o\ & (\pswrd[0]~input_o\ $ (!\comb_3|password\(0))))) # (!\comb_3|password\(1) & (!\pswrd[1]~input_o\ & (\pswrd[0]~input_o\ $ (!\comb_3|password\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|password\(1),
	datab => \pswrd[0]~input_o\,
	datac => \comb_3|password\(0),
	datad => \pswrd[1]~input_o\,
	combout => \comb_3|Equal0~0_combout\);

-- Location: LCCOMB_X50_Y50_N16
\comb_3|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~2_combout\ = (\comb_3|Equal0~1_combout\ & \comb_3|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Equal0~1_combout\,
	datad => \comb_3|Equal0~0_combout\,
	combout => \comb_3|Equal0~2_combout\);

-- Location: IOIBUF_X51_Y54_N29
\pass_in~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pass_in,
	o => \pass_in~input_o\);

-- Location: LCCOMB_X49_Y38_N16
\comb_3|green_light\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|green_light~combout\ = (\pass_in~input_o\ & ((\comb_3|Equal0~2_combout\) # (\comb_3|green_light~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|Equal0~2_combout\,
	datac => \pass_in~input_o\,
	datad => \comb_3|green_light~combout\,
	combout => \comb_3|green_light~combout\);

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: FF_X51_Y37_N23
\comb_3|comb_3|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|comb_3|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|comb_3|count\(23));

-- Location: FF_X51_Y38_N25
\comb_3|comb_3|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|comb_3|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|comb_3|count\(8));

-- Location: LCCOMB_X51_Y38_N8
\comb_3|comb_3|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Add0~0_combout\ = \comb_3|comb_3|count\(0) $ (VCC)
-- \comb_3|comb_3|Add0~1\ = CARRY(\comb_3|comb_3|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|comb_3|count\(0),
	datad => VCC,
	combout => \comb_3|comb_3|Add0~0_combout\,
	cout => \comb_3|comb_3|Add0~1\);

-- Location: FF_X51_Y38_N9
\comb_3|comb_3|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|comb_3|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|comb_3|count\(0));

-- Location: LCCOMB_X51_Y38_N10
\comb_3|comb_3|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Add0~2_combout\ = (\comb_3|comb_3|count\(1) & (!\comb_3|comb_3|Add0~1\)) # (!\comb_3|comb_3|count\(1) & ((\comb_3|comb_3|Add0~1\) # (GND)))
-- \comb_3|comb_3|Add0~3\ = CARRY((!\comb_3|comb_3|Add0~1\) # (!\comb_3|comb_3|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|count\(1),
	datad => VCC,
	cin => \comb_3|comb_3|Add0~1\,
	combout => \comb_3|comb_3|Add0~2_combout\,
	cout => \comb_3|comb_3|Add0~3\);

-- Location: FF_X51_Y38_N11
\comb_3|comb_3|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|comb_3|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|comb_3|count\(1));

-- Location: LCCOMB_X51_Y38_N12
\comb_3|comb_3|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Add0~4_combout\ = (\comb_3|comb_3|count\(2) & (\comb_3|comb_3|Add0~3\ $ (GND))) # (!\comb_3|comb_3|count\(2) & (!\comb_3|comb_3|Add0~3\ & VCC))
-- \comb_3|comb_3|Add0~5\ = CARRY((\comb_3|comb_3|count\(2) & !\comb_3|comb_3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|count\(2),
	datad => VCC,
	cin => \comb_3|comb_3|Add0~3\,
	combout => \comb_3|comb_3|Add0~4_combout\,
	cout => \comb_3|comb_3|Add0~5\);

-- Location: FF_X51_Y38_N13
\comb_3|comb_3|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|comb_3|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|comb_3|count\(2));

-- Location: LCCOMB_X51_Y38_N14
\comb_3|comb_3|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Add0~6_combout\ = (\comb_3|comb_3|count\(3) & (!\comb_3|comb_3|Add0~5\)) # (!\comb_3|comb_3|count\(3) & ((\comb_3|comb_3|Add0~5\) # (GND)))
-- \comb_3|comb_3|Add0~7\ = CARRY((!\comb_3|comb_3|Add0~5\) # (!\comb_3|comb_3|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|comb_3|count\(3),
	datad => VCC,
	cin => \comb_3|comb_3|Add0~5\,
	combout => \comb_3|comb_3|Add0~6_combout\,
	cout => \comb_3|comb_3|Add0~7\);

-- Location: FF_X51_Y38_N15
\comb_3|comb_3|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|comb_3|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|comb_3|count\(3));

-- Location: LCCOMB_X51_Y38_N16
\comb_3|comb_3|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Add0~8_combout\ = (\comb_3|comb_3|count\(4) & (\comb_3|comb_3|Add0~7\ $ (GND))) # (!\comb_3|comb_3|count\(4) & (!\comb_3|comb_3|Add0~7\ & VCC))
-- \comb_3|comb_3|Add0~9\ = CARRY((\comb_3|comb_3|count\(4) & !\comb_3|comb_3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|comb_3|count\(4),
	datad => VCC,
	cin => \comb_3|comb_3|Add0~7\,
	combout => \comb_3|comb_3|Add0~8_combout\,
	cout => \comb_3|comb_3|Add0~9\);

-- Location: FF_X51_Y38_N17
\comb_3|comb_3|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|comb_3|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|comb_3|count\(4));

-- Location: LCCOMB_X51_Y38_N18
\comb_3|comb_3|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Add0~10_combout\ = (\comb_3|comb_3|count\(5) & (!\comb_3|comb_3|Add0~9\)) # (!\comb_3|comb_3|count\(5) & ((\comb_3|comb_3|Add0~9\) # (GND)))
-- \comb_3|comb_3|Add0~11\ = CARRY((!\comb_3|comb_3|Add0~9\) # (!\comb_3|comb_3|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|comb_3|count\(5),
	datad => VCC,
	cin => \comb_3|comb_3|Add0~9\,
	combout => \comb_3|comb_3|Add0~10_combout\,
	cout => \comb_3|comb_3|Add0~11\);

-- Location: FF_X51_Y38_N19
\comb_3|comb_3|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|comb_3|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|comb_3|count\(5));

-- Location: LCCOMB_X51_Y38_N20
\comb_3|comb_3|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Add0~12_combout\ = (\comb_3|comb_3|count\(6) & (\comb_3|comb_3|Add0~11\ $ (GND))) # (!\comb_3|comb_3|count\(6) & (!\comb_3|comb_3|Add0~11\ & VCC))
-- \comb_3|comb_3|Add0~13\ = CARRY((\comb_3|comb_3|count\(6) & !\comb_3|comb_3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|comb_3|count\(6),
	datad => VCC,
	cin => \comb_3|comb_3|Add0~11\,
	combout => \comb_3|comb_3|Add0~12_combout\,
	cout => \comb_3|comb_3|Add0~13\);

-- Location: LCCOMB_X50_Y38_N6
\comb_3|comb_3|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|count~0_combout\ = (\comb_3|comb_3|Add0~12_combout\ & (((!\comb_3|comb_3|Equal0~6_combout\) # (!\comb_3|comb_3|Equal0~4_combout\)) # (!\comb_3|comb_3|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|Equal0~7_combout\,
	datab => \comb_3|comb_3|Equal0~4_combout\,
	datac => \comb_3|comb_3|Equal0~6_combout\,
	datad => \comb_3|comb_3|Add0~12_combout\,
	combout => \comb_3|comb_3|count~0_combout\);

-- Location: FF_X50_Y38_N7
\comb_3|comb_3|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|comb_3|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|comb_3|count\(6));

-- Location: LCCOMB_X51_Y38_N22
\comb_3|comb_3|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Add0~14_combout\ = (\comb_3|comb_3|count\(7) & (!\comb_3|comb_3|Add0~13\)) # (!\comb_3|comb_3|count\(7) & ((\comb_3|comb_3|Add0~13\) # (GND)))
-- \comb_3|comb_3|Add0~15\ = CARRY((!\comb_3|comb_3|Add0~13\) # (!\comb_3|comb_3|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|count\(7),
	datad => VCC,
	cin => \comb_3|comb_3|Add0~13\,
	combout => \comb_3|comb_3|Add0~14_combout\,
	cout => \comb_3|comb_3|Add0~15\);

-- Location: FF_X51_Y38_N23
\comb_3|comb_3|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|comb_3|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|comb_3|count\(7));

-- Location: LCCOMB_X51_Y38_N24
\comb_3|comb_3|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Add0~16_combout\ = (\comb_3|comb_3|count\(8) & (\comb_3|comb_3|Add0~15\ $ (GND))) # (!\comb_3|comb_3|count\(8) & (!\comb_3|comb_3|Add0~15\ & VCC))
-- \comb_3|comb_3|Add0~17\ = CARRY((\comb_3|comb_3|count\(8) & !\comb_3|comb_3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|comb_3|count\(8),
	datad => VCC,
	cin => \comb_3|comb_3|Add0~15\,
	combout => \comb_3|comb_3|Add0~16_combout\,
	cout => \comb_3|comb_3|Add0~17\);

-- Location: FF_X51_Y38_N27
\comb_3|comb_3|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|comb_3|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|comb_3|count\(9));

-- Location: LCCOMB_X51_Y38_N26
\comb_3|comb_3|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Add0~18_combout\ = (\comb_3|comb_3|count\(9) & (!\comb_3|comb_3|Add0~17\)) # (!\comb_3|comb_3|count\(9) & ((\comb_3|comb_3|Add0~17\) # (GND)))
-- \comb_3|comb_3|Add0~19\ = CARRY((!\comb_3|comb_3|Add0~17\) # (!\comb_3|comb_3|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|count\(9),
	datad => VCC,
	cin => \comb_3|comb_3|Add0~17\,
	combout => \comb_3|comb_3|Add0~18_combout\,
	cout => \comb_3|comb_3|Add0~19\);

-- Location: LCCOMB_X50_Y38_N14
\comb_3|comb_3|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|count~1_combout\ = (\comb_3|comb_3|Add0~22_combout\ & (((!\comb_3|comb_3|Equal0~4_combout\) # (!\comb_3|comb_3|Equal0~6_combout\)) # (!\comb_3|comb_3|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|Equal0~7_combout\,
	datab => \comb_3|comb_3|Add0~22_combout\,
	datac => \comb_3|comb_3|Equal0~6_combout\,
	datad => \comb_3|comb_3|Equal0~4_combout\,
	combout => \comb_3|comb_3|count~1_combout\);

-- Location: FF_X50_Y38_N15
\comb_3|comb_3|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|comb_3|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|comb_3|count\(11));

-- Location: LCCOMB_X51_Y38_N28
\comb_3|comb_3|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Add0~20_combout\ = (\comb_3|comb_3|count\(10) & (\comb_3|comb_3|Add0~19\ $ (GND))) # (!\comb_3|comb_3|count\(10) & (!\comb_3|comb_3|Add0~19\ & VCC))
-- \comb_3|comb_3|Add0~21\ = CARRY((\comb_3|comb_3|count\(10) & !\comb_3|comb_3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|count\(10),
	datad => VCC,
	cin => \comb_3|comb_3|Add0~19\,
	combout => \comb_3|comb_3|Add0~20_combout\,
	cout => \comb_3|comb_3|Add0~21\);

-- Location: FF_X51_Y38_N29
\comb_3|comb_3|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|comb_3|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|comb_3|count\(10));

-- Location: LCCOMB_X51_Y38_N30
\comb_3|comb_3|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Add0~22_combout\ = (\comb_3|comb_3|count\(11) & (!\comb_3|comb_3|Add0~21\)) # (!\comb_3|comb_3|count\(11) & ((\comb_3|comb_3|Add0~21\) # (GND)))
-- \comb_3|comb_3|Add0~23\ = CARRY((!\comb_3|comb_3|Add0~21\) # (!\comb_3|comb_3|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|count\(11),
	datad => VCC,
	cin => \comb_3|comb_3|Add0~21\,
	combout => \comb_3|comb_3|Add0~22_combout\,
	cout => \comb_3|comb_3|Add0~23\);

-- Location: LCCOMB_X51_Y38_N6
\comb_3|comb_3|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Equal0~2_combout\ = (!\comb_3|comb_3|Add0~16_combout\ & (!\comb_3|comb_3|Add0~18_combout\ & (\comb_3|comb_3|Add0~22_combout\ & !\comb_3|comb_3|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|Add0~16_combout\,
	datab => \comb_3|comb_3|Add0~18_combout\,
	datac => \comb_3|comb_3|Add0~22_combout\,
	datad => \comb_3|comb_3|Add0~20_combout\,
	combout => \comb_3|comb_3|Equal0~2_combout\);

-- Location: LCCOMB_X51_Y38_N4
\comb_3|comb_3|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Equal0~1_combout\ = (!\comb_3|comb_3|Add0~8_combout\ & (!\comb_3|comb_3|Add0~14_combout\ & (!\comb_3|comb_3|Add0~10_combout\ & \comb_3|comb_3|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|Add0~8_combout\,
	datab => \comb_3|comb_3|Add0~14_combout\,
	datac => \comb_3|comb_3|Add0~10_combout\,
	datad => \comb_3|comb_3|Add0~12_combout\,
	combout => \comb_3|comb_3|Equal0~1_combout\);

-- Location: LCCOMB_X52_Y38_N0
\comb_3|comb_3|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Equal0~0_combout\ = (!\comb_3|comb_3|Add0~6_combout\ & (!\comb_3|comb_3|Add0~0_combout\ & (!\comb_3|comb_3|Add0~2_combout\ & !\comb_3|comb_3|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|Add0~6_combout\,
	datab => \comb_3|comb_3|Add0~0_combout\,
	datac => \comb_3|comb_3|Add0~2_combout\,
	datad => \comb_3|comb_3|Add0~4_combout\,
	combout => \comb_3|comb_3|Equal0~0_combout\);

-- Location: LCCOMB_X51_Y37_N26
\comb_3|comb_3|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|count~2_combout\ = (\comb_3|comb_3|Add0~24_combout\ & (((!\comb_3|comb_3|Equal0~7_combout\) # (!\comb_3|comb_3|Equal0~4_combout\)) # (!\comb_3|comb_3|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|Add0~24_combout\,
	datab => \comb_3|comb_3|Equal0~6_combout\,
	datac => \comb_3|comb_3|Equal0~4_combout\,
	datad => \comb_3|comb_3|Equal0~7_combout\,
	combout => \comb_3|comb_3|count~2_combout\);

-- Location: FF_X51_Y37_N27
\comb_3|comb_3|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|comb_3|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|comb_3|count\(12));

-- Location: LCCOMB_X51_Y37_N0
\comb_3|comb_3|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Add0~24_combout\ = (\comb_3|comb_3|count\(12) & (\comb_3|comb_3|Add0~23\ $ (GND))) # (!\comb_3|comb_3|count\(12) & (!\comb_3|comb_3|Add0~23\ & VCC))
-- \comb_3|comb_3|Add0~25\ = CARRY((\comb_3|comb_3|count\(12) & !\comb_3|comb_3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|count\(12),
	datad => VCC,
	cin => \comb_3|comb_3|Add0~23\,
	combout => \comb_3|comb_3|Add0~24_combout\,
	cout => \comb_3|comb_3|Add0~25\);

-- Location: LCCOMB_X51_Y37_N28
\comb_3|comb_3|count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|count~3_combout\ = (\comb_3|comb_3|Add0~26_combout\ & (((!\comb_3|comb_3|Equal0~7_combout\) # (!\comb_3|comb_3|Equal0~4_combout\)) # (!\comb_3|comb_3|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|Add0~26_combout\,
	datab => \comb_3|comb_3|Equal0~6_combout\,
	datac => \comb_3|comb_3|Equal0~4_combout\,
	datad => \comb_3|comb_3|Equal0~7_combout\,
	combout => \comb_3|comb_3|count~3_combout\);

-- Location: FF_X51_Y37_N29
\comb_3|comb_3|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|comb_3|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|comb_3|count\(13));

-- Location: LCCOMB_X51_Y37_N2
\comb_3|comb_3|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Add0~26_combout\ = (\comb_3|comb_3|count\(13) & (!\comb_3|comb_3|Add0~25\)) # (!\comb_3|comb_3|count\(13) & ((\comb_3|comb_3|Add0~25\) # (GND)))
-- \comb_3|comb_3|Add0~27\ = CARRY((!\comb_3|comb_3|Add0~25\) # (!\comb_3|comb_3|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|comb_3|count\(13),
	datad => VCC,
	cin => \comb_3|comb_3|Add0~25\,
	combout => \comb_3|comb_3|Add0~26_combout\,
	cout => \comb_3|comb_3|Add0~27\);

-- Location: LCCOMB_X51_Y37_N30
\comb_3|comb_3|count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|count~4_combout\ = (\comb_3|comb_3|Add0~28_combout\ & (((!\comb_3|comb_3|Equal0~7_combout\) # (!\comb_3|comb_3|Equal0~4_combout\)) # (!\comb_3|comb_3|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|Add0~28_combout\,
	datab => \comb_3|comb_3|Equal0~6_combout\,
	datac => \comb_3|comb_3|Equal0~4_combout\,
	datad => \comb_3|comb_3|Equal0~7_combout\,
	combout => \comb_3|comb_3|count~4_combout\);

-- Location: FF_X51_Y37_N31
\comb_3|comb_3|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|comb_3|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|comb_3|count\(14));

-- Location: LCCOMB_X51_Y37_N4
\comb_3|comb_3|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Add0~28_combout\ = (\comb_3|comb_3|count\(14) & (\comb_3|comb_3|Add0~27\ $ (GND))) # (!\comb_3|comb_3|count\(14) & (!\comb_3|comb_3|Add0~27\ & VCC))
-- \comb_3|comb_3|Add0~29\ = CARRY((\comb_3|comb_3|count\(14) & !\comb_3|comb_3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|count\(14),
	datad => VCC,
	cin => \comb_3|comb_3|Add0~27\,
	combout => \comb_3|comb_3|Add0~28_combout\,
	cout => \comb_3|comb_3|Add0~29\);

-- Location: FF_X51_Y37_N7
\comb_3|comb_3|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|comb_3|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|comb_3|count\(15));

-- Location: LCCOMB_X51_Y37_N6
\comb_3|comb_3|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Add0~30_combout\ = (\comb_3|comb_3|count\(15) & (!\comb_3|comb_3|Add0~29\)) # (!\comb_3|comb_3|count\(15) & ((\comb_3|comb_3|Add0~29\) # (GND)))
-- \comb_3|comb_3|Add0~31\ = CARRY((!\comb_3|comb_3|Add0~29\) # (!\comb_3|comb_3|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|count\(15),
	datad => VCC,
	cin => \comb_3|comb_3|Add0~29\,
	combout => \comb_3|comb_3|Add0~30_combout\,
	cout => \comb_3|comb_3|Add0~31\);

-- Location: LCCOMB_X51_Y38_N0
\comb_3|comb_3|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Equal0~3_combout\ = (\comb_3|comb_3|Add0~24_combout\ & (\comb_3|comb_3|Add0~26_combout\ & (\comb_3|comb_3|Add0~28_combout\ & !\comb_3|comb_3|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|Add0~24_combout\,
	datab => \comb_3|comb_3|Add0~26_combout\,
	datac => \comb_3|comb_3|Add0~28_combout\,
	datad => \comb_3|comb_3|Add0~30_combout\,
	combout => \comb_3|comb_3|Equal0~3_combout\);

-- Location: LCCOMB_X51_Y38_N2
\comb_3|comb_3|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Equal0~4_combout\ = (\comb_3|comb_3|Equal0~2_combout\ & (\comb_3|comb_3|Equal0~1_combout\ & (\comb_3|comb_3|Equal0~0_combout\ & \comb_3|comb_3|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|Equal0~2_combout\,
	datab => \comb_3|comb_3|Equal0~1_combout\,
	datac => \comb_3|comb_3|Equal0~0_combout\,
	datad => \comb_3|comb_3|Equal0~3_combout\,
	combout => \comb_3|comb_3|Equal0~4_combout\);

-- Location: LCCOMB_X51_Y37_N8
\comb_3|comb_3|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Add0~32_combout\ = (\comb_3|comb_3|count\(16) & (\comb_3|comb_3|Add0~31\ $ (GND))) # (!\comb_3|comb_3|count\(16) & (!\comb_3|comb_3|Add0~31\ & VCC))
-- \comb_3|comb_3|Add0~33\ = CARRY((\comb_3|comb_3|count\(16) & !\comb_3|comb_3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|count\(16),
	datad => VCC,
	cin => \comb_3|comb_3|Add0~31\,
	combout => \comb_3|comb_3|Add0~32_combout\,
	cout => \comb_3|comb_3|Add0~33\);

-- Location: LCCOMB_X51_Y37_N10
\comb_3|comb_3|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Add0~34_combout\ = (\comb_3|comb_3|count\(17) & (!\comb_3|comb_3|Add0~33\)) # (!\comb_3|comb_3|count\(17) & ((\comb_3|comb_3|Add0~33\) # (GND)))
-- \comb_3|comb_3|Add0~35\ = CARRY((!\comb_3|comb_3|Add0~33\) # (!\comb_3|comb_3|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|count\(17),
	datad => VCC,
	cin => \comb_3|comb_3|Add0~33\,
	combout => \comb_3|comb_3|Add0~34_combout\,
	cout => \comb_3|comb_3|Add0~35\);

-- Location: FF_X51_Y37_N11
\comb_3|comb_3|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|comb_3|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|comb_3|count\(17));

-- Location: LCCOMB_X51_Y37_N12
\comb_3|comb_3|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Add0~36_combout\ = (\comb_3|comb_3|count\(18) & (\comb_3|comb_3|Add0~35\ $ (GND))) # (!\comb_3|comb_3|count\(18) & (!\comb_3|comb_3|Add0~35\ & VCC))
-- \comb_3|comb_3|Add0~37\ = CARRY((\comb_3|comb_3|count\(18) & !\comb_3|comb_3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|count\(18),
	datad => VCC,
	cin => \comb_3|comb_3|Add0~35\,
	combout => \comb_3|comb_3|Add0~36_combout\,
	cout => \comb_3|comb_3|Add0~37\);

-- Location: LCCOMB_X50_Y38_N28
\comb_3|comb_3|count~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|count~7_combout\ = (\comb_3|comb_3|Add0~36_combout\ & (((!\comb_3|comb_3|Equal0~4_combout\) # (!\comb_3|comb_3|Equal0~7_combout\)) # (!\comb_3|comb_3|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|Equal0~6_combout\,
	datab => \comb_3|comb_3|Add0~36_combout\,
	datac => \comb_3|comb_3|Equal0~7_combout\,
	datad => \comb_3|comb_3|Equal0~4_combout\,
	combout => \comb_3|comb_3|count~7_combout\);

-- Location: FF_X50_Y38_N29
\comb_3|comb_3|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|comb_3|count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|comb_3|count\(18));

-- Location: LCCOMB_X51_Y37_N14
\comb_3|comb_3|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Add0~38_combout\ = (\comb_3|comb_3|count\(19) & (!\comb_3|comb_3|Add0~37\)) # (!\comb_3|comb_3|count\(19) & ((\comb_3|comb_3|Add0~37\) # (GND)))
-- \comb_3|comb_3|Add0~39\ = CARRY((!\comb_3|comb_3|Add0~37\) # (!\comb_3|comb_3|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|comb_3|count\(19),
	datad => VCC,
	cin => \comb_3|comb_3|Add0~37\,
	combout => \comb_3|comb_3|Add0~38_combout\,
	cout => \comb_3|comb_3|Add0~39\);

-- Location: LCCOMB_X50_Y38_N26
\comb_3|comb_3|count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|count~6_combout\ = (\comb_3|comb_3|Add0~38_combout\ & (((!\comb_3|comb_3|Equal0~6_combout\) # (!\comb_3|comb_3|Equal0~4_combout\)) # (!\comb_3|comb_3|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|Equal0~7_combout\,
	datab => \comb_3|comb_3|Equal0~4_combout\,
	datac => \comb_3|comb_3|Equal0~6_combout\,
	datad => \comb_3|comb_3|Add0~38_combout\,
	combout => \comb_3|comb_3|count~6_combout\);

-- Location: FF_X50_Y38_N27
\comb_3|comb_3|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|comb_3|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|comb_3|count\(19));

-- Location: LCCOMB_X51_Y37_N16
\comb_3|comb_3|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Add0~40_combout\ = (\comb_3|comb_3|count\(20) & (\comb_3|comb_3|Add0~39\ $ (GND))) # (!\comb_3|comb_3|count\(20) & (!\comb_3|comb_3|Add0~39\ & VCC))
-- \comb_3|comb_3|Add0~41\ = CARRY((\comb_3|comb_3|count\(20) & !\comb_3|comb_3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|count\(20),
	datad => VCC,
	cin => \comb_3|comb_3|Add0~39\,
	combout => \comb_3|comb_3|Add0~40_combout\,
	cout => \comb_3|comb_3|Add0~41\);

-- Location: LCCOMB_X50_Y38_N8
\comb_3|comb_3|count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|count~5_combout\ = (\comb_3|comb_3|Add0~40_combout\ & (((!\comb_3|comb_3|Equal0~4_combout\) # (!\comb_3|comb_3|Equal0~6_combout\)) # (!\comb_3|comb_3|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|Equal0~7_combout\,
	datab => \comb_3|comb_3|Add0~40_combout\,
	datac => \comb_3|comb_3|Equal0~6_combout\,
	datad => \comb_3|comb_3|Equal0~4_combout\,
	combout => \comb_3|comb_3|count~5_combout\);

-- Location: FF_X50_Y38_N9
\comb_3|comb_3|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|comb_3|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|comb_3|count\(20));

-- Location: LCCOMB_X51_Y37_N18
\comb_3|comb_3|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Add0~42_combout\ = (\comb_3|comb_3|count\(21) & (!\comb_3|comb_3|Add0~41\)) # (!\comb_3|comb_3|count\(21) & ((\comb_3|comb_3|Add0~41\) # (GND)))
-- \comb_3|comb_3|Add0~43\ = CARRY((!\comb_3|comb_3|Add0~41\) # (!\comb_3|comb_3|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|count\(21),
	datad => VCC,
	cin => \comb_3|comb_3|Add0~41\,
	combout => \comb_3|comb_3|Add0~42_combout\,
	cout => \comb_3|comb_3|Add0~43\);

-- Location: LCCOMB_X51_Y37_N20
\comb_3|comb_3|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Add0~44_combout\ = (\comb_3|comb_3|count\(22) & (\comb_3|comb_3|Add0~43\ $ (GND))) # (!\comb_3|comb_3|count\(22) & (!\comb_3|comb_3|Add0~43\ & VCC))
-- \comb_3|comb_3|Add0~45\ = CARRY((\comb_3|comb_3|count\(22) & !\comb_3|comb_3|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|comb_3|count\(22),
	datad => VCC,
	cin => \comb_3|comb_3|Add0~43\,
	combout => \comb_3|comb_3|Add0~44_combout\,
	cout => \comb_3|comb_3|Add0~45\);

-- Location: LCCOMB_X50_Y38_N22
\comb_3|comb_3|count~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|count~10_combout\ = (\comb_3|comb_3|Add0~44_combout\ & (((!\comb_3|comb_3|Equal0~4_combout\) # (!\comb_3|comb_3|Equal0~6_combout\)) # (!\comb_3|comb_3|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|Equal0~7_combout\,
	datab => \comb_3|comb_3|Add0~44_combout\,
	datac => \comb_3|comb_3|Equal0~6_combout\,
	datad => \comb_3|comb_3|Equal0~4_combout\,
	combout => \comb_3|comb_3|count~10_combout\);

-- Location: FF_X50_Y38_N23
\comb_3|comb_3|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|comb_3|count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|comb_3|count\(22));

-- Location: LCCOMB_X51_Y37_N22
\comb_3|comb_3|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Add0~46_combout\ = (\comb_3|comb_3|count\(23) & (!\comb_3|comb_3|Add0~45\)) # (!\comb_3|comb_3|count\(23) & ((\comb_3|comb_3|Add0~45\) # (GND)))
-- \comb_3|comb_3|Add0~47\ = CARRY((!\comb_3|comb_3|Add0~45\) # (!\comb_3|comb_3|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|count\(23),
	datad => VCC,
	cin => \comb_3|comb_3|Add0~45\,
	combout => \comb_3|comb_3|Add0~46_combout\,
	cout => \comb_3|comb_3|Add0~47\);

-- Location: LCCOMB_X50_Y37_N0
\comb_3|comb_3|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Equal0~8_combout\ = (\comb_3|comb_3|Add0~42_combout\ & (\comb_3|comb_3|Add0~40_combout\ & (\comb_3|comb_3|Add0~44_combout\ & !\comb_3|comb_3|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|Add0~42_combout\,
	datab => \comb_3|comb_3|Add0~40_combout\,
	datac => \comb_3|comb_3|Add0~44_combout\,
	datad => \comb_3|comb_3|Add0~46_combout\,
	combout => \comb_3|comb_3|Equal0~8_combout\);

-- Location: LCCOMB_X50_Y38_N4
\comb_3|comb_3|count~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|count~11_combout\ = (\comb_3|comb_3|Add0~48_combout\ & (((!\comb_3|comb_3|Equal0~8_combout\) # (!\comb_3|comb_3|Equal0~4_combout\)) # (!\comb_3|comb_3|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|Equal0~6_combout\,
	datab => \comb_3|comb_3|Add0~48_combout\,
	datac => \comb_3|comb_3|Equal0~4_combout\,
	datad => \comb_3|comb_3|Equal0~8_combout\,
	combout => \comb_3|comb_3|count~11_combout\);

-- Location: FF_X50_Y38_N5
\comb_3|comb_3|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|comb_3|count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|comb_3|count\(24));

-- Location: LCCOMB_X51_Y37_N24
\comb_3|comb_3|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Add0~48_combout\ = \comb_3|comb_3|count\(24) $ (!\comb_3|comb_3|Add0~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|count\(24),
	cin => \comb_3|comb_3|Add0~47\,
	combout => \comb_3|comb_3|Add0~48_combout\);

-- Location: LCCOMB_X50_Y38_N30
\comb_3|comb_3|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Equal0~7_combout\ = (!\comb_3|comb_3|Add0~46_combout\ & (\comb_3|comb_3|Add0~48_combout\ & (\comb_3|comb_3|Add0~44_combout\ & \comb_3|comb_3|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|Add0~46_combout\,
	datab => \comb_3|comb_3|Add0~48_combout\,
	datac => \comb_3|comb_3|Add0~44_combout\,
	datad => \comb_3|comb_3|Equal0~5_combout\,
	combout => \comb_3|comb_3|Equal0~7_combout\);

-- Location: LCCOMB_X50_Y38_N16
\comb_3|comb_3|count~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|count~8_combout\ = (\comb_3|comb_3|Add0~32_combout\ & (((!\comb_3|comb_3|Equal0~6_combout\) # (!\comb_3|comb_3|Equal0~4_combout\)) # (!\comb_3|comb_3|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|Equal0~7_combout\,
	datab => \comb_3|comb_3|Equal0~4_combout\,
	datac => \comb_3|comb_3|Add0~32_combout\,
	datad => \comb_3|comb_3|Equal0~6_combout\,
	combout => \comb_3|comb_3|count~8_combout\);

-- Location: FF_X50_Y38_N17
\comb_3|comb_3|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|comb_3|count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|comb_3|count\(16));

-- Location: LCCOMB_X50_Y38_N24
\comb_3|comb_3|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Equal0~6_combout\ = (\comb_3|comb_3|Add0~32_combout\ & (!\comb_3|comb_3|Add0~34_combout\ & (\comb_3|comb_3|Add0~36_combout\ & \comb_3|comb_3|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|Add0~32_combout\,
	datab => \comb_3|comb_3|Add0~34_combout\,
	datac => \comb_3|comb_3|Add0~36_combout\,
	datad => \comb_3|comb_3|Add0~38_combout\,
	combout => \comb_3|comb_3|Equal0~6_combout\);

-- Location: LCCOMB_X50_Y38_N20
\comb_3|comb_3|count~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|count~9_combout\ = (\comb_3|comb_3|Add0~42_combout\ & (((!\comb_3|comb_3|Equal0~4_combout\) # (!\comb_3|comb_3|Equal0~7_combout\)) # (!\comb_3|comb_3|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|Add0~42_combout\,
	datab => \comb_3|comb_3|Equal0~6_combout\,
	datac => \comb_3|comb_3|Equal0~7_combout\,
	datad => \comb_3|comb_3|Equal0~4_combout\,
	combout => \comb_3|comb_3|count~9_combout\);

-- Location: FF_X50_Y38_N21
\comb_3|comb_3|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|comb_3|count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|comb_3|count\(21));

-- Location: LCCOMB_X50_Y38_N12
\comb_3|comb_3|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|Equal0~5_combout\ = (\comb_3|comb_3|Add0~42_combout\ & \comb_3|comb_3|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|Add0~42_combout\,
	datad => \comb_3|comb_3|Add0~40_combout\,
	combout => \comb_3|comb_3|Equal0~5_combout\);

-- Location: LCCOMB_X50_Y38_N0
\comb_3|comb_3|slow_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|slow_clk~0_combout\ = (!\comb_3|comb_3|Add0~46_combout\ & (\comb_3|comb_3|Add0~48_combout\ & (\comb_3|comb_3|Add0~44_combout\ & \comb_3|comb_3|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|Add0~46_combout\,
	datab => \comb_3|comb_3|Add0~48_combout\,
	datac => \comb_3|comb_3|Add0~44_combout\,
	datad => \comb_3|comb_3|Equal0~6_combout\,
	combout => \comb_3|comb_3|slow_clk~0_combout\);

-- Location: LCCOMB_X50_Y38_N2
\comb_3|comb_3|slow_clk~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|slow_clk~1_combout\ = \comb_3|comb_3|slow_clk~q\ $ (((\comb_3|comb_3|Equal0~5_combout\ & (\comb_3|comb_3|Equal0~4_combout\ & \comb_3|comb_3|slow_clk~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|Equal0~5_combout\,
	datab => \comb_3|comb_3|slow_clk~q\,
	datac => \comb_3|comb_3|Equal0~4_combout\,
	datad => \comb_3|comb_3|slow_clk~0_combout\,
	combout => \comb_3|comb_3|slow_clk~1_combout\);

-- Location: LCCOMB_X50_Y38_N18
\comb_3|comb_3|slow_clk~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|slow_clk~feeder_combout\ = \comb_3|comb_3|slow_clk~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|comb_3|slow_clk~1_combout\,
	combout => \comb_3|comb_3|slow_clk~feeder_combout\);

-- Location: FF_X50_Y38_N19
\comb_3|comb_3|slow_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|comb_3|slow_clk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|comb_3|slow_clk~q\);

-- Location: CLKCTRL_G10
\comb_3|comb_3|slow_clk~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \comb_3|comb_3|slow_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \comb_3|comb_3|slow_clk~clkctrl_outclk\);

-- Location: IOIBUF_X34_Y0_N8
\sensor_s2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor_s2,
	o => \sensor_s2~input_o\);

-- Location: IOIBUF_X34_Y0_N15
\sensor_s1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor_s1,
	o => \sensor_s1~input_o\);

-- Location: LCCOMB_X49_Y24_N4
\comb_3|yo1t~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|yo1t~feeder_combout\ = \sensor_s1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sensor_s1~input_o\,
	combout => \comb_3|yo1t~feeder_combout\);

-- Location: FF_X49_Y24_N5
\comb_3|yo1t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pass_rsv~input_o\,
	d => \comb_3|yo1t~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|yo1t~q\);

-- Location: IOIBUF_X31_Y0_N8
\sensor_s3~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor_s3,
	o => \sensor_s3~input_o\);

-- Location: IOIBUF_X40_Y0_N8
\sensor_s4~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor_s4,
	o => \sensor_s4~input_o\);

-- Location: LCCOMB_X49_Y24_N30
\comb_3|always0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|always0~2_combout\ = (!\sensor_s2~input_o\ & (!\sensor_s1~input_o\ & (!\sensor_s3~input_o\ & \sensor_s4~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_s2~input_o\,
	datab => \sensor_s1~input_o\,
	datac => \sensor_s3~input_o\,
	datad => \sensor_s4~input_o\,
	combout => \comb_3|always0~2_combout\);

-- Location: FF_X49_Y24_N31
\comb_3|yo4t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pass_rsv~input_o\,
	d => \comb_3|always0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|yo4t~q\);

-- Location: LCCOMB_X49_Y24_N24
\comb_3|always0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|always0~1_combout\ = (!\sensor_s2~input_o\ & (\sensor_s3~input_o\ & !\sensor_s1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_s2~input_o\,
	datac => \sensor_s3~input_o\,
	datad => \sensor_s1~input_o\,
	combout => \comb_3|always0~1_combout\);

-- Location: FF_X49_Y24_N25
\comb_3|yo3t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pass_rsv~input_o\,
	d => \comb_3|always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|yo3t~q\);

-- Location: LCCOMB_X49_Y24_N26
\comb_3|countdecr2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|countdecr2~1_combout\ = (\comb_3|yo3t~q\ & (((\sensor_s3~input_o\)))) # (!\comb_3|yo3t~q\ & (\comb_3|yo4t~q\ & (\sensor_s4~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|yo4t~q\,
	datab => \sensor_s4~input_o\,
	datac => \sensor_s3~input_o\,
	datad => \comb_3|yo3t~q\,
	combout => \comb_3|countdecr2~1_combout\);

-- Location: LCCOMB_X49_Y24_N10
\comb_3|always0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|always0~0_combout\ = (\sensor_s2~input_o\ & !\sensor_s1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_s2~input_o\,
	datad => \sensor_s1~input_o\,
	combout => \comb_3|always0~0_combout\);

-- Location: FF_X49_Y24_N11
\comb_3|yo2t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pass_rsv~input_o\,
	d => \comb_3|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|yo2t~q\);

-- Location: LCCOMB_X49_Y24_N12
\comb_3|countdecr2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|countdecr2~2_combout\ = (!\comb_3|yo1t~q\ & ((\comb_3|yo2t~q\ & (\sensor_s2~input_o\)) # (!\comb_3|yo2t~q\ & ((\comb_3|countdecr2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_s2~input_o\,
	datab => \comb_3|yo1t~q\,
	datac => \comb_3|countdecr2~1_combout\,
	datad => \comb_3|yo2t~q\,
	combout => \comb_3|countdecr2~2_combout\);

-- Location: LCCOMB_X49_Y24_N20
\comb_3|countdecr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|countdecr2~0_combout\ = (\sensor_s1~input_o\ & \comb_3|yo1t~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sensor_s1~input_o\,
	datac => \comb_3|yo1t~q\,
	combout => \comb_3|countdecr2~0_combout\);

-- Location: FF_X50_Y20_N15
\comb_3|rsrv_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pass_rsv~input_o\,
	asdata => \comb_3|timer\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|rsrv_counter\(5));

-- Location: FF_X50_Y20_N13
\comb_3|rsrv_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pass_rsv~input_o\,
	asdata => \comb_3|timer\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|rsrv_counter\(4));

-- Location: FF_X50_Y20_N11
\comb_3|rsrv_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pass_rsv~input_o\,
	asdata => \comb_3|timer\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|rsrv_counter\(3));

-- Location: FF_X50_Y20_N9
\comb_3|rsrv_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pass_rsv~input_o\,
	asdata => \comb_3|timer\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|rsrv_counter\(2));

-- Location: FF_X50_Y20_N7
\comb_3|rsrv_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pass_rsv~input_o\,
	asdata => \comb_3|timer\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|rsrv_counter\(1));

-- Location: FF_X50_Y20_N5
\comb_3|rsrv_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pass_rsv~input_o\,
	asdata => \comb_3|timer\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|rsrv_counter\(0));

-- Location: LCCOMB_X50_Y20_N4
\comb_3|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add1~1_cout\ = CARRY((\comb_3|Add0~0_combout\) # (!\comb_3|rsrv_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add0~0_combout\,
	datab => \comb_3|rsrv_counter\(0),
	datad => VCC,
	cout => \comb_3|Add1~1_cout\);

-- Location: LCCOMB_X50_Y20_N6
\comb_3|Add1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add1~3_cout\ = CARRY((\comb_3|rsrv_counter\(1) & ((!\comb_3|Add1~1_cout\) # (!\comb_3|Add0~2_combout\))) # (!\comb_3|rsrv_counter\(1) & (!\comb_3|Add0~2_combout\ & !\comb_3|Add1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|rsrv_counter\(1),
	datab => \comb_3|Add0~2_combout\,
	datad => VCC,
	cin => \comb_3|Add1~1_cout\,
	cout => \comb_3|Add1~3_cout\);

-- Location: LCCOMB_X50_Y20_N8
\comb_3|Add1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add1~5_cout\ = CARRY((\comb_3|Add0~4_combout\ & ((!\comb_3|Add1~3_cout\) # (!\comb_3|rsrv_counter\(2)))) # (!\comb_3|Add0~4_combout\ & (!\comb_3|rsrv_counter\(2) & !\comb_3|Add1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add0~4_combout\,
	datab => \comb_3|rsrv_counter\(2),
	datad => VCC,
	cin => \comb_3|Add1~3_cout\,
	cout => \comb_3|Add1~5_cout\);

-- Location: LCCOMB_X50_Y20_N10
\comb_3|Add1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add1~7_cout\ = CARRY((\comb_3|rsrv_counter\(3) & ((!\comb_3|Add1~5_cout\) # (!\comb_3|Add0~6_combout\))) # (!\comb_3|rsrv_counter\(3) & (!\comb_3|Add0~6_combout\ & !\comb_3|Add1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|rsrv_counter\(3),
	datab => \comb_3|Add0~6_combout\,
	datad => VCC,
	cin => \comb_3|Add1~5_cout\,
	cout => \comb_3|Add1~7_cout\);

-- Location: LCCOMB_X50_Y20_N12
\comb_3|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add1~8_combout\ = ((\comb_3|rsrv_counter\(4) $ (\comb_3|Add0~8_combout\ $ (\comb_3|Add1~7_cout\)))) # (GND)
-- \comb_3|Add1~9\ = CARRY((\comb_3|rsrv_counter\(4) & (\comb_3|Add0~8_combout\ & !\comb_3|Add1~7_cout\)) # (!\comb_3|rsrv_counter\(4) & ((\comb_3|Add0~8_combout\) # (!\comb_3|Add1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|rsrv_counter\(4),
	datab => \comb_3|Add0~8_combout\,
	datad => VCC,
	cin => \comb_3|Add1~7_cout\,
	combout => \comb_3|Add1~8_combout\,
	cout => \comb_3|Add1~9\);

-- Location: LCCOMB_X50_Y20_N14
\comb_3|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add1~10_combout\ = (\comb_3|rsrv_counter\(5) & ((\comb_3|Add0~10_combout\ & (!\comb_3|Add1~9\)) # (!\comb_3|Add0~10_combout\ & ((\comb_3|Add1~9\) # (GND))))) # (!\comb_3|rsrv_counter\(5) & ((\comb_3|Add0~10_combout\ & (\comb_3|Add1~9\ & VCC)) # 
-- (!\comb_3|Add0~10_combout\ & (!\comb_3|Add1~9\))))
-- \comb_3|Add1~11\ = CARRY((\comb_3|rsrv_counter\(5) & ((!\comb_3|Add1~9\) # (!\comb_3|Add0~10_combout\))) # (!\comb_3|rsrv_counter\(5) & (!\comb_3|Add0~10_combout\ & !\comb_3|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|rsrv_counter\(5),
	datab => \comb_3|Add0~10_combout\,
	datad => VCC,
	cin => \comb_3|Add1~9\,
	combout => \comb_3|Add1~10_combout\,
	cout => \comb_3|Add1~11\);

-- Location: FF_X50_Y20_N19
\comb_3|rsrv_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pass_rsv~input_o\,
	asdata => \comb_3|timer\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|rsrv_counter\(7));

-- Location: FF_X50_Y20_N17
\comb_3|rsrv_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pass_rsv~input_o\,
	asdata => \comb_3|timer\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|rsrv_counter\(6));

-- Location: LCCOMB_X50_Y20_N16
\comb_3|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add1~12_combout\ = ((\comb_3|Add0~12_combout\ $ (\comb_3|rsrv_counter\(6) $ (\comb_3|Add1~11\)))) # (GND)
-- \comb_3|Add1~13\ = CARRY((\comb_3|Add0~12_combout\ & ((!\comb_3|Add1~11\) # (!\comb_3|rsrv_counter\(6)))) # (!\comb_3|Add0~12_combout\ & (!\comb_3|rsrv_counter\(6) & !\comb_3|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add0~12_combout\,
	datab => \comb_3|rsrv_counter\(6),
	datad => VCC,
	cin => \comb_3|Add1~11\,
	combout => \comb_3|Add1~12_combout\,
	cout => \comb_3|Add1~13\);

-- Location: LCCOMB_X50_Y20_N18
\comb_3|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add1~14_combout\ = (\comb_3|Add0~14_combout\ & ((\comb_3|rsrv_counter\(7) & (!\comb_3|Add1~13\)) # (!\comb_3|rsrv_counter\(7) & (\comb_3|Add1~13\ & VCC)))) # (!\comb_3|Add0~14_combout\ & ((\comb_3|rsrv_counter\(7) & ((\comb_3|Add1~13\) # (GND))) # 
-- (!\comb_3|rsrv_counter\(7) & (!\comb_3|Add1~13\))))
-- \comb_3|Add1~15\ = CARRY((\comb_3|Add0~14_combout\ & (\comb_3|rsrv_counter\(7) & !\comb_3|Add1~13\)) # (!\comb_3|Add0~14_combout\ & ((\comb_3|rsrv_counter\(7)) # (!\comb_3|Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add0~14_combout\,
	datab => \comb_3|rsrv_counter\(7),
	datad => VCC,
	cin => \comb_3|Add1~13\,
	combout => \comb_3|Add1~14_combout\,
	cout => \comb_3|Add1~15\);

-- Location: LCCOMB_X49_Y20_N18
\comb_3|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|LessThan0~0_combout\ = (\comb_3|Add1~10_combout\) # ((\comb_3|Add1~14_combout\) # ((\comb_3|Add1~8_combout\) # (\comb_3|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add1~10_combout\,
	datab => \comb_3|Add1~14_combout\,
	datac => \comb_3|Add1~8_combout\,
	datad => \comb_3|Add1~12_combout\,
	combout => \comb_3|LessThan0~0_combout\);

-- Location: FF_X50_Y20_N23
\comb_3|rsrv_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pass_rsv~input_o\,
	asdata => \comb_3|timer\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|rsrv_counter\(9));

-- Location: FF_X50_Y20_N21
\comb_3|rsrv_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pass_rsv~input_o\,
	asdata => \comb_3|timer\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|rsrv_counter\(8));

-- Location: LCCOMB_X50_Y20_N20
\comb_3|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add1~16_combout\ = ((\comb_3|rsrv_counter\(8) $ (\comb_3|Add0~16_combout\ $ (\comb_3|Add1~15\)))) # (GND)
-- \comb_3|Add1~17\ = CARRY((\comb_3|rsrv_counter\(8) & (\comb_3|Add0~16_combout\ & !\comb_3|Add1~15\)) # (!\comb_3|rsrv_counter\(8) & ((\comb_3|Add0~16_combout\) # (!\comb_3|Add1~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|rsrv_counter\(8),
	datab => \comb_3|Add0~16_combout\,
	datad => VCC,
	cin => \comb_3|Add1~15\,
	combout => \comb_3|Add1~16_combout\,
	cout => \comb_3|Add1~17\);

-- Location: LCCOMB_X50_Y20_N22
\comb_3|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add1~18_combout\ = (\comb_3|Add0~18_combout\ & ((\comb_3|rsrv_counter\(9) & (!\comb_3|Add1~17\)) # (!\comb_3|rsrv_counter\(9) & (\comb_3|Add1~17\ & VCC)))) # (!\comb_3|Add0~18_combout\ & ((\comb_3|rsrv_counter\(9) & ((\comb_3|Add1~17\) # (GND))) # 
-- (!\comb_3|rsrv_counter\(9) & (!\comb_3|Add1~17\))))
-- \comb_3|Add1~19\ = CARRY((\comb_3|Add0~18_combout\ & (\comb_3|rsrv_counter\(9) & !\comb_3|Add1~17\)) # (!\comb_3|Add0~18_combout\ & ((\comb_3|rsrv_counter\(9)) # (!\comb_3|Add1~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add0~18_combout\,
	datab => \comb_3|rsrv_counter\(9),
	datad => VCC,
	cin => \comb_3|Add1~17\,
	combout => \comb_3|Add1~18_combout\,
	cout => \comb_3|Add1~19\);

-- Location: FF_X50_Y20_N27
\comb_3|rsrv_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pass_rsv~input_o\,
	asdata => \comb_3|timer\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|rsrv_counter\(11));

-- Location: FF_X50_Y20_N25
\comb_3|rsrv_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pass_rsv~input_o\,
	asdata => \comb_3|timer\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|rsrv_counter\(10));

-- Location: LCCOMB_X50_Y20_N24
\comb_3|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add1~20_combout\ = ((\comb_3|rsrv_counter\(10) $ (\comb_3|Add0~20_combout\ $ (\comb_3|Add1~19\)))) # (GND)
-- \comb_3|Add1~21\ = CARRY((\comb_3|rsrv_counter\(10) & (\comb_3|Add0~20_combout\ & !\comb_3|Add1~19\)) # (!\comb_3|rsrv_counter\(10) & ((\comb_3|Add0~20_combout\) # (!\comb_3|Add1~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|rsrv_counter\(10),
	datab => \comb_3|Add0~20_combout\,
	datad => VCC,
	cin => \comb_3|Add1~19\,
	combout => \comb_3|Add1~20_combout\,
	cout => \comb_3|Add1~21\);

-- Location: LCCOMB_X50_Y20_N26
\comb_3|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add1~22_combout\ = (\comb_3|rsrv_counter\(11) & ((\comb_3|Add0~22_combout\ & (!\comb_3|Add1~21\)) # (!\comb_3|Add0~22_combout\ & ((\comb_3|Add1~21\) # (GND))))) # (!\comb_3|rsrv_counter\(11) & ((\comb_3|Add0~22_combout\ & (\comb_3|Add1~21\ & VCC)) 
-- # (!\comb_3|Add0~22_combout\ & (!\comb_3|Add1~21\))))
-- \comb_3|Add1~23\ = CARRY((\comb_3|rsrv_counter\(11) & ((!\comb_3|Add1~21\) # (!\comb_3|Add0~22_combout\))) # (!\comb_3|rsrv_counter\(11) & (!\comb_3|Add0~22_combout\ & !\comb_3|Add1~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|rsrv_counter\(11),
	datab => \comb_3|Add0~22_combout\,
	datad => VCC,
	cin => \comb_3|Add1~21\,
	combout => \comb_3|Add1~22_combout\,
	cout => \comb_3|Add1~23\);

-- Location: LCCOMB_X50_Y20_N2
\comb_3|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|LessThan0~1_combout\ = (\comb_3|Add1~18_combout\) # ((\comb_3|Add1~16_combout\) # ((\comb_3|Add1~22_combout\) # (\comb_3|Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add1~18_combout\,
	datab => \comb_3|Add1~16_combout\,
	datac => \comb_3|Add1~22_combout\,
	datad => \comb_3|Add1~20_combout\,
	combout => \comb_3|LessThan0~1_combout\);

-- Location: LCCOMB_X50_Y20_N28
\comb_3|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add1~24_combout\ = ((\comb_3|rsrv_counter\(12) $ (\comb_3|Add0~24_combout\ $ (\comb_3|Add1~23\)))) # (GND)
-- \comb_3|Add1~25\ = CARRY((\comb_3|rsrv_counter\(12) & (\comb_3|Add0~24_combout\ & !\comb_3|Add1~23\)) # (!\comb_3|rsrv_counter\(12) & ((\comb_3|Add0~24_combout\) # (!\comb_3|Add1~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|rsrv_counter\(12),
	datab => \comb_3|Add0~24_combout\,
	datad => VCC,
	cin => \comb_3|Add1~23\,
	combout => \comb_3|Add1~24_combout\,
	cout => \comb_3|Add1~25\);

-- Location: LCCOMB_X49_Y20_N24
\comb_3|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|LessThan0~2_combout\ = (\comb_3|Add1~26_combout\) # (\comb_3|Add1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|Add1~26_combout\,
	datad => \comb_3|Add1~24_combout\,
	combout => \comb_3|LessThan0~2_combout\);

-- Location: LCCOMB_X49_Y20_N10
\comb_3|yo2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|yo2~0_combout\ = (\comb_3|yo2t~q\ & (!\comb_3|LessThan0~0_combout\ & (!\comb_3|LessThan0~1_combout\ & !\comb_3|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|yo2t~q\,
	datab => \comb_3|LessThan0~0_combout\,
	datac => \comb_3|LessThan0~1_combout\,
	datad => \comb_3|LessThan0~2_combout\,
	combout => \comb_3|yo2~0_combout\);

-- Location: FF_X49_Y20_N11
\comb_3|yo2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|comb_3|slow_clk~q\,
	d => \comb_3|yo2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|yo2~q\);

-- Location: LCCOMB_X49_Y20_N4
\comb_3|yo1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|yo1~0_combout\ = (\comb_3|yo1t~q\ & (!\comb_3|LessThan0~0_combout\ & (!\comb_3|LessThan0~1_combout\ & !\comb_3|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|yo1t~q\,
	datab => \comb_3|LessThan0~0_combout\,
	datac => \comb_3|LessThan0~1_combout\,
	datad => \comb_3|LessThan0~2_combout\,
	combout => \comb_3|yo1~0_combout\);

-- Location: FF_X49_Y20_N5
\comb_3|yo1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|comb_3|slow_clk~q\,
	d => \comb_3|yo1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|yo1~q\);

-- Location: LCCOMB_X49_Y20_N14
\comb_3|yo4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|yo4~0_combout\ = (\comb_3|yo4t~q\ & (!\comb_3|LessThan0~0_combout\ & (!\comb_3|LessThan0~1_combout\ & !\comb_3|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|yo4t~q\,
	datab => \comb_3|LessThan0~0_combout\,
	datac => \comb_3|LessThan0~1_combout\,
	datad => \comb_3|LessThan0~2_combout\,
	combout => \comb_3|yo4~0_combout\);

-- Location: FF_X49_Y20_N15
\comb_3|yo4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|comb_3|slow_clk~q\,
	d => \comb_3|yo4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|yo4~q\);

-- Location: LCCOMB_X49_Y20_N2
\comb_3|yo3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|yo3~0_combout\ = (\comb_3|yo3t~q\ & !\comb_3|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|yo3t~q\,
	datad => \comb_3|LessThan0~0_combout\,
	combout => \comb_3|yo3~0_combout\);

-- Location: LCCOMB_X49_Y20_N8
\comb_3|yo3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|yo3~1_combout\ = (!\comb_3|Add1~26_combout\ & (!\comb_3|Add1~24_combout\ & (!\comb_3|LessThan0~1_combout\ & \comb_3|yo3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add1~26_combout\,
	datab => \comb_3|Add1~24_combout\,
	datac => \comb_3|LessThan0~1_combout\,
	datad => \comb_3|yo3~0_combout\,
	combout => \comb_3|yo3~1_combout\);

-- Location: FF_X49_Y20_N9
\comb_3|yo3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|comb_3|slow_clk~q\,
	d => \comb_3|yo3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|yo3~q\);

-- Location: LCCOMB_X49_Y20_N22
\comb_3|always4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|always4~0_combout\ = (\comb_3|yo2~q\) # ((\comb_3|yo1~q\) # ((\comb_3|yo4~q\) # (\comb_3|yo3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|yo2~q\,
	datab => \comb_3|yo1~q\,
	datac => \comb_3|yo4~q\,
	datad => \comb_3|yo3~q\,
	combout => \comb_3|always4~0_combout\);

-- Location: LCCOMB_X51_Y20_N2
\comb_3|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add0~0_combout\ = (\comb_3|timer\(0) & (\comb_3|always4~0_combout\ $ (VCC))) # (!\comb_3|timer\(0) & (\comb_3|always4~0_combout\ & VCC))
-- \comb_3|Add0~1\ = CARRY((\comb_3|timer\(0) & \comb_3|always4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|timer\(0),
	datab => \comb_3|always4~0_combout\,
	datad => VCC,
	combout => \comb_3|Add0~0_combout\,
	cout => \comb_3|Add0~1\);

-- Location: LCCOMB_X50_Y20_N0
\comb_3|timer[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|timer[0]~feeder_combout\ = \comb_3|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|Add0~0_combout\,
	combout => \comb_3|timer[0]~feeder_combout\);

-- Location: FF_X50_Y20_N1
\comb_3|timer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|comb_3|slow_clk~clkctrl_outclk\,
	d => \comb_3|timer[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|timer\(0));

-- Location: LCCOMB_X51_Y20_N4
\comb_3|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add0~2_combout\ = (\comb_3|timer\(1) & (!\comb_3|Add0~1\)) # (!\comb_3|timer\(1) & ((\comb_3|Add0~1\) # (GND)))
-- \comb_3|Add0~3\ = CARRY((!\comb_3|Add0~1\) # (!\comb_3|timer\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|timer\(1),
	datad => VCC,
	cin => \comb_3|Add0~1\,
	combout => \comb_3|Add0~2_combout\,
	cout => \comb_3|Add0~3\);

-- Location: LCCOMB_X51_Y20_N30
\comb_3|timer[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|timer[1]~feeder_combout\ = \comb_3|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|Add0~2_combout\,
	combout => \comb_3|timer[1]~feeder_combout\);

-- Location: FF_X51_Y20_N31
\comb_3|timer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|comb_3|slow_clk~clkctrl_outclk\,
	d => \comb_3|timer[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|timer\(1));

-- Location: LCCOMB_X51_Y20_N6
\comb_3|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add0~4_combout\ = (\comb_3|timer\(2) & (\comb_3|Add0~3\ $ (GND))) # (!\comb_3|timer\(2) & (!\comb_3|Add0~3\ & VCC))
-- \comb_3|Add0~5\ = CARRY((\comb_3|timer\(2) & !\comb_3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|timer\(2),
	datad => VCC,
	cin => \comb_3|Add0~3\,
	combout => \comb_3|Add0~4_combout\,
	cout => \comb_3|Add0~5\);

-- Location: LCCOMB_X51_Y20_N28
\comb_3|timer[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|timer[2]~feeder_combout\ = \comb_3|Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|Add0~4_combout\,
	combout => \comb_3|timer[2]~feeder_combout\);

-- Location: FF_X51_Y20_N29
\comb_3|timer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|comb_3|slow_clk~clkctrl_outclk\,
	d => \comb_3|timer[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|timer\(2));

-- Location: LCCOMB_X51_Y20_N8
\comb_3|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add0~6_combout\ = (\comb_3|timer\(3) & (!\comb_3|Add0~5\)) # (!\comb_3|timer\(3) & ((\comb_3|Add0~5\) # (GND)))
-- \comb_3|Add0~7\ = CARRY((!\comb_3|Add0~5\) # (!\comb_3|timer\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|timer\(3),
	datad => VCC,
	cin => \comb_3|Add0~5\,
	combout => \comb_3|Add0~6_combout\,
	cout => \comb_3|Add0~7\);

-- Location: LCCOMB_X51_Y20_N0
\comb_3|timer[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|timer[3]~feeder_combout\ = \comb_3|Add0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|Add0~6_combout\,
	combout => \comb_3|timer[3]~feeder_combout\);

-- Location: FF_X51_Y20_N1
\comb_3|timer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|comb_3|slow_clk~clkctrl_outclk\,
	d => \comb_3|timer[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|timer\(3));

-- Location: LCCOMB_X51_Y20_N10
\comb_3|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add0~8_combout\ = (\comb_3|timer\(4) & (\comb_3|Add0~7\ $ (GND))) # (!\comb_3|timer\(4) & (!\comb_3|Add0~7\ & VCC))
-- \comb_3|Add0~9\ = CARRY((\comb_3|timer\(4) & !\comb_3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|timer\(4),
	datad => VCC,
	cin => \comb_3|Add0~7\,
	combout => \comb_3|Add0~8_combout\,
	cout => \comb_3|Add0~9\);

-- Location: FF_X51_Y20_N11
\comb_3|timer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|comb_3|slow_clk~clkctrl_outclk\,
	d => \comb_3|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|timer\(4));

-- Location: LCCOMB_X51_Y20_N12
\comb_3|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add0~10_combout\ = (\comb_3|timer\(5) & (!\comb_3|Add0~9\)) # (!\comb_3|timer\(5) & ((\comb_3|Add0~9\) # (GND)))
-- \comb_3|Add0~11\ = CARRY((!\comb_3|Add0~9\) # (!\comb_3|timer\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|timer\(5),
	datad => VCC,
	cin => \comb_3|Add0~9\,
	combout => \comb_3|Add0~10_combout\,
	cout => \comb_3|Add0~11\);

-- Location: FF_X51_Y20_N13
\comb_3|timer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|comb_3|slow_clk~clkctrl_outclk\,
	d => \comb_3|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|timer\(5));

-- Location: LCCOMB_X51_Y20_N14
\comb_3|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add0~12_combout\ = (\comb_3|timer\(6) & (\comb_3|Add0~11\ $ (GND))) # (!\comb_3|timer\(6) & (!\comb_3|Add0~11\ & VCC))
-- \comb_3|Add0~13\ = CARRY((\comb_3|timer\(6) & !\comb_3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|timer\(6),
	datad => VCC,
	cin => \comb_3|Add0~11\,
	combout => \comb_3|Add0~12_combout\,
	cout => \comb_3|Add0~13\);

-- Location: FF_X51_Y20_N15
\comb_3|timer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|comb_3|slow_clk~clkctrl_outclk\,
	d => \comb_3|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|timer\(6));

-- Location: LCCOMB_X51_Y20_N16
\comb_3|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add0~14_combout\ = (\comb_3|timer\(7) & (!\comb_3|Add0~13\)) # (!\comb_3|timer\(7) & ((\comb_3|Add0~13\) # (GND)))
-- \comb_3|Add0~15\ = CARRY((!\comb_3|Add0~13\) # (!\comb_3|timer\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|timer\(7),
	datad => VCC,
	cin => \comb_3|Add0~13\,
	combout => \comb_3|Add0~14_combout\,
	cout => \comb_3|Add0~15\);

-- Location: FF_X51_Y20_N17
\comb_3|timer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|comb_3|slow_clk~clkctrl_outclk\,
	d => \comb_3|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|timer\(7));

-- Location: LCCOMB_X51_Y20_N18
\comb_3|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add0~16_combout\ = (\comb_3|timer\(8) & (\comb_3|Add0~15\ $ (GND))) # (!\comb_3|timer\(8) & (!\comb_3|Add0~15\ & VCC))
-- \comb_3|Add0~17\ = CARRY((\comb_3|timer\(8) & !\comb_3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|timer\(8),
	datad => VCC,
	cin => \comb_3|Add0~15\,
	combout => \comb_3|Add0~16_combout\,
	cout => \comb_3|Add0~17\);

-- Location: FF_X51_Y20_N19
\comb_3|timer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|comb_3|slow_clk~clkctrl_outclk\,
	d => \comb_3|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|timer\(8));

-- Location: LCCOMB_X51_Y20_N20
\comb_3|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add0~18_combout\ = (\comb_3|timer\(9) & (!\comb_3|Add0~17\)) # (!\comb_3|timer\(9) & ((\comb_3|Add0~17\) # (GND)))
-- \comb_3|Add0~19\ = CARRY((!\comb_3|Add0~17\) # (!\comb_3|timer\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|timer\(9),
	datad => VCC,
	cin => \comb_3|Add0~17\,
	combout => \comb_3|Add0~18_combout\,
	cout => \comb_3|Add0~19\);

-- Location: FF_X51_Y20_N21
\comb_3|timer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|comb_3|slow_clk~clkctrl_outclk\,
	d => \comb_3|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|timer\(9));

-- Location: LCCOMB_X51_Y20_N22
\comb_3|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add0~20_combout\ = (\comb_3|timer\(10) & (\comb_3|Add0~19\ $ (GND))) # (!\comb_3|timer\(10) & (!\comb_3|Add0~19\ & VCC))
-- \comb_3|Add0~21\ = CARRY((\comb_3|timer\(10) & !\comb_3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|timer\(10),
	datad => VCC,
	cin => \comb_3|Add0~19\,
	combout => \comb_3|Add0~20_combout\,
	cout => \comb_3|Add0~21\);

-- Location: FF_X51_Y20_N23
\comb_3|timer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|comb_3|slow_clk~clkctrl_outclk\,
	d => \comb_3|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|timer\(10));

-- Location: LCCOMB_X51_Y20_N24
\comb_3|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add0~22_combout\ = (\comb_3|timer\(11) & (!\comb_3|Add0~21\)) # (!\comb_3|timer\(11) & ((\comb_3|Add0~21\) # (GND)))
-- \comb_3|Add0~23\ = CARRY((!\comb_3|Add0~21\) # (!\comb_3|timer\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|timer\(11),
	datad => VCC,
	cin => \comb_3|Add0~21\,
	combout => \comb_3|Add0~22_combout\,
	cout => \comb_3|Add0~23\);

-- Location: FF_X51_Y20_N25
\comb_3|timer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|comb_3|slow_clk~clkctrl_outclk\,
	d => \comb_3|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|timer\(11));

-- Location: LCCOMB_X51_Y20_N26
\comb_3|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add0~24_combout\ = \comb_3|Add0~23\ $ (!\comb_3|timer\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|timer\(12),
	cin => \comb_3|Add0~23\,
	combout => \comb_3|Add0~24_combout\);

-- Location: FF_X50_Y20_N31
\comb_3|timer[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|comb_3|slow_clk~clkctrl_outclk\,
	asdata => \comb_3|Add0~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|timer\(12));

-- Location: FF_X50_Y20_N29
\comb_3|rsrv_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pass_rsv~input_o\,
	asdata => \comb_3|timer\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|rsrv_counter\(12));

-- Location: LCCOMB_X50_Y20_N30
\comb_3|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add1~26_combout\ = !\comb_3|Add1~25\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \comb_3|Add1~25\,
	combout => \comb_3|Add1~26_combout\);

-- Location: LCCOMB_X49_Y20_N20
\comb_3|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|LessThan0~3_combout\ = (\comb_3|Add1~26_combout\) # ((\comb_3|Add1~24_combout\) # ((\comb_3|LessThan0~0_combout\) # (\comb_3|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add1~26_combout\,
	datab => \comb_3|Add1~24_combout\,
	datac => \comb_3|LessThan0~0_combout\,
	datad => \comb_3|LessThan0~1_combout\,
	combout => \comb_3|LessThan0~3_combout\);

-- Location: LCCOMB_X49_Y20_N0
\comb_3|countdecr2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|countdecr2~3_combout\ = (\comb_3|countdecr2~q\) # ((\comb_3|LessThan0~3_combout\ & ((\comb_3|countdecr2~2_combout\) # (\comb_3|countdecr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|countdecr2~2_combout\,
	datab => \comb_3|countdecr2~0_combout\,
	datac => \comb_3|countdecr2~q\,
	datad => \comb_3|LessThan0~3_combout\,
	combout => \comb_3|countdecr2~3_combout\);

-- Location: LCCOMB_X49_Y20_N16
\comb_3|countdecr2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|countdecr2~feeder_combout\ = \comb_3|countdecr2~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|countdecr2~3_combout\,
	combout => \comb_3|countdecr2~feeder_combout\);

-- Location: FF_X49_Y20_N17
\comb_3|countdecr2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|comb_3|slow_clk~clkctrl_outclk\,
	d => \comb_3|countdecr2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|countdecr2~q\);

-- Location: CLKCTRL_G18
\comb_3|countdecr2~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \comb_3|countdecr2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \comb_3|countdecr2~clkctrl_outclk\);

-- Location: LCCOMB_X66_Y51_N12
\comb_3|countneg2[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|countneg2[0]~9_combout\ = !\comb_3|countneg2\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|countneg2\(0),
	combout => \comb_3|countneg2[0]~9_combout\);

-- Location: LCCOMB_X66_Y51_N26
\comb_3|countneg2[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|countneg2[2]~5_combout\ = (\comb_3|countneg2\(2) & (!\comb_3|countneg2[1]~4\)) # (!\comb_3|countneg2\(2) & ((\comb_3|countneg2[1]~4\) # (GND)))
-- \comb_3|countneg2[2]~6\ = CARRY((!\comb_3|countneg2[1]~4\) # (!\comb_3|countneg2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|countneg2\(2),
	datad => VCC,
	cin => \comb_3|countneg2[1]~4\,
	combout => \comb_3|countneg2[2]~5_combout\,
	cout => \comb_3|countneg2[2]~6\);

-- Location: LCCOMB_X66_Y51_N28
\comb_3|countneg2[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|countneg2[3]~7_combout\ = \comb_3|countneg2[2]~6\ $ (!\comb_3|countneg2\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|countneg2\(3),
	cin => \comb_3|countneg2[2]~6\,
	combout => \comb_3|countneg2[3]~7_combout\);

-- Location: FF_X66_Y51_N29
\comb_3|countneg2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|countdecr2~clkctrl_outclk\,
	d => \comb_3|countneg2[3]~7_combout\,
	ena => \comb_3|LessThan2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|countneg2\(3));

-- Location: IOIBUF_X69_Y0_N22
\sensor_out~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor_out,
	o => \sensor_out~input_o\);

-- Location: LCCOMB_X1_Y38_N18
\comb_3|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb~0_combout\ = (!\sensor_out~input_o\) # (!\comb_3|stateout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|stateout~q\,
	datad => \sensor_out~input_o\,
	combout => \comb_3|comb~0_combout\);

-- Location: LCCOMB_X1_Y38_N22
\comb_3|comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb~1_combout\ = (\comb_3|stateout~q\) # (\sensor_out~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|stateout~q\,
	datad => \sensor_out~input_o\,
	combout => \comb_3|comb~1_combout\);

-- Location: LCCOMB_X1_Y38_N20
\comb_3|nextout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|nextout~combout\ = (\comb_3|comb~0_combout\ & ((\comb_3|nextout~combout\) # (!\comb_3|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|comb~0_combout\,
	datac => \comb_3|comb~1_combout\,
	datad => \comb_3|nextout~combout\,
	combout => \comb_3|nextout~combout\);

-- Location: FF_X1_Y38_N21
\comb_3|stateout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|comb_3|slow_clk~clkctrl_outclk\,
	d => \comb_3|nextout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|stateout~q\);

-- Location: CLKCTRL_G0
\comb_3|stateout~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \comb_3|stateout~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \comb_3|stateout~clkctrl_outclk\);

-- Location: LCCOMB_X66_Y51_N22
\comb_3|countneg[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|countneg[0]~9_combout\ = !\comb_3|countneg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|countneg\(0),
	combout => \comb_3|countneg[0]~9_combout\);

-- Location: FF_X66_Y51_N23
\comb_3|countneg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|stateout~clkctrl_outclk\,
	d => \comb_3|countneg[0]~9_combout\,
	ena => \comb_3|LessThan2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|countneg\(0));

-- Location: LCCOMB_X67_Y51_N20
\comb_3|countneg[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|countneg[1]~3_combout\ = (\comb_3|countneg\(1) & (\comb_3|countneg\(0) $ (VCC))) # (!\comb_3|countneg\(1) & (\comb_3|countneg\(0) & VCC))
-- \comb_3|countneg[1]~4\ = CARRY((\comb_3|countneg\(1) & \comb_3|countneg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|countneg\(1),
	datab => \comb_3|countneg\(0),
	datad => VCC,
	combout => \comb_3|countneg[1]~3_combout\,
	cout => \comb_3|countneg[1]~4\);

-- Location: FF_X66_Y51_N1
\comb_3|countneg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|stateout~clkctrl_outclk\,
	asdata => \comb_3|countneg[1]~3_combout\,
	sload => VCC,
	ena => \comb_3|LessThan2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|countneg\(1));

-- Location: LCCOMB_X67_Y51_N22
\comb_3|countneg[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|countneg[2]~5_combout\ = (\comb_3|countneg\(2) & (!\comb_3|countneg[1]~4\)) # (!\comb_3|countneg\(2) & ((\comb_3|countneg[1]~4\) # (GND)))
-- \comb_3|countneg[2]~6\ = CARRY((!\comb_3|countneg[1]~4\) # (!\comb_3|countneg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|countneg\(2),
	datad => VCC,
	cin => \comb_3|countneg[1]~4\,
	combout => \comb_3|countneg[2]~5_combout\,
	cout => \comb_3|countneg[2]~6\);

-- Location: FF_X66_Y51_N15
\comb_3|countneg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|stateout~clkctrl_outclk\,
	asdata => \comb_3|countneg[2]~5_combout\,
	sload => VCC,
	ena => \comb_3|LessThan2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|countneg\(2));

-- Location: LCCOMB_X67_Y51_N24
\comb_3|countneg[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|countneg[3]~7_combout\ = \comb_3|countneg[2]~6\ $ (!\comb_3|countneg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|countneg\(3),
	cin => \comb_3|countneg[2]~6\,
	combout => \comb_3|countneg[3]~7_combout\);

-- Location: FF_X66_Y51_N21
\comb_3|countneg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|stateout~clkctrl_outclk\,
	asdata => \comb_3|countneg[3]~7_combout\,
	sload => VCC,
	ena => \comb_3|LessThan2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|countneg\(3));

-- Location: LCCOMB_X49_Y20_N12
\comb_3|always5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|always5~1_combout\ = (\comb_3|yo2~q\) # ((\comb_3|yo1~q\) # ((\comb_3|yo3~q\) # (!\comb_3|yo4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|yo2~q\,
	datab => \comb_3|yo1~q\,
	datac => \comb_3|yo4~q\,
	datad => \comb_3|yo3~q\,
	combout => \comb_3|always5~1_combout\);

-- Location: IOIBUF_X40_Y0_N1
\sensor_in~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor_in,
	o => \sensor_in~input_o\);

-- Location: LCCOMB_X50_Y50_N4
\comb_3|comb~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb~3_combout\ = (\sensor_in~input_o\) # (\comb_3|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_in~input_o\,
	datad => \comb_3|state~q\,
	combout => \comb_3|comb~3_combout\);

-- Location: LCCOMB_X50_Y50_N22
\comb_3|comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb~2_combout\ = (!\comb_3|state~q\) # (!\sensor_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_in~input_o\,
	datad => \comb_3|state~q\,
	combout => \comb_3|comb~2_combout\);

-- Location: LCCOMB_X50_Y50_N10
\comb_3|next\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|next~combout\ = (\comb_3|comb~2_combout\ & ((\comb_3|next~combout\) # (!\comb_3|comb~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|comb~3_combout\,
	datac => \comb_3|comb~2_combout\,
	datad => \comb_3|next~combout\,
	combout => \comb_3|next~combout\);

-- Location: LCCOMB_X50_Y38_N10
\comb_3|state~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|state~feeder_combout\ = \comb_3|next~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|next~combout\,
	combout => \comb_3|state~feeder_combout\);

-- Location: FF_X50_Y38_N11
\comb_3|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|comb_3|slow_clk~q\,
	d => \comb_3|state~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|state~q\);

-- Location: LCCOMB_X49_Y38_N20
\comb_3|always5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|always5~0_combout\ = LCELL((\comb_3|state~q\ & ((\comb_3|always5~1_combout\) # (!\comb_3|green_light~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|always5~1_combout\,
	datac => \comb_3|state~q\,
	datad => \comb_3|green_light~combout\,
	combout => \comb_3|always5~0_combout\);

-- Location: CLKCTRL_G13
\comb_3|always5~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \comb_3|always5~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \comb_3|always5~0clkctrl_outclk\);

-- Location: LCCOMB_X66_Y51_N14
\comb_3|Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add5~0_combout\ = (\comb_3|countneg\(0) & (\comb_3|countpos\(0) $ (GND))) # (!\comb_3|countneg\(0) & (!\comb_3|countpos\(0) & VCC))
-- \comb_3|Add5~1\ = CARRY((\comb_3|countneg\(0) & !\comb_3|countpos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|countneg\(0),
	datab => \comb_3|countpos\(0),
	datad => VCC,
	combout => \comb_3|Add5~0_combout\,
	cout => \comb_3|Add5~1\);

-- Location: LCCOMB_X66_Y51_N2
\comb_3|Add6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add6~0_combout\ = (\comb_3|countneg2\(0) & (\comb_3|Add5~0_combout\ $ (VCC))) # (!\comb_3|countneg2\(0) & (\comb_3|Add5~0_combout\ & VCC))
-- \comb_3|Add6~1\ = CARRY((\comb_3|countneg2\(0) & \comb_3|Add5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|countneg2\(0),
	datab => \comb_3|Add5~0_combout\,
	datad => VCC,
	combout => \comb_3|Add6~0_combout\,
	cout => \comb_3|Add6~1\);

-- Location: LCCOMB_X65_Y51_N16
\comb_3|countres[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|countres[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \comb_3|countres[0]~feeder_combout\);

-- Location: FF_X65_Y51_N17
\comb_3|countres[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pass_rsv~input_o\,
	d => \comb_3|countres[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|countres\(0));

-- Location: LCCOMB_X65_Y51_N24
\comb_3|countpos[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|countpos[1]~3_combout\ = (\comb_3|countpos\(0) & (\comb_3|countpos\(1) $ (VCC))) # (!\comb_3|countpos\(0) & (\comb_3|countpos\(1) & VCC))
-- \comb_3|countpos[1]~4\ = CARRY((\comb_3|countpos\(0) & \comb_3|countpos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|countpos\(0),
	datab => \comb_3|countpos\(1),
	datad => VCC,
	combout => \comb_3|countpos[1]~3_combout\,
	cout => \comb_3|countpos[1]~4\);

-- Location: LCCOMB_X65_Y51_N2
\comb_3|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|LessThan1~0_combout\ = (\comb_3|Add6~0_combout\ & (!\comb_3|countres\(0) & \comb_3|Add6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add6~0_combout\,
	datab => \comb_3|countres\(0),
	datad => \comb_3|Add6~2_combout\,
	combout => \comb_3|LessThan1~0_combout\);

-- Location: LCCOMB_X65_Y51_N8
\comb_3|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|LessThan1~1_combout\ = ((\comb_3|Add6~4_combout\ $ (!\comb_3|LessThan1~0_combout\)) # (!\comb_3|comb_502|Decoder0~1_combout\)) # (!\comb_3|Add6~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add6~4_combout\,
	datab => \comb_3|Add6~6_combout\,
	datac => \comb_3|comb_502|Decoder0~1_combout\,
	datad => \comb_3|LessThan1~0_combout\,
	combout => \comb_3|LessThan1~1_combout\);

-- Location: FF_X65_Y51_N25
\comb_3|countpos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|always5~0clkctrl_outclk\,
	d => \comb_3|countpos[1]~3_combout\,
	ena => \comb_3|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|countpos\(1));

-- Location: LCCOMB_X66_Y51_N16
\comb_3|Add5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add5~2_combout\ = (\comb_3|countneg\(1) & ((\comb_3|countpos\(1) & (!\comb_3|Add5~1\)) # (!\comb_3|countpos\(1) & (\comb_3|Add5~1\ & VCC)))) # (!\comb_3|countneg\(1) & ((\comb_3|countpos\(1) & ((\comb_3|Add5~1\) # (GND))) # (!\comb_3|countpos\(1) 
-- & (!\comb_3|Add5~1\))))
-- \comb_3|Add5~3\ = CARRY((\comb_3|countneg\(1) & (\comb_3|countpos\(1) & !\comb_3|Add5~1\)) # (!\comb_3|countneg\(1) & ((\comb_3|countpos\(1)) # (!\comb_3|Add5~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|countneg\(1),
	datab => \comb_3|countpos\(1),
	datad => VCC,
	cin => \comb_3|Add5~1\,
	combout => \comb_3|Add5~2_combout\,
	cout => \comb_3|Add5~3\);

-- Location: LCCOMB_X66_Y51_N4
\comb_3|Add6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add6~2_combout\ = (\comb_3|countneg2\(1) & ((\comb_3|Add5~2_combout\ & (\comb_3|Add6~1\ & VCC)) # (!\comb_3|Add5~2_combout\ & (!\comb_3|Add6~1\)))) # (!\comb_3|countneg2\(1) & ((\comb_3|Add5~2_combout\ & (!\comb_3|Add6~1\)) # 
-- (!\comb_3|Add5~2_combout\ & ((\comb_3|Add6~1\) # (GND)))))
-- \comb_3|Add6~3\ = CARRY((\comb_3|countneg2\(1) & (!\comb_3|Add5~2_combout\ & !\comb_3|Add6~1\)) # (!\comb_3|countneg2\(1) & ((!\comb_3|Add6~1\) # (!\comb_3|Add5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|countneg2\(1),
	datab => \comb_3|Add5~2_combout\,
	datad => VCC,
	cin => \comb_3|Add6~1\,
	combout => \comb_3|Add6~2_combout\,
	cout => \comb_3|Add6~3\);

-- Location: LCCOMB_X65_Y51_N30
\comb_3|comb_502|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_502|Decoder0~1_combout\ = (\comb_3|Add6~0_combout\ & (!\comb_3|countres\(0) & \comb_3|Add6~2_combout\)) # (!\comb_3|Add6~0_combout\ & (\comb_3|countres\(0) & !\comb_3|Add6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add6~0_combout\,
	datab => \comb_3|countres\(0),
	datad => \comb_3|Add6~2_combout\,
	combout => \comb_3|comb_502|Decoder0~1_combout\);

-- Location: LCCOMB_X67_Y51_N28
\comb_3|countpos[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|countpos[0]~7_combout\ = \comb_3|countpos\(0) $ (((!\comb_3|LessThan2~1_combout\) # (!\comb_3|comb_502|Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_502|Decoder0~1_combout\,
	datac => \comb_3|countpos\(0),
	datad => \comb_3|LessThan2~1_combout\,
	combout => \comb_3|countpos[0]~7_combout\);

-- Location: FF_X67_Y51_N29
\comb_3|countpos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|always5~0clkctrl_outclk\,
	d => \comb_3|countpos[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|countpos\(0));

-- Location: LCCOMB_X65_Y51_N26
\comb_3|countpos[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|countpos[2]~5_combout\ = (\comb_3|countpos\(2) & (!\comb_3|countpos[1]~4\)) # (!\comb_3|countpos\(2) & ((\comb_3|countpos[1]~4\) # (GND)))
-- \comb_3|countpos[2]~6\ = CARRY((!\comb_3|countpos[1]~4\) # (!\comb_3|countpos\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|countpos\(2),
	datad => VCC,
	cin => \comb_3|countpos[1]~4\,
	combout => \comb_3|countpos[2]~5_combout\,
	cout => \comb_3|countpos[2]~6\);

-- Location: FF_X65_Y51_N27
\comb_3|countpos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|always5~0clkctrl_outclk\,
	d => \comb_3|countpos[2]~5_combout\,
	ena => \comb_3|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|countpos\(2));

-- Location: LCCOMB_X65_Y51_N28
\comb_3|countpos[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|countpos[3]~8_combout\ = \comb_3|countpos[2]~6\ $ (!\comb_3|countpos\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|countpos\(3),
	cin => \comb_3|countpos[2]~6\,
	combout => \comb_3|countpos[3]~8_combout\);

-- Location: FF_X65_Y51_N29
\comb_3|countpos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|always5~0clkctrl_outclk\,
	d => \comb_3|countpos[3]~8_combout\,
	ena => \comb_3|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|countpos\(3));

-- Location: LCCOMB_X66_Y51_N18
\comb_3|Add5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add5~4_combout\ = ((\comb_3|countpos\(2) $ (\comb_3|countneg\(2) $ (\comb_3|Add5~3\)))) # (GND)
-- \comb_3|Add5~5\ = CARRY((\comb_3|countpos\(2) & (\comb_3|countneg\(2) & !\comb_3|Add5~3\)) # (!\comb_3|countpos\(2) & ((\comb_3|countneg\(2)) # (!\comb_3|Add5~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|countpos\(2),
	datab => \comb_3|countneg\(2),
	datad => VCC,
	cin => \comb_3|Add5~3\,
	combout => \comb_3|Add5~4_combout\,
	cout => \comb_3|Add5~5\);

-- Location: LCCOMB_X66_Y51_N20
\comb_3|Add5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add5~6_combout\ = \comb_3|countneg\(3) $ (\comb_3|Add5~5\ $ (!\comb_3|countpos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|countneg\(3),
	datad => \comb_3|countpos\(3),
	cin => \comb_3|Add5~5\,
	combout => \comb_3|Add5~6_combout\);

-- Location: LCCOMB_X66_Y51_N6
\comb_3|Add6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add6~4_combout\ = ((\comb_3|countneg2\(2) $ (\comb_3|Add5~4_combout\ $ (!\comb_3|Add6~3\)))) # (GND)
-- \comb_3|Add6~5\ = CARRY((\comb_3|countneg2\(2) & ((\comb_3|Add5~4_combout\) # (!\comb_3|Add6~3\))) # (!\comb_3|countneg2\(2) & (\comb_3|Add5~4_combout\ & !\comb_3|Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|countneg2\(2),
	datab => \comb_3|Add5~4_combout\,
	datad => VCC,
	cin => \comb_3|Add6~3\,
	combout => \comb_3|Add6~4_combout\,
	cout => \comb_3|Add6~5\);

-- Location: LCCOMB_X66_Y51_N8
\comb_3|Add6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|Add6~6_combout\ = \comb_3|countneg2\(3) $ (\comb_3|Add6~5\ $ (\comb_3|Add5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|countneg2\(3),
	datad => \comb_3|Add5~6_combout\,
	cin => \comb_3|Add6~5\,
	combout => \comb_3|Add6~6_combout\);

-- Location: LCCOMB_X66_Y51_N0
\comb_3|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|LessThan2~0_combout\ = (!\comb_3|Add6~2_combout\) # (!\comb_3|Add6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|Add6~0_combout\,
	datad => \comb_3|Add6~2_combout\,
	combout => \comb_3|LessThan2~0_combout\);

-- Location: LCCOMB_X66_Y51_N10
\comb_3|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|LessThan2~1_combout\ = (\comb_3|Add6~6_combout\ & (\comb_3|Add6~4_combout\ $ (((!\comb_3|countres\(0) & !\comb_3|LessThan2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add6~4_combout\,
	datab => \comb_3|Add6~6_combout\,
	datac => \comb_3|countres\(0),
	datad => \comb_3|LessThan2~0_combout\,
	combout => \comb_3|LessThan2~1_combout\);

-- Location: FF_X66_Y51_N13
\comb_3|countneg2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|countdecr2~clkctrl_outclk\,
	d => \comb_3|countneg2[0]~9_combout\,
	ena => \comb_3|LessThan2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|countneg2\(0));

-- Location: LCCOMB_X66_Y51_N24
\comb_3|countneg2[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|countneg2[1]~3_combout\ = (\comb_3|countneg2\(1) & (\comb_3|countneg2\(0) $ (VCC))) # (!\comb_3|countneg2\(1) & (\comb_3|countneg2\(0) & VCC))
-- \comb_3|countneg2[1]~4\ = CARRY((\comb_3|countneg2\(1) & \comb_3|countneg2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|countneg2\(1),
	datab => \comb_3|countneg2\(0),
	datad => VCC,
	combout => \comb_3|countneg2[1]~3_combout\,
	cout => \comb_3|countneg2[1]~4\);

-- Location: FF_X66_Y51_N25
\comb_3|countneg2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|countdecr2~clkctrl_outclk\,
	d => \comb_3|countneg2[1]~3_combout\,
	ena => \comb_3|LessThan2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|countneg2\(1));

-- Location: FF_X66_Y51_N27
\comb_3|countneg2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|countdecr2~clkctrl_outclk\,
	d => \comb_3|countneg2[2]~5_combout\,
	ena => \comb_3|LessThan2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|countneg2\(2));

-- Location: LCCOMB_X65_Y51_N18
\comb_3|comb_502|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_502|Mux3~0_combout\ = (\comb_3|countres\(0) & (!\comb_3|Add6~2_combout\ & (\comb_3|Add6~4_combout\ $ (!\comb_3|Add6~0_combout\)))) # (!\comb_3|countres\(0) & (\comb_3|Add6~4_combout\ & (\comb_3|Add6~0_combout\ $ (!\comb_3|Add6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add6~4_combout\,
	datab => \comb_3|countres\(0),
	datac => \comb_3|Add6~0_combout\,
	datad => \comb_3|Add6~2_combout\,
	combout => \comb_3|comb_502|Mux3~0_combout\);

-- Location: LCCOMB_X65_Y51_N4
\comb_3|comb_502|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_502|Decoder0~0_combout\ = (\comb_3|Add6~2_combout\ & (\comb_3|countres\(0) & !\comb_3|Add6~0_combout\)) # (!\comb_3|Add6~2_combout\ & (!\comb_3|countres\(0) & \comb_3|Add6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add6~2_combout\,
	datab => \comb_3|countres\(0),
	datad => \comb_3|Add6~0_combout\,
	combout => \comb_3|comb_502|Decoder0~0_combout\);

-- Location: LCCOMB_X66_Y51_N30
\comb_3|comb_502|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_502|Mux1~0_combout\ = (\comb_3|countres\(0) & ((\comb_3|Add6~0_combout\) # ((!\comb_3|Add6~4_combout\)))) # (!\comb_3|countres\(0) & ((\comb_3|Add6~4_combout\ $ (!\comb_3|Add6~2_combout\)) # (!\comb_3|Add6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|countres\(0),
	datab => \comb_3|Add6~0_combout\,
	datac => \comb_3|Add6~4_combout\,
	datad => \comb_3|Add6~2_combout\,
	combout => \comb_3|comb_502|Mux1~0_combout\);

-- Location: LCCOMB_X65_Y51_N20
\comb_3|comb_502|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_3|comb_502|Mux0~0_combout\ = (\comb_3|Add6~4_combout\ & ((\comb_3|Add6~2_combout\) # ((!\comb_3|countres\(0) & \comb_3|Add6~0_combout\)))) # (!\comb_3|Add6~4_combout\ & ((\comb_3|countres\(0)) # ((!\comb_3|Add6~2_combout\) # 
-- (!\comb_3|Add6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add6~4_combout\,
	datab => \comb_3|countres\(0),
	datac => \comb_3|Add6~0_combout\,
	datad => \comb_3|Add6~2_combout\,
	combout => \comb_3|comb_502|Mux0~0_combout\);

-- Location: LCCOMB_X49_Y24_N28
\s1|g_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s1|g_out~0_combout\ = (\comb_3|yo1~q\) # (!\sensor_s1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|yo1~q\,
	datad => \sensor_s1~input_o\,
	combout => \s1|g_out~0_combout\);

-- Location: LCCOMB_X49_Y24_N14
\s2|g_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s2|g_out~0_combout\ = (\comb_3|yo2~q\) # (!\sensor_s2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|yo2~q\,
	datad => \sensor_s2~input_o\,
	combout => \s2|g_out~0_combout\);

-- Location: LCCOMB_X49_Y20_N30
\s3|g_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s3|g_out~0_combout\ = (\comb_3|yo3~q\) # (!\sensor_s3~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sensor_s3~input_o\,
	datad => \comb_3|yo3~q\,
	combout => \s3|g_out~0_combout\);

-- Location: LCCOMB_X46_Y4_N20
\s4|g_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s4|g_out~0_combout\ = (\comb_3|yo4~q\) # (!\sensor_s4~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|yo4~q\,
	datad => \sensor_s4~input_o\,
	combout => \s4|g_out~0_combout\);

-- Location: LCCOMB_X49_Y24_N16
\s1|y_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s1|y_out~0_combout\ = (\comb_3|yo1~q\ & \sensor_s1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|yo1~q\,
	datad => \sensor_s1~input_o\,
	combout => \s1|y_out~0_combout\);

-- Location: LCCOMB_X49_Y24_N18
\s2|y_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s2|y_out~0_combout\ = (\comb_3|yo2~q\ & \sensor_s2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|yo2~q\,
	datad => \sensor_s2~input_o\,
	combout => \s2|y_out~0_combout\);

-- Location: LCCOMB_X49_Y20_N6
\s3|y_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s3|y_out~0_combout\ = (\sensor_s3~input_o\ & \comb_3|yo3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sensor_s3~input_o\,
	datad => \comb_3|yo3~q\,
	combout => \s3|y_out~0_combout\);

-- Location: LCCOMB_X46_Y4_N30
\s4|y_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s4|y_out~0_combout\ = (\comb_3|yo4~q\ & \sensor_s4~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|yo4~q\,
	datad => \sensor_s4~input_o\,
	combout => \s4|y_out~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_green_light <= \green_light~output_o\;

ww_digs(0) <= \digs[0]~output_o\;

ww_digs(1) <= \digs[1]~output_o\;

ww_digs(2) <= \digs[2]~output_o\;

ww_digs(3) <= \digs[3]~output_o\;

ww_digs(4) <= \digs[4]~output_o\;

ww_digs(5) <= \digs[5]~output_o\;

ww_digs(6) <= \digs[6]~output_o\;

ww_g1_out <= \g1_out~output_o\;

ww_g2_out <= \g2_out~output_o\;

ww_g3_out <= \g3_out~output_o\;

ww_g4_out <= \g4_out~output_o\;

ww_y1_out <= \y1_out~output_o\;

ww_y2_out <= \y2_out~output_o\;

ww_y3_out <= \y3_out~output_o\;

ww_y4_out <= \y4_out~output_o\;

ww_r1_out <= \r1_out~output_o\;

ww_r2_out <= \r2_out~output_o\;

ww_r3_out <= \r3_out~output_o\;

ww_r4_out <= \r4_out~output_o\;
END structure;


