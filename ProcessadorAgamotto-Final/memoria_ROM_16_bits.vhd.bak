Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoria_ROM_16_bits is
  port ( clk: in std_logic;
			esc_memoria : in  std_logic;
			endereco: in std_logic_vector(15 downto 0);
			input_data  : in  std_logic_vector(15 downto 0);
			output_data : out std_logic_vector(15 downto 0)
		 );
end entity memoria_ROM_16_bits;

architecture rom16bits of memoria_ROM_16 is

   type ROM is array (0 to (2**endereco'length)-1) of std_logic_vector(input_data'range);
   signal rom_memory : ROM;
   signal ligar_endereco : std_logic_vector(endereco'range);

begin

	process(clk, esc_memoria, endereco, input_data) is
	begin
		if rising_edge(clk) then
			if (esc_memoria = '1') 
			then
				rom_memory(to_integer(unsigned(endereco))) <= input_data;
			end if;
		end if;
	end process ;

	output_data <= rom_memory(to_integer(unsigned(endereco)));

end rom16bits;