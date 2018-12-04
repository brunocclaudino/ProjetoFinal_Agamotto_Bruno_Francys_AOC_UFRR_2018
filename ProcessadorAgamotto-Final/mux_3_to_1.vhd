Library ieee;
use ieee.std_logic_1164.all;

Entity mux_3_to_1 is
	Port( SELETOR : in std_logic_vector(1 downto 0);
			A,B,C: in std_logic_vector(15 downto 0);
			saida: out std_logic_vector(15 downto 0)
		 );
end mux_3_to_1;

Architecture Multiplexador of mux_3_to_1 is
begin

	Process(SELETOR) 
	begin
		if(SELETOR = "00") then
			saida <= A;
		end if;
		
		if(SELETOR = "01") then
			saida <= B;
		end if;
		
	   if(SELETOR = "10") then
			saida <= C;
		end if;
	end process;

	--with SELETOR select 
	--saida <= A when "00",
				--B when "01",
				--C when "10";
end Multiplexador;	