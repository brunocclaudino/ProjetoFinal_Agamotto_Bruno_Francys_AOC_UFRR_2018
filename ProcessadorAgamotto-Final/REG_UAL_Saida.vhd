library ieee;
use ieee.std_logic_1164.all;

entity REG_UAL_Saida is 
	port (
	clock : in STD_LOGIC;
	input: in STD_LOGIC_VECTOR(15 DOWNTO 0);
	output: out STD_LOGIC_VECTOR(15 DOWNTO 0));
end entity;
	
architecture hardware of REG_UAL_Saida is 
	begin
	process (clock, input) is
	begin
		if (clock'event AND clock = '1') then
			output <= input;
		end if;
	end process;
end architecture;