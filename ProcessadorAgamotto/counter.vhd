	ENTITY counter IS
	PORT(
		clk	:	IN 	bit;
		load	:	IN 	bit;
		reset	:	IN 	bit;
		data	:	IN		integer	RANGE 15 DOWNTO	0;
		q		:	OUT	integer	RANGE	15	DOWNTO	0);
	END counter;
	
	ARCHITECTURE	hardware	of 	counter	IS
	BEGIN
	
	counter_process	:	process(clk,reset)
		VARIABLE	q_var	:	integer	RANGE	15	DOWNTO	0;
		BEGIN
			if(reset	=	'1')	THEN
				q_var	:=	0;
			elsif(clk'EVENT	and	clk	=	'1')	THEN
				if(load	=	'1')	THEN	q_var	:=	data;
				else
					if(q_var	>=	9)	THEN	q_var	:=	0;
					else						q_var	:=	q_var	+	1;
					END	if;
				END	if;
			END if;
			q	<=	q_var;
	END process;
	
	END	hardware;