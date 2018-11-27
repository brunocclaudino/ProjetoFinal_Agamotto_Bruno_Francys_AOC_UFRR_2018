library ieee;
use ieee.std_logic_1164.all;

entity adderplus4 is 
	port (
		Entrada: in std_logic_vector(7 DOWNTO 0);
		carry_out: out std_logic;
		Saida: out std_logic_vector(7 DOWNTO 0)
	);
end adderplus4;
	
architecture logica of adderplus4 is 
begin 
	process(entrada)
	
	variable soma, entrada1, entrada2 : std_logic_vector(7 downto 0);
	variable carry : std_logic; 
	
	begin
	entrada1 :=  entrada;
	entrada2 :=  "00000100";
	carry := '0';
	
	for i in 0 to 7 loop
		soma(i) := entrada1(i) xor entrada2(i) xor carry;
		carry := (entrada(i) and entrada2(i)) or ((entrada1(i) xor entrada2(i)) and carry);
	end loop;
	
	carry_out <= carry;
	Saida <= soma;
	
	end process;
end logica;