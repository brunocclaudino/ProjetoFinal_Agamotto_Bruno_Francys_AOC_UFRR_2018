library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoria_RAM_16_bits is
  port (clk: in std_logic;
		  esc_memoria : in  std_logic;
		  endereco : in std_logic_vector(15 downto 0);
		  E_data  : in std_logic_vector(15 downto 0);
		  S_data : out std_logic_vector(15 downto 0)
  );
end memoria_RAM_16_bits;

architecture ram16bits of memoria_RAM_16_bits is

   type RAM is array (0 to (2**endereco'length)-1) of std_logic_vector(E_data'range);
   signal ram_memory : RAM;
   signal read_address : std_logic_vector(endereco'range);

begin

	process(clk, esc_memoria, endereco, E_data) is
	begin
		if rising_edge(clk) then
			if (esc_memoria = '1') 
			then
				ram_memory(to_integer(unsigned(endereco))) <= E_data;
			end if;
		end if;
	end process ;
	S_data <= ram_memory(to_integer(unsigned(endereco)));

end ram16bits;