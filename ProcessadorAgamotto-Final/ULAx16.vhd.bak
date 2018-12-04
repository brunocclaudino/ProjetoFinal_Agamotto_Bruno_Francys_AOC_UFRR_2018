Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.std_logic_unsigned.all;

Entity ULAx16 is
	Port (A,B: in std_logic_vector(15 downto 0);
			UALOp: in std_logic_vector(3 downto 0);
			S : out std_logic_vector(15 downto 0));
		  
end ULAx16;

Architecture ULA of ULAx16 is

Begin
	Process (A,B,UALOP)
	Begin
		--case UALOp is
			--when "0000" => S <= (A + B); -- ADD
			--when "0001" => S <= (A + B); -- ADDI
			--when "0010" => S <= (A - b); -- SUB
			--when "0011" => S <= (A - b); -- SUBI
			--when "0100" => S <= (A * b); -- MULT
			--when "0101" => S <= (A - b); -- BEQ
			--when "0110" => S <= (A - b); -- BNE
			--when "0111" => S <= (A + B); -- LW
			--when "1000" => S <= (A + B); -- SW
			--when "1001" => S <= (A - b); -- JUMP
		--end case;
		if(UALOP = "0000") then
			S <= A + B;					-- ADD
		end if;
		
		if(UALOP = "0001") then
			S <= A + B;					-- ADDI
		end if;
		
		if(UALOP = "0010") then
			S <= A - B;					-- SUB
		end if;
		
		if(UALOP = "0011") then
			S <= A - B;					-- SUBI
		end if;

		if(UALOP = "0100") then
			S <= A * B;					-- MULT
		end if;

		if(UALOP = "0101") then
			S <= A - B;					-- BEQ
		end if;
		
		if(UALOP = "0110") then
			S <= A - B;					-- BNE
		end if;
		
		if(UALOP = "0111") then
			S <= A + B;					-- LW
		end if;
		
		if(UALOP = "1000") then
			S <= A + B;					-- SW
		end if;
		
		if(UALOP = "1001") then
			S <= A + B;					-- JUMP
		end if;
		
		
	End process;
	

end ULA;