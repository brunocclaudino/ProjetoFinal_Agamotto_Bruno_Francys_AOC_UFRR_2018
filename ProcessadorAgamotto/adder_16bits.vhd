	LIBRARY IEEE;
	USE IEEE.std_logic_1164.all;
	USE IEEE.std_logic_unsigned.all;

	ENTITY adder_16bits is 
		PORT(
			numero1	: IN	std_logic_vector(15 downto 0);
			numero2	: IN	std_logic_vector(15 downto 0);
			result	: OUT	std_logic_vector(16 downto 0));
	END adder_16bits;
	
	ARCHITECTURE hardware of adder_16bits is
	BEGIN
			result <=	('0' & numero1) + ('0' & numero2);
	END hardware;
	
	