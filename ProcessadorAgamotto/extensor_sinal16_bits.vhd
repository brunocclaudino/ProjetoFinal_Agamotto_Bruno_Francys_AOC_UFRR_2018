Library ieee;
use ieee.std_logic_1164.all;

entity extensor_sinal16_bits is
   Port( entrada: in std_logic_vector(7 DOWNTO 0);
			saida: out std_logic_vector(15 DOWNTO 0)
		  );
end extensor_sinal16_bits;

architecture extsignal of extensor_sinal_16_bits is

begin
	saida(15 downto 8) <= "00000000";
	saida(7 downto 0) <= entrada;

end extsignal;