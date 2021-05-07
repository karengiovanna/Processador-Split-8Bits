-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/07/2021 15:51:44"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          split
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY split_vhd_vec_tst IS
END split_vhd_vec_tst;
ARCHITECTURE split_arch OF split_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL saida_1_componente_banco_registradores : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saida_2_componente_banco_registradores : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saida_componente_memoria_instrucao : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saida_componente_pc : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saida_componente_ula : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saida_memoria_dados : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT split
	PORT (
	clock : IN STD_LOGIC;
	saida_1_componente_banco_registradores : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	saida_2_componente_banco_registradores : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	saida_componente_memoria_instrucao : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	saida_componente_pc : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	saida_componente_ula : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	saida_memoria_dados : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : split
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	saida_1_componente_banco_registradores => saida_1_componente_banco_registradores,
	saida_2_componente_banco_registradores => saida_2_componente_banco_registradores,
	saida_componente_memoria_instrucao => saida_componente_memoria_instrucao,
	saida_componente_pc => saida_componente_pc,
	saida_componente_ula => saida_componente_ula,
	saida_memoria_dados => saida_memoria_dados
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 20000 ps;
	clock <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;
END split_arch;
