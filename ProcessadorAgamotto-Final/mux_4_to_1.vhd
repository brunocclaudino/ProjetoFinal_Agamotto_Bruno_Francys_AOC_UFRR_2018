	LIBRARY IEEE;
	USE IEEE.std_logic_1164.all;
	
	ENTITY mux_4_to_1 IS PORT
	(
		sel	:	in		std_logic_vector(1 downto 0);
		A		:	in		std_logic_vector(3 downto 0);
		X		:	out	std_logic
	);
	END mux_4_to_1;
	
	ARCHITECTURE hardware	of	mux_4_to_1 IS
	BEGIN
		WITH	sel SELECT
				X	<=	A(0)	WHEN	"00",
						A(1)	WHEN	"01",
						A(2)	WHEN	"10",
						A(3)	WHEN	"11",
						'0'	WHEN	others;
	END hardware;