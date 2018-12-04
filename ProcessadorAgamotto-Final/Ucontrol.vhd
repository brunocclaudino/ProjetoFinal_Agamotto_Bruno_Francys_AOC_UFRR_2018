library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity UControl is
	Generic(nBits : integer := 8); -- nBits
	port(
			clock : in std_logic;
			inst_part_7_4 : in std_logic_vector(nBits-5 downto 0); -- Opcode
			
			PCEscCond : out std_logic;
			PCEsc : out std_logic;
			EscMem : out std_logic;	
			LerMem : out std_logic;
			Loud : out std_logic;	
			MemParaReg : out std_logic_vector(nBits-7 downto 0); -- 2bits
			UlaOp : out std_logic_vector(nBits-5 downto 0); -- 4bits
			FontePC : out std_logic_vector(nBits-7 downto 0); -- 2bits
			UALFonteA: out std_logic;
			UALFonteB : out std_logic_vector(nBits-7 downto 0); -- 2bits
			IREsc : out std_logic;
			EscReg : out std_logic;
			RegDest: out std_logic);
end UControl;

architecture behavior of UControl is
	
begin	
	
	process (inst_part_7_4)
		-- TMP para o opcode
		variable recv_opcode : std_logic_vector (3 downto 0);	
	
		begin
		
		if (clock'event and clock = '1') then
				PCEscCond <= '0';
				PCEsc <= '1';
				EscReg <= '0';		
				EscMem <= '0';
				LerMem <= '1';
				Loud <= '0';
				MemParaReg <= "00";
				UlaOp <= "1001";
				FontePC <= "00";
				UALFonteA <= '0';
				UALFonteB <= "01"; 
				IREsc <= '1';	
				RegDest <= '0';
		end if;
		if (clock'event and clock = '1') then
				PCEscCond <= '0';
				PCEsc <= '0';
				EscReg <= '0';		
				EscMem <= '0';
				LerMem <= '1';
				Loud <= '0';
				MemParaReg <= "00";
				UlaOp <= "1010";
				FontePC <= "00";
				UALFonteA <= '0';
				UALFonteB <= "11"; 
				IREsc <= '1';	
				RegDest <= '0';
		end if;
		
		recv_opcode := inst_part_7_4;	
		if (clock'event and clock = '1') then
			if (recv_opcode = "0000" ) then  -- comando: add;
						PCEscCond <= '0';
						PCEsc <= '0';
						EscReg <= '1';		
						EscMem <= '0';
						LerMem <= '0';
						Loud <= '0';
						MemParaReg <= "00";
						UlaOp <= "0000";
						FontePC <= "00";
						UALFonteA <= '1';
						UALFonteB <= "00"; 
						IREsc <= '0';	
						RegDest <= '0';
			end if;
			if (recv_opcode ="0001") then  -- comando: addi;
						PCEscCond <= '0';
						PCEsc <= '0';
						EscReg <= '1';		
						EscMem <= '0';
						LerMem <= '0';
						Loud <= '0';
						MemParaReg <= "00";
						UlaOp <= "0000";
						FontePC <= "00";
						UALFonteA <= '1';
						UALFonteB <= "00"; 
						IREsc <= '0';	
						RegDest <= '0';
			end if;
			if (recv_opcode = "0010") then  -- comando: Beq;
						PCEscCond <= '0';
						PCEsc <= '0';
					   EscReg <= '0';		
						EscMem <= '0';
						LerMem <= '0';
						Loud <= '0';
						MemParaReg <= "00";
						UlaOp <= "0011";
						FontePC <= "01";
						UALFonteA <= '1';
						UALFonteB <= "00"; 
						IREsc <= '0';	
						RegDest <= '0';
			end if;
				
			if (recv_opcode = "0011") then  -- comando: lw;
						PCEscCond <= '0';
						PCEsc <= '0';
						EscReg <= '1';		
						EscMem <= '0';
						LerMem <= '1';
						Loud <= '1';
						MemParaReg <= "10";
						UlaOp <= "0100";
						FontePC <= "00";
						UALFonteA <= '1';
						UALFonteB <= "10"; 
						IREsc <= '0';	
						RegDest <= '1';
			end if;
			if (recv_opcode = "0100") then  -- comando: sw;
						PCEscCond <= '0';
						PCEsc <= '0';
						EscReg <= '0';		
						EscMem <= '1';
						LerMem <= '0';
						Loud <= '1';
						MemParaReg <= "00";
						UlaOp <= "0101";
						FontePC <= "00";
						UALFonteA <= '1';
						UALFonteB <= "10"; 
						IREsc <= '0';	
						RegDest <= '0';
			end if;
			if (recv_opcode = "0101") then  -- comando: li;
						PCEscCond <= '0';
						PCEsc <= '0';
						EscReg <= '1';		
						EscMem <= '0';
						LerMem <= '0';
						Loud <= '0';
						MemParaReg <= "01";
						UlaOp <= "0101";
						FontePC <= "00";
						UALFonteA <= '0';
						UALFonteB <= "10"; 
						IREsc <= '0';	
						RegDest <= '0';
			end if;
		end if;
	end process;
 end architecture behavior;
	