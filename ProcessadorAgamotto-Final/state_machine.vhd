
ENTITY state_machine IS
	PORT(
		clk	: in bit;      --clock borda de subida
		p		: in bit;		--controle de sequencia
		rst	: in bit;		--reset = 1,r =0(condiçao inicial)
		r		: out bit);		--saida
	END state_machine;
	
	ARCHITECTURE hardware of state_machine is
	TYPE st is(A,B,C,D);
	SIGNAL estado :st;
	BEGIN
		my_process: process(clk,rst)
		BEGIN
			if rst = '1' then
				estado <= A;
			elsif(clk'event and clk = '1') then
				case estado is
					when A =>
					if p = '1' then estado <= B;
					end if;
				when B =>
					if p = '1' THEN estado <= C;
					end if;
				when C =>
					if p = '1' THEN estado <= D;
					end if;
				when D =>
					if p = '1' THEN estado <= B;
					else				 estado <= A;
					end if;
				end case;
			end if;
		end process my_process;
		
		with estado select
			r<= '0' when A,
				 '0' when B,
				 '0' when C,
				 '1' when D;
	end hardware;
	
	