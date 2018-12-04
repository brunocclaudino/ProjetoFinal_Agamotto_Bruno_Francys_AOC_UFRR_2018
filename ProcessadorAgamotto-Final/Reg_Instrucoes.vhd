library ieee;
use ieee.std_logic_1164.all;

entity Reg_Instrucoes is 
	port (
	clock , sinal : in STD_LOGIC;
	input: in STD_LOGIC_VECTOR(15 DOWNTO 0);
	output_OPCODE: out STD_LOGIC_VECTOR(3 DOWNTO 0);
	output_r1 , output_r2: out STD_LOGIC_VECTOR(1 DOWNTO 0));
	
end entity;
	
architecture hardware of Reg_Instrucoes is 
	begin
	process (clock, input , sinal) is
	begin
		if (clock'event AND clock = '1' and sinal='1') then
			
			for i in 7 downto 4 loop
				output_OPCODE(i-4) <= input(i);
			end loop;
			
			for i in 3 downto 2 loop
				output_OPCODE(i-2) <= input(i);
			end loop;
			
			for i in 1 downto 0 loop
				output_OPCODE(i) <= input(i);
			end loop;
			
		end if;
	end process;
end architecture;