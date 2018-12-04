library ieee;
use ieee.std_logic_1164.all;

entity PC is 
	port (
	clock: in STD_LOGIC;
	inputPC: in STD_LOGIC_VECTOR(15 DOWNTO 0);
	inputOR: in std_logic;
	output: out STD_LOGIC_VECTOR(15 DOWNTO 0));
end entity;
	
architecture hardware of PC is 
	begin
	process (clock, inputPC) is
	begin
		if (clock'event AND clock = '1' and inputOR = '1') then
			output <= inputPC;
		end if;
	end process;
end architecture;