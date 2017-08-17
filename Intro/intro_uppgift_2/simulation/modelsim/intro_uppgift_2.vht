-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "08/17/2017 11:43:42"
                                                            
-- Vhdl Test Bench template for design  :  intro_uppgift_2
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY intro_uppgift_2_vhd_tst IS
END intro_uppgift_2_vhd_tst;
ARCHITECTURE intro_uppgift_2_arch OF intro_uppgift_2_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL KEY_1_pin : STD_LOGIC;
SIGNAL KEY_2_pin : STD_LOGIC;
SIGNAL LED_0_pin : STD_LOGIC;
COMPONENT intro_uppgift_2
	PORT (
	KEY_1_pin : IN STD_LOGIC;
	KEY_2_pin : IN STD_LOGIC;
	LED_0_pin : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : intro_uppgift_2
	PORT MAP (
-- list connections between master ports and signals
	KEY_1_pin => KEY_1_pin,
	KEY_2_pin => KEY_2_pin,
	LED_0_pin => LED_0_pin
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                                                              
BEGIN                                                         
        -- test case 1, both btns pressed, LED is on
		KEY_1_pin <= '0';
		KEY_2_pin <= '0';
		WAIT for 1 ns;
		
		-- test case 2, btn1 pressed, btn2 not pressed, LED is off
		KEY_1_pin <= '0';
		KEY_2_pin <= '1';
		WAIT for 1 ns;
		
		--test case 3, btn 1 not pressed, btn2 pressed, LED is off
		KEY_1_pin <= '1';
		KEY_2_pin <= '0';
		WAIT for 1 ns;
		
		--test case 4, no btn is pressed, LED is off
		KEY_1_pin <= '1';
		KEY_2_pin <= '1';
	
		WAIT;
			
WAIT;                                                        
END PROCESS always;                                          
END intro_uppgift_2_arch;
