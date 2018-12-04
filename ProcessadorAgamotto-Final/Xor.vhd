Library ieee;
use ieee.std_logic_1164.all;

Entity portXor is
	Port( A,B: in bit;
			F: out bit
		 );
end portXor;

Architecture xorPort of portXor is

component portNot is
	Port( A: in bit;
			X: out bit
		 );
end component;

component portAnd is
	Port( A,B: in bit;
			X: out bit
		 );
end component;

component portor is
	Port( A,B: in bit;
			X: out bit
		 );
end component;

signal X1,X2,X3,X4: bit;

begin
	
	G1: portNot port map(B,X1);
	G2: portNot port map(A,X2);
	G3: portAnd port map(A,X1,X3);
	G4: portAnd port map(X2,B,X4);
	G5: portor port map(X3,X4,F);
	
END xorPort;
