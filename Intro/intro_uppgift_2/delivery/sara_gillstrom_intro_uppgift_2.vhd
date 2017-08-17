--Filename: intro_uppgift_2
--File type: VHDL
--Date: 17-Aug-2017
--Description: intro_uppgift_2 introkurs
--Author: Sara Gillstroem

---------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

---------------------------------------------

ENTITY intro_uppgift_2 IS
PORT(
	KEY_1_pin	:	IN STD_logic;
	KEY_2_pin	: 	IN STD_logic;
	LED_0_pin	: 	OUT STD_logic
	);
	
END intro_uppgift_2;

---------------------------------------------

ARCHITECTURE BEHAVIORAL OF intro_uppgift_2 IS
	BEGIN
		LED_0_pin <= (NOT(KEY_1_pin) AND (NOT(KEY_2_pin)));
	END BEHAVIORAL;