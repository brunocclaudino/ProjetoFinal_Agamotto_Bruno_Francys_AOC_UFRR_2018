-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/03/2018 19:22:19"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          RegistradorDeDadosDaMem
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY RegistradorDeDadosDaMem_vhd_vec_tst IS
END RegistradorDeDadosDaMem_vhd_vec_tst;
ARCHITECTURE RegistradorDeDadosDaMem_arch OF RegistradorDeDadosDaMem_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL input : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL output : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT RegistradorDeDadosDaMem
	PORT (
	clock : IN STD_LOGIC;
	input : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	output : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : RegistradorDeDadosDaMem
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	input => input,
	output => output
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		clock <= '0';
		WAIT FOR 40000 ps;
		clock <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	clock <= '0';
WAIT;
END PROCESS t_prcs_clock;
END RegistradorDeDadosDaMem_arch;
