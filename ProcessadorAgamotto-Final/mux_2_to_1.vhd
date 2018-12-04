Library ieee;
use ieee.std_logic_1164.all;

Entity mux_2_to_1 is
	Port( SELETOR : in std_logic;
			A,B: in std_logic_vector(15 downto 0);
			saida: out std_logic_vector(15 downto 0)
		 );
end mux_2_to_1;

Architecture Multiplexador of mux_2_to_1 is
begin
with SELETOR select 
	saida <= A when '0',
				B when '1';
end Multiplexador;	