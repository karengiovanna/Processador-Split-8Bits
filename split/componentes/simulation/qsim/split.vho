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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/07/2021 15:51:46"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	split IS
    PORT (
	clock : IN std_logic;
	saida_componente_pc : BUFFER std_logic_vector(7 DOWNTO 0);
	saida_componente_memoria_instrucao : BUFFER std_logic_vector(7 DOWNTO 0);
	saida_1_componente_banco_registradores : BUFFER std_logic_vector(7 DOWNTO 0);
	saida_2_componente_banco_registradores : BUFFER std_logic_vector(7 DOWNTO 0);
	saida_componente_ula : BUFFER std_logic_vector(7 DOWNTO 0);
	saida_memoria_dados : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END split;

ARCHITECTURE structure OF split IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_saida_componente_pc : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_saida_componente_memoria_instrucao : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_saida_1_componente_banco_registradores : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_saida_2_componente_banco_registradores : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_saida_componente_ula : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_saida_memoria_dados : std_logic_vector(7 DOWNTO 0);
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_ula|Mult0~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \port_map_ula|Mult0~8_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \port_map_ula|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \port_map_ula|Mult0~24\ : std_logic;
SIGNAL \port_map_ula|Mult0~25\ : std_logic;
SIGNAL \port_map_ula|Mult0~26\ : std_logic;
SIGNAL \port_map_ula|Mult0~27\ : std_logic;
SIGNAL \port_map_ula|Mult0~28\ : std_logic;
SIGNAL \port_map_ula|Mult0~29\ : std_logic;
SIGNAL \port_map_ula|Mult0~30\ : std_logic;
SIGNAL \port_map_ula|Mult0~31\ : std_logic;
SIGNAL \port_map_ula|Mult0~32\ : std_logic;
SIGNAL \port_map_ula|Mult0~33\ : std_logic;
SIGNAL \port_map_ula|Mult0~34\ : std_logic;
SIGNAL \port_map_ula|Mult0~35\ : std_logic;
SIGNAL \port_map_ula|Mult0~36\ : std_logic;
SIGNAL \port_map_ula|Mult0~37\ : std_logic;
SIGNAL \port_map_ula|Mult0~38\ : std_logic;
SIGNAL \port_map_ula|Mult0~39\ : std_logic;
SIGNAL \port_map_ula|Mult0~40\ : std_logic;
SIGNAL \port_map_ula|Mult0~41\ : std_logic;
SIGNAL \port_map_ula|Mult0~42\ : std_logic;
SIGNAL \port_map_ula|Mult0~43\ : std_logic;
SIGNAL \port_map_ula|Mult0~44\ : std_logic;
SIGNAL \port_map_ula|Mult0~45\ : std_logic;
SIGNAL \port_map_ula|Mult0~46\ : std_logic;
SIGNAL \port_map_ula|Mult0~47\ : std_logic;
SIGNAL \port_map_ula|Mult0~48\ : std_logic;
SIGNAL \port_map_ula|Mult0~49\ : std_logic;
SIGNAL \port_map_ula|Mult0~50\ : std_logic;
SIGNAL \port_map_ula|Mult0~51\ : std_logic;
SIGNAL \port_map_ula|Mult0~52\ : std_logic;
SIGNAL \port_map_ula|Mult0~53\ : std_logic;
SIGNAL \port_map_ula|Mult0~54\ : std_logic;
SIGNAL \port_map_ula|Mult0~55\ : std_logic;
SIGNAL \port_map_ula|Mult0~56\ : std_logic;
SIGNAL \port_map_ula|Mult0~57\ : std_logic;
SIGNAL \port_map_ula|Mult0~58\ : std_logic;
SIGNAL \port_map_ula|Mult0~59\ : std_logic;
SIGNAL \port_map_ula|Mult0~60\ : std_logic;
SIGNAL \port_map_ula|Mult0~61\ : std_logic;
SIGNAL \port_map_ula|Mult0~62\ : std_logic;
SIGNAL \port_map_ula|Mult0~63\ : std_logic;
SIGNAL \port_map_ula|Mult0~64\ : std_logic;
SIGNAL \port_map_ula|Mult0~65\ : std_logic;
SIGNAL \port_map_ula|Mult0~66\ : std_logic;
SIGNAL \port_map_ula|Mult0~67\ : std_logic;
SIGNAL \port_map_ula|Mult0~68\ : std_logic;
SIGNAL \port_map_ula|Mult0~69\ : std_logic;
SIGNAL \port_map_ula|Mult0~70\ : std_logic;
SIGNAL \port_map_ula|Mult0~71\ : std_logic;
SIGNAL \saida_componente_pc[0]~output_o\ : std_logic;
SIGNAL \saida_componente_pc[1]~output_o\ : std_logic;
SIGNAL \saida_componente_pc[2]~output_o\ : std_logic;
SIGNAL \saida_componente_pc[3]~output_o\ : std_logic;
SIGNAL \saida_componente_pc[4]~output_o\ : std_logic;
SIGNAL \saida_componente_pc[5]~output_o\ : std_logic;
SIGNAL \saida_componente_pc[6]~output_o\ : std_logic;
SIGNAL \saida_componente_pc[7]~output_o\ : std_logic;
SIGNAL \saida_componente_memoria_instrucao[0]~output_o\ : std_logic;
SIGNAL \saida_componente_memoria_instrucao[1]~output_o\ : std_logic;
SIGNAL \saida_componente_memoria_instrucao[2]~output_o\ : std_logic;
SIGNAL \saida_componente_memoria_instrucao[3]~output_o\ : std_logic;
SIGNAL \saida_componente_memoria_instrucao[4]~output_o\ : std_logic;
SIGNAL \saida_componente_memoria_instrucao[5]~output_o\ : std_logic;
SIGNAL \saida_componente_memoria_instrucao[6]~output_o\ : std_logic;
SIGNAL \saida_componente_memoria_instrucao[7]~output_o\ : std_logic;
SIGNAL \saida_1_componente_banco_registradores[0]~output_o\ : std_logic;
SIGNAL \saida_1_componente_banco_registradores[1]~output_o\ : std_logic;
SIGNAL \saida_1_componente_banco_registradores[2]~output_o\ : std_logic;
SIGNAL \saida_1_componente_banco_registradores[3]~output_o\ : std_logic;
SIGNAL \saida_1_componente_banco_registradores[4]~output_o\ : std_logic;
SIGNAL \saida_1_componente_banco_registradores[5]~output_o\ : std_logic;
SIGNAL \saida_1_componente_banco_registradores[6]~output_o\ : std_logic;
SIGNAL \saida_1_componente_banco_registradores[7]~output_o\ : std_logic;
SIGNAL \saida_2_componente_banco_registradores[0]~output_o\ : std_logic;
SIGNAL \saida_2_componente_banco_registradores[1]~output_o\ : std_logic;
SIGNAL \saida_2_componente_banco_registradores[2]~output_o\ : std_logic;
SIGNAL \saida_2_componente_banco_registradores[3]~output_o\ : std_logic;
SIGNAL \saida_2_componente_banco_registradores[4]~output_o\ : std_logic;
SIGNAL \saida_2_componente_banco_registradores[5]~output_o\ : std_logic;
SIGNAL \saida_2_componente_banco_registradores[6]~output_o\ : std_logic;
SIGNAL \saida_2_componente_banco_registradores[7]~output_o\ : std_logic;
SIGNAL \saida_componente_ula[0]~output_o\ : std_logic;
SIGNAL \saida_componente_ula[1]~output_o\ : std_logic;
SIGNAL \saida_componente_ula[2]~output_o\ : std_logic;
SIGNAL \saida_componente_ula[3]~output_o\ : std_logic;
SIGNAL \saida_componente_ula[4]~output_o\ : std_logic;
SIGNAL \saida_componente_ula[5]~output_o\ : std_logic;
SIGNAL \saida_componente_ula[6]~output_o\ : std_logic;
SIGNAL \saida_componente_ula[7]~output_o\ : std_logic;
SIGNAL \saida_memoria_dados[0]~output_o\ : std_logic;
SIGNAL \saida_memoria_dados[1]~output_o\ : std_logic;
SIGNAL \saida_memoria_dados[2]~output_o\ : std_logic;
SIGNAL \saida_memoria_dados[3]~output_o\ : std_logic;
SIGNAL \saida_memoria_dados[4]~output_o\ : std_logic;
SIGNAL \saida_memoria_dados[5]~output_o\ : std_logic;
SIGNAL \saida_memoria_dados[6]~output_o\ : std_logic;
SIGNAL \saida_memoria_dados[7]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \port_map_and_componente|saida_and~0_combout\ : std_logic;
SIGNAL \port_map_add|Add0~2\ : std_logic;
SIGNAL \port_map_add|Add0~6\ : std_logic;
SIGNAL \port_map_add|Add0~10\ : std_logic;
SIGNAL \port_map_add|Add0~14\ : std_logic;
SIGNAL \port_map_add|Add0~17_sumout\ : std_logic;
SIGNAL \port_map_multiplexador_jump|saida_mux_jump[4]~4_combout\ : std_logic;
SIGNAL \port_map_men_instrucao|Mux3~0_combout\ : std_logic;
SIGNAL \port_map_men_instrucao|Mux2~0_combout\ : std_logic;
SIGNAL \port_map_men_instrucao|Mux1~0_combout\ : std_logic;
SIGNAL \port_map_uc|Mux6~0_combout\ : std_logic;
SIGNAL \port_map_uc|Mux2~0_combout\ : std_logic;
SIGNAL \port_map_uc|Mux7~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux21~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux21~1_combout\ : std_logic;
SIGNAL \port_map_men_instrucao|Mux5~1_combout\ : std_logic;
SIGNAL \port_map_men_instrucao|Mux7~0_combout\ : std_logic;
SIGNAL \port_map_ula|Add0~34_cout\ : std_logic;
SIGNAL \port_map_ula|Add0~1_sumout\ : std_logic;
SIGNAL \port_map_multiplexador_ula_src|saida_mux_ula_src[2]~2_combout\ : std_logic;
SIGNAL \port_map_ula|Add0~6\ : std_logic;
SIGNAL \port_map_ula|Add0~9_sumout\ : std_logic;
SIGNAL \port_map_ula|Add0~10\ : std_logic;
SIGNAL \port_map_ula|Add0~13_sumout\ : std_logic;
SIGNAL \port_map_multiplexador_ula_src|saida_mux_ula_src[4]~4_combout\ : std_logic;
SIGNAL \port_map_ula|Add0~14\ : std_logic;
SIGNAL \port_map_ula|Add0~17_sumout\ : std_logic;
SIGNAL \port_map_ula|Add0~18\ : std_logic;
SIGNAL \port_map_ula|Add0~21_sumout\ : std_logic;
SIGNAL \port_map_multiplexador_ula_src|saida_mux_ula_src[6]~6_combout\ : std_logic;
SIGNAL \port_map_ula|Add0~22\ : std_logic;
SIGNAL \port_map_ula|Add0~25_sumout\ : std_logic;
SIGNAL \port_map_ula|Add0~26\ : std_logic;
SIGNAL \port_map_ula|Add0~29_sumout\ : std_logic;
SIGNAL \port_map_multiplexador_ula_src|saida_mux_ula_src[0]~0_combout\ : std_logic;
SIGNAL \port_map_multiplexador_ula_src|saida_mux_ula_src[1]~1_combout\ : std_logic;
SIGNAL \port_map_multiplexador_ula_src|saida_mux_ula_src[3]~3_combout\ : std_logic;
SIGNAL \port_map_multiplexador_ula_src|saida_mux_ula_src[5]~5_combout\ : std_logic;
SIGNAL \port_map_multiplexador_ula_src|saida_mux_ula_src[7]~7_combout\ : std_logic;
SIGNAL \port_map_ula|Mult0~15\ : std_logic;
SIGNAL \port_map_ula|Mux5~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux28~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mult0~20\ : std_logic;
SIGNAL \port_map_ula|Mult0~21\ : std_logic;
SIGNAL \port_map_ula|Mult0~22\ : std_logic;
SIGNAL \port_map_ula|Mult0~23\ : std_logic;
SIGNAL \port_map_ula|Mult0~16\ : std_logic;
SIGNAL \port_map_ula|Mult0~17\ : std_logic;
SIGNAL \port_map_ula|Mult0~18\ : std_logic;
SIGNAL \port_map_ula|Mult0~19\ : std_logic;
SIGNAL \port_map_ula|Mux29~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux29~1_combout\ : std_logic;
SIGNAL \port_map_ula|Mux29~2_combout\ : std_logic;
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[7]~15_combout\ : std_logic;
SIGNAL \port_map_ula|Mult0~14\ : std_logic;
SIGNAL \port_map_ula|Mux27~0_combout\ : std_logic;
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[6]~14_combout\ : std_logic;
SIGNAL \port_map_ula|Mult0~13\ : std_logic;
SIGNAL \port_map_ula|Mux26~0_combout\ : std_logic;
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[5]~13_combout\ : std_logic;
SIGNAL \port_map_ula|Mult0~12\ : std_logic;
SIGNAL \port_map_ula|Mux25~0_combout\ : std_logic;
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[4]~12_combout\ : std_logic;
SIGNAL \port_map_ula|Mult0~11\ : std_logic;
SIGNAL \port_map_ula|Mux24~0_combout\ : std_logic;
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[3]~11_combout\ : std_logic;
SIGNAL \port_map_ula|Mult0~10\ : std_logic;
SIGNAL \port_map_ula|Mux23~0_combout\ : std_logic;
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[2]~10_combout\ : std_logic;
SIGNAL \port_map_ula|Mult0~8_resulta\ : std_logic;
SIGNAL \port_map_ula|Mux21~2_combout\ : std_logic;
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[0]~8_combout\ : std_logic;
SIGNAL \port_map_ula|Add0~2\ : std_logic;
SIGNAL \port_map_ula|Add0~5_sumout\ : std_logic;
SIGNAL \port_map_ula|Mult0~9\ : std_logic;
SIGNAL \port_map_ula|Mux22~0_combout\ : std_logic;
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[1]~9_combout\ : std_logic;
SIGNAL \port_map_ula|Equal0~0_combout\ : std_logic;
SIGNAL \port_map_ula|Equal0~1_combout\ : std_logic;
SIGNAL \port_map_ula|Equal0~2_combout\ : std_logic;
SIGNAL \port_map_ula|Mux0~0_combout\ : std_logic;
SIGNAL \port_map_ula|entrada_temp_if~combout\ : std_logic;
SIGNAL \port_map_ula|Mux3~0_combout\ : std_logic;
SIGNAL \port_map_ula|zero~combout\ : std_logic;
SIGNAL \port_map_add|Add0~9_sumout\ : std_logic;
SIGNAL \port_map_multiplexador_jump|saida_mux_jump[2]~2_combout\ : std_logic;
SIGNAL \port_map_men_instrucao|Mux6~0_combout\ : std_logic;
SIGNAL \port_map_add|Add0~5_sumout\ : std_logic;
SIGNAL \port_map_multiplexador_jump|saida_mux_jump[1]~1_combout\ : std_logic;
SIGNAL \port_map_men_instrucao|Mux0~0_combout\ : std_logic;
SIGNAL \port_map_add|Add0~13_sumout\ : std_logic;
SIGNAL \port_map_multiplexador_jump|saida_mux_jump[3]~3_combout\ : std_logic;
SIGNAL \port_map_men_instrucao|Mux2~1_combout\ : std_logic;
SIGNAL \port_map_add|Add0~1_sumout\ : std_logic;
SIGNAL \port_map_multiplexador_jump|saida_mux_jump[0]~0_combout\ : std_logic;
SIGNAL \port_map_add|Add0~18\ : std_logic;
SIGNAL \port_map_add|Add0~21_sumout\ : std_logic;
SIGNAL \port_map_multiplexador_jump|saida_mux_jump[5]~5_combout\ : std_logic;
SIGNAL \port_map_add|Add0~22\ : std_logic;
SIGNAL \port_map_add|Add0~25_sumout\ : std_logic;
SIGNAL \port_map_multiplexador_jump|saida_mux_jump[6]~6_combout\ : std_logic;
SIGNAL \port_map_add|Add0~26\ : std_logic;
SIGNAL \port_map_add|Add0~29_sumout\ : std_logic;
SIGNAL \port_map_multiplexador_jump|saida_mux_jump[7]~7_combout\ : std_logic;
SIGNAL \port_map_men_instrucao|Mux5~0_combout\ : std_logic;
SIGNAL \port_map_men_instrucao|Mux4~0_combout\ : std_logic;
SIGNAL \port_map_pc|saida_pc\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \port_map_ula|resultado_ula\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \port_map_ula|result_mult\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \port_map_add|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \port_map_add|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \port_map_add|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \port_map_add|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \port_map_add|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \port_map_add|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \port_map_add|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ALT_INV_ram_block1a7~portbdataout\ : std_logic;
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ALT_INV_ram_block1a6~portbdataout\ : std_logic;
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ALT_INV_ram_block1a5~portbdataout\ : std_logic;
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ALT_INV_ram_block1a4~portbdataout\ : std_logic;
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ALT_INV_ram_block1a3~portbdataout\ : std_logic;
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ALT_INV_ram_block1a2~portbdataout\ : std_logic;
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ALT_INV_ram_block1a1~portbdataout\ : std_logic;
SIGNAL \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_entrada_temp_if~combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_result_mult\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \port_map_ula|ALT_INV_zero~combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_resultado_ula\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \port_map_ula|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux29~2_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux29~1_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux21~2_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux21~1_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \port_map_uc|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[7]~15_combout\ : std_logic;
SIGNAL \port_map_multiplexador_ula_src|ALT_INV_saida_mux_ula_src[7]~7_combout\ : std_logic;
SIGNAL \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[6]~14_combout\ : std_logic;
SIGNAL \port_map_multiplexador_ula_src|ALT_INV_saida_mux_ula_src[6]~6_combout\ : std_logic;
SIGNAL \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[5]~13_combout\ : std_logic;
SIGNAL \port_map_multiplexador_ula_src|ALT_INV_saida_mux_ula_src[5]~5_combout\ : std_logic;
SIGNAL \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[4]~12_combout\ : std_logic;
SIGNAL \port_map_multiplexador_ula_src|ALT_INV_saida_mux_ula_src[4]~4_combout\ : std_logic;
SIGNAL \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[3]~11_combout\ : std_logic;
SIGNAL \port_map_multiplexador_ula_src|ALT_INV_saida_mux_ula_src[3]~3_combout\ : std_logic;
SIGNAL \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[2]~10_combout\ : std_logic;
SIGNAL \port_map_multiplexador_ula_src|ALT_INV_saida_mux_ula_src[2]~2_combout\ : std_logic;
SIGNAL \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[1]~9_combout\ : std_logic;
SIGNAL \port_map_multiplexador_ula_src|ALT_INV_saida_mux_ula_src[1]~1_combout\ : std_logic;
SIGNAL \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[0]~8_combout\ : std_logic;
SIGNAL \port_map_multiplexador_ula_src|ALT_INV_saida_mux_ula_src[0]~0_combout\ : std_logic;
SIGNAL \port_map_men_instrucao|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \port_map_uc|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \port_map_and_componente|ALT_INV_saida_and~0_combout\ : std_logic;
SIGNAL \port_map_men_instrucao|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \port_map_men_instrucao|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \port_map_men_instrucao|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \port_map_men_instrucao|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \port_map_men_instrucao|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \port_map_men_instrucao|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \port_map_men_instrucao|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \port_map_pc|ALT_INV_saida_pc\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \port_map_ula|ALT_INV_Mult0~23\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mult0~22\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mult0~21\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mult0~20\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mult0~19\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mult0~18\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mult0~17\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mult0~16\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mult0~15\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mult0~14\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mult0~13\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mult0~12\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mult0~11\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mult0~10\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mult0~9\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mult0~8_resulta\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \port_map_add|ALT_INV_Add0~29_sumout\ : std_logic;

BEGIN

ww_clock <= clock;
saida_componente_pc <= ww_saida_componente_pc;
saida_componente_memoria_instrucao <= ww_saida_componente_memoria_instrucao;
saida_1_componente_banco_registradores <= ww_saida_1_componente_banco_registradores;
saida_2_componente_banco_registradores <= ww_saida_2_componente_banco_registradores;
saida_componente_ula <= ww_saida_componente_ula;
saida_memoria_dados <= ww_saida_memoria_dados;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \port_map_ula|resultado_ula\(0);

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\port_map_men_instrucao|Mux6~0_combout\ & \port_map_men_instrucao|Mux7~0_combout\);

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\port_map_men_instrucao|Mux6~0_combout\ & \port_map_men_instrucao|Mux7~0_combout\);

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \port_map_ula|resultado_ula\(1);

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\port_map_men_instrucao|Mux6~0_combout\ & \port_map_men_instrucao|Mux7~0_combout\);

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\port_map_men_instrucao|Mux6~0_combout\ & \port_map_men_instrucao|Mux7~0_combout\);

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \port_map_ula|resultado_ula\(2);

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\port_map_men_instrucao|Mux6~0_combout\ & \port_map_men_instrucao|Mux7~0_combout\);

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\port_map_men_instrucao|Mux6~0_combout\ & \port_map_men_instrucao|Mux7~0_combout\);

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \port_map_ula|resultado_ula\(3);

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\port_map_men_instrucao|Mux6~0_combout\ & \port_map_men_instrucao|Mux7~0_combout\);

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\port_map_men_instrucao|Mux6~0_combout\ & \port_map_men_instrucao|Mux7~0_combout\);

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \port_map_ula|resultado_ula\(4);

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\port_map_men_instrucao|Mux6~0_combout\ & \port_map_men_instrucao|Mux7~0_combout\);

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\port_map_men_instrucao|Mux6~0_combout\ & \port_map_men_instrucao|Mux7~0_combout\);

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \port_map_ula|resultado_ula\(5);

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\port_map_men_instrucao|Mux6~0_combout\ & \port_map_men_instrucao|Mux7~0_combout\);

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\port_map_men_instrucao|Mux6~0_combout\ & \port_map_men_instrucao|Mux7~0_combout\);

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \port_map_ula|resultado_ula\(6);

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\port_map_men_instrucao|Mux6~0_combout\ & \port_map_men_instrucao|Mux7~0_combout\);

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\port_map_men_instrucao|Mux6~0_combout\ & \port_map_men_instrucao|Mux7~0_combout\);

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \port_map_ula|resultado_ula\(7);

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\port_map_men_instrucao|Mux6~0_combout\ & \port_map_men_instrucao|Mux7~0_combout\);

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\port_map_men_instrucao|Mux6~0_combout\ & \port_map_men_instrucao|Mux7~0_combout\);

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\port_map_ula|Mult0~8_AX_bus\ <= (\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[7]~15_combout\ & \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[6]~14_combout\ & \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[5]~13_combout\ & 
\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[4]~12_combout\ & \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[3]~11_combout\ & \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[2]~10_combout\ & 
\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[1]~9_combout\ & \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[0]~8_combout\);

\port_map_ula|Mult0~8_AY_bus\ <= (\port_map_multiplexador_ula_src|saida_mux_ula_src[7]~7_combout\ & \port_map_multiplexador_ula_src|saida_mux_ula_src[6]~6_combout\ & \port_map_multiplexador_ula_src|saida_mux_ula_src[5]~5_combout\ & 
\port_map_multiplexador_ula_src|saida_mux_ula_src[4]~4_combout\ & \port_map_multiplexador_ula_src|saida_mux_ula_src[3]~3_combout\ & \port_map_multiplexador_ula_src|saida_mux_ula_src[2]~2_combout\ & 
\port_map_multiplexador_ula_src|saida_mux_ula_src[1]~1_combout\ & \port_map_multiplexador_ula_src|saida_mux_ula_src[0]~0_combout\);

\port_map_ula|Mult0~8_resulta\ <= \port_map_ula|Mult0~8_RESULTA_bus\(0);
\port_map_ula|Mult0~9\ <= \port_map_ula|Mult0~8_RESULTA_bus\(1);
\port_map_ula|Mult0~10\ <= \port_map_ula|Mult0~8_RESULTA_bus\(2);
\port_map_ula|Mult0~11\ <= \port_map_ula|Mult0~8_RESULTA_bus\(3);
\port_map_ula|Mult0~12\ <= \port_map_ula|Mult0~8_RESULTA_bus\(4);
\port_map_ula|Mult0~13\ <= \port_map_ula|Mult0~8_RESULTA_bus\(5);
\port_map_ula|Mult0~14\ <= \port_map_ula|Mult0~8_RESULTA_bus\(6);
\port_map_ula|Mult0~15\ <= \port_map_ula|Mult0~8_RESULTA_bus\(7);
\port_map_ula|Mult0~16\ <= \port_map_ula|Mult0~8_RESULTA_bus\(8);
\port_map_ula|Mult0~17\ <= \port_map_ula|Mult0~8_RESULTA_bus\(9);
\port_map_ula|Mult0~18\ <= \port_map_ula|Mult0~8_RESULTA_bus\(10);
\port_map_ula|Mult0~19\ <= \port_map_ula|Mult0~8_RESULTA_bus\(11);
\port_map_ula|Mult0~20\ <= \port_map_ula|Mult0~8_RESULTA_bus\(12);
\port_map_ula|Mult0~21\ <= \port_map_ula|Mult0~8_RESULTA_bus\(13);
\port_map_ula|Mult0~22\ <= \port_map_ula|Mult0~8_RESULTA_bus\(14);
\port_map_ula|Mult0~23\ <= \port_map_ula|Mult0~8_RESULTA_bus\(15);
\port_map_ula|Mult0~24\ <= \port_map_ula|Mult0~8_RESULTA_bus\(16);
\port_map_ula|Mult0~25\ <= \port_map_ula|Mult0~8_RESULTA_bus\(17);
\port_map_ula|Mult0~26\ <= \port_map_ula|Mult0~8_RESULTA_bus\(18);
\port_map_ula|Mult0~27\ <= \port_map_ula|Mult0~8_RESULTA_bus\(19);
\port_map_ula|Mult0~28\ <= \port_map_ula|Mult0~8_RESULTA_bus\(20);
\port_map_ula|Mult0~29\ <= \port_map_ula|Mult0~8_RESULTA_bus\(21);
\port_map_ula|Mult0~30\ <= \port_map_ula|Mult0~8_RESULTA_bus\(22);
\port_map_ula|Mult0~31\ <= \port_map_ula|Mult0~8_RESULTA_bus\(23);
\port_map_ula|Mult0~32\ <= \port_map_ula|Mult0~8_RESULTA_bus\(24);
\port_map_ula|Mult0~33\ <= \port_map_ula|Mult0~8_RESULTA_bus\(25);
\port_map_ula|Mult0~34\ <= \port_map_ula|Mult0~8_RESULTA_bus\(26);
\port_map_ula|Mult0~35\ <= \port_map_ula|Mult0~8_RESULTA_bus\(27);
\port_map_ula|Mult0~36\ <= \port_map_ula|Mult0~8_RESULTA_bus\(28);
\port_map_ula|Mult0~37\ <= \port_map_ula|Mult0~8_RESULTA_bus\(29);
\port_map_ula|Mult0~38\ <= \port_map_ula|Mult0~8_RESULTA_bus\(30);
\port_map_ula|Mult0~39\ <= \port_map_ula|Mult0~8_RESULTA_bus\(31);
\port_map_ula|Mult0~40\ <= \port_map_ula|Mult0~8_RESULTA_bus\(32);
\port_map_ula|Mult0~41\ <= \port_map_ula|Mult0~8_RESULTA_bus\(33);
\port_map_ula|Mult0~42\ <= \port_map_ula|Mult0~8_RESULTA_bus\(34);
\port_map_ula|Mult0~43\ <= \port_map_ula|Mult0~8_RESULTA_bus\(35);
\port_map_ula|Mult0~44\ <= \port_map_ula|Mult0~8_RESULTA_bus\(36);
\port_map_ula|Mult0~45\ <= \port_map_ula|Mult0~8_RESULTA_bus\(37);
\port_map_ula|Mult0~46\ <= \port_map_ula|Mult0~8_RESULTA_bus\(38);
\port_map_ula|Mult0~47\ <= \port_map_ula|Mult0~8_RESULTA_bus\(39);
\port_map_ula|Mult0~48\ <= \port_map_ula|Mult0~8_RESULTA_bus\(40);
\port_map_ula|Mult0~49\ <= \port_map_ula|Mult0~8_RESULTA_bus\(41);
\port_map_ula|Mult0~50\ <= \port_map_ula|Mult0~8_RESULTA_bus\(42);
\port_map_ula|Mult0~51\ <= \port_map_ula|Mult0~8_RESULTA_bus\(43);
\port_map_ula|Mult0~52\ <= \port_map_ula|Mult0~8_RESULTA_bus\(44);
\port_map_ula|Mult0~53\ <= \port_map_ula|Mult0~8_RESULTA_bus\(45);
\port_map_ula|Mult0~54\ <= \port_map_ula|Mult0~8_RESULTA_bus\(46);
\port_map_ula|Mult0~55\ <= \port_map_ula|Mult0~8_RESULTA_bus\(47);
\port_map_ula|Mult0~56\ <= \port_map_ula|Mult0~8_RESULTA_bus\(48);
\port_map_ula|Mult0~57\ <= \port_map_ula|Mult0~8_RESULTA_bus\(49);
\port_map_ula|Mult0~58\ <= \port_map_ula|Mult0~8_RESULTA_bus\(50);
\port_map_ula|Mult0~59\ <= \port_map_ula|Mult0~8_RESULTA_bus\(51);
\port_map_ula|Mult0~60\ <= \port_map_ula|Mult0~8_RESULTA_bus\(52);
\port_map_ula|Mult0~61\ <= \port_map_ula|Mult0~8_RESULTA_bus\(53);
\port_map_ula|Mult0~62\ <= \port_map_ula|Mult0~8_RESULTA_bus\(54);
\port_map_ula|Mult0~63\ <= \port_map_ula|Mult0~8_RESULTA_bus\(55);
\port_map_ula|Mult0~64\ <= \port_map_ula|Mult0~8_RESULTA_bus\(56);
\port_map_ula|Mult0~65\ <= \port_map_ula|Mult0~8_RESULTA_bus\(57);
\port_map_ula|Mult0~66\ <= \port_map_ula|Mult0~8_RESULTA_bus\(58);
\port_map_ula|Mult0~67\ <= \port_map_ula|Mult0~8_RESULTA_bus\(59);
\port_map_ula|Mult0~68\ <= \port_map_ula|Mult0~8_RESULTA_bus\(60);
\port_map_ula|Mult0~69\ <= \port_map_ula|Mult0~8_RESULTA_bus\(61);
\port_map_ula|Mult0~70\ <= \port_map_ula|Mult0~8_RESULTA_bus\(62);
\port_map_ula|Mult0~71\ <= \port_map_ula|Mult0~8_RESULTA_bus\(63);
\port_map_add|ALT_INV_Add0~25_sumout\ <= NOT \port_map_add|Add0~25_sumout\;
\port_map_add|ALT_INV_Add0~21_sumout\ <= NOT \port_map_add|Add0~21_sumout\;
\port_map_add|ALT_INV_Add0~17_sumout\ <= NOT \port_map_add|Add0~17_sumout\;
\port_map_add|ALT_INV_Add0~13_sumout\ <= NOT \port_map_add|Add0~13_sumout\;
\port_map_add|ALT_INV_Add0~9_sumout\ <= NOT \port_map_add|Add0~9_sumout\;
\port_map_add|ALT_INV_Add0~5_sumout\ <= NOT \port_map_add|Add0~5_sumout\;
\port_map_add|ALT_INV_Add0~1_sumout\ <= NOT \port_map_add|Add0~1_sumout\;
\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ALT_INV_ram_block1a7~portbdataout\ <= NOT \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a7~portbdataout\;
\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ALT_INV_ram_block1a6~portbdataout\ <= NOT \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a6~portbdataout\;
\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ALT_INV_ram_block1a5~portbdataout\ <= NOT \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a5~portbdataout\;
\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ALT_INV_ram_block1a4~portbdataout\ <= NOT \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a4~portbdataout\;
\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ALT_INV_ram_block1a3~portbdataout\ <= NOT \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a3~portbdataout\;
\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ALT_INV_ram_block1a2~portbdataout\ <= NOT \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a2~portbdataout\;
\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ALT_INV_ram_block1a1~portbdataout\ <= NOT \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a1~portbdataout\;
\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ <= NOT \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a0~portbdataout\;
\port_map_ula|ALT_INV_entrada_temp_if~combout\ <= NOT \port_map_ula|entrada_temp_if~combout\;
\port_map_ula|ALT_INV_result_mult\(7) <= NOT \port_map_ula|result_mult\(7);
\port_map_ula|ALT_INV_result_mult\(6) <= NOT \port_map_ula|result_mult\(6);
\port_map_ula|ALT_INV_result_mult\(5) <= NOT \port_map_ula|result_mult\(5);
\port_map_ula|ALT_INV_result_mult\(4) <= NOT \port_map_ula|result_mult\(4);
\port_map_ula|ALT_INV_result_mult\(3) <= NOT \port_map_ula|result_mult\(3);
\port_map_ula|ALT_INV_result_mult\(2) <= NOT \port_map_ula|result_mult\(2);
\port_map_ula|ALT_INV_result_mult\(1) <= NOT \port_map_ula|result_mult\(1);
\port_map_ula|ALT_INV_result_mult\(11) <= NOT \port_map_ula|result_mult\(11);
\port_map_ula|ALT_INV_result_mult\(10) <= NOT \port_map_ula|result_mult\(10);
\port_map_ula|ALT_INV_result_mult\(9) <= NOT \port_map_ula|result_mult\(9);
\port_map_ula|ALT_INV_result_mult\(8) <= NOT \port_map_ula|result_mult\(8);
\port_map_ula|ALT_INV_result_mult\(15) <= NOT \port_map_ula|result_mult\(15);
\port_map_ula|ALT_INV_result_mult\(14) <= NOT \port_map_ula|result_mult\(14);
\port_map_ula|ALT_INV_result_mult\(13) <= NOT \port_map_ula|result_mult\(13);
\port_map_ula|ALT_INV_result_mult\(12) <= NOT \port_map_ula|result_mult\(12);
\port_map_ula|ALT_INV_result_mult\(0) <= NOT \port_map_ula|result_mult\(0);
\port_map_ula|ALT_INV_zero~combout\ <= NOT \port_map_ula|zero~combout\;
\port_map_ula|ALT_INV_resultado_ula\(7) <= NOT \port_map_ula|resultado_ula\(7);
\port_map_ula|ALT_INV_resultado_ula\(6) <= NOT \port_map_ula|resultado_ula\(6);
\port_map_ula|ALT_INV_resultado_ula\(5) <= NOT \port_map_ula|resultado_ula\(5);
\port_map_ula|ALT_INV_resultado_ula\(4) <= NOT \port_map_ula|resultado_ula\(4);
\port_map_ula|ALT_INV_resultado_ula\(3) <= NOT \port_map_ula|resultado_ula\(3);
\port_map_ula|ALT_INV_resultado_ula\(2) <= NOT \port_map_ula|resultado_ula\(2);
\port_map_ula|ALT_INV_resultado_ula\(1) <= NOT \port_map_ula|resultado_ula\(1);
\port_map_ula|ALT_INV_resultado_ula\(0) <= NOT \port_map_ula|resultado_ula\(0);
\port_map_ula|ALT_INV_Mux0~0_combout\ <= NOT \port_map_ula|Mux0~0_combout\;
\port_map_ula|ALT_INV_Equal0~2_combout\ <= NOT \port_map_ula|Equal0~2_combout\;
\port_map_ula|ALT_INV_Equal0~1_combout\ <= NOT \port_map_ula|Equal0~1_combout\;
\port_map_ula|ALT_INV_Equal0~0_combout\ <= NOT \port_map_ula|Equal0~0_combout\;
\port_map_ula|ALT_INV_Mux5~0_combout\ <= NOT \port_map_ula|Mux5~0_combout\;
\port_map_ula|ALT_INV_Mux3~0_combout\ <= NOT \port_map_ula|Mux3~0_combout\;
\port_map_ula|ALT_INV_Mux28~0_combout\ <= NOT \port_map_ula|Mux28~0_combout\;
\port_map_ula|ALT_INV_Mux27~0_combout\ <= NOT \port_map_ula|Mux27~0_combout\;
\port_map_ula|ALT_INV_Mux26~0_combout\ <= NOT \port_map_ula|Mux26~0_combout\;
\port_map_ula|ALT_INV_Mux25~0_combout\ <= NOT \port_map_ula|Mux25~0_combout\;
\port_map_ula|ALT_INV_Mux24~0_combout\ <= NOT \port_map_ula|Mux24~0_combout\;
\port_map_ula|ALT_INV_Mux23~0_combout\ <= NOT \port_map_ula|Mux23~0_combout\;
\port_map_ula|ALT_INV_Mux22~0_combout\ <= NOT \port_map_ula|Mux22~0_combout\;
\port_map_ula|ALT_INV_Mux29~2_combout\ <= NOT \port_map_ula|Mux29~2_combout\;
\port_map_ula|ALT_INV_Mux29~1_combout\ <= NOT \port_map_ula|Mux29~1_combout\;
\port_map_ula|ALT_INV_Mux29~0_combout\ <= NOT \port_map_ula|Mux29~0_combout\;
\port_map_ula|ALT_INV_Mux21~2_combout\ <= NOT \port_map_ula|Mux21~2_combout\;
\port_map_ula|ALT_INV_Mux21~1_combout\ <= NOT \port_map_ula|Mux21~1_combout\;
\port_map_ula|ALT_INV_Mux21~0_combout\ <= NOT \port_map_ula|Mux21~0_combout\;
\port_map_uc|ALT_INV_Mux6~0_combout\ <= NOT \port_map_uc|Mux6~0_combout\;
\port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[7]~15_combout\ <= NOT \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[7]~15_combout\;
\port_map_multiplexador_ula_src|ALT_INV_saida_mux_ula_src[7]~7_combout\ <= NOT \port_map_multiplexador_ula_src|saida_mux_ula_src[7]~7_combout\;
\port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[6]~14_combout\ <= NOT \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[6]~14_combout\;
\port_map_multiplexador_ula_src|ALT_INV_saida_mux_ula_src[6]~6_combout\ <= NOT \port_map_multiplexador_ula_src|saida_mux_ula_src[6]~6_combout\;
\port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[5]~13_combout\ <= NOT \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[5]~13_combout\;
\port_map_multiplexador_ula_src|ALT_INV_saida_mux_ula_src[5]~5_combout\ <= NOT \port_map_multiplexador_ula_src|saida_mux_ula_src[5]~5_combout\;
\port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[4]~12_combout\ <= NOT \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[4]~12_combout\;
\port_map_multiplexador_ula_src|ALT_INV_saida_mux_ula_src[4]~4_combout\ <= NOT \port_map_multiplexador_ula_src|saida_mux_ula_src[4]~4_combout\;
\port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[3]~11_combout\ <= NOT \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[3]~11_combout\;
\port_map_multiplexador_ula_src|ALT_INV_saida_mux_ula_src[3]~3_combout\ <= NOT \port_map_multiplexador_ula_src|saida_mux_ula_src[3]~3_combout\;
\port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[2]~10_combout\ <= NOT \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[2]~10_combout\;
\port_map_multiplexador_ula_src|ALT_INV_saida_mux_ula_src[2]~2_combout\ <= NOT \port_map_multiplexador_ula_src|saida_mux_ula_src[2]~2_combout\;
\port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[1]~9_combout\ <= NOT \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[1]~9_combout\;
\port_map_multiplexador_ula_src|ALT_INV_saida_mux_ula_src[1]~1_combout\ <= NOT \port_map_multiplexador_ula_src|saida_mux_ula_src[1]~1_combout\;
\port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[0]~8_combout\ <= NOT \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[0]~8_combout\;
\port_map_multiplexador_ula_src|ALT_INV_saida_mux_ula_src[0]~0_combout\ <= NOT \port_map_multiplexador_ula_src|saida_mux_ula_src[0]~0_combout\;
\port_map_men_instrucao|ALT_INV_Mux5~1_combout\ <= NOT \port_map_men_instrucao|Mux5~1_combout\;
\port_map_uc|ALT_INV_Mux2~0_combout\ <= NOT \port_map_uc|Mux2~0_combout\;
\port_map_and_componente|ALT_INV_saida_and~0_combout\ <= NOT \port_map_and_componente|saida_and~0_combout\;
\port_map_men_instrucao|ALT_INV_Mux2~1_combout\ <= NOT \port_map_men_instrucao|Mux2~1_combout\;
\port_map_men_instrucao|ALT_INV_Mux0~0_combout\ <= NOT \port_map_men_instrucao|Mux0~0_combout\;
\port_map_men_instrucao|ALT_INV_Mux1~0_combout\ <= NOT \port_map_men_instrucao|Mux1~0_combout\;
\port_map_men_instrucao|ALT_INV_Mux2~0_combout\ <= NOT \port_map_men_instrucao|Mux2~0_combout\;
\port_map_men_instrucao|ALT_INV_Mux3~0_combout\ <= NOT \port_map_men_instrucao|Mux3~0_combout\;
\port_map_men_instrucao|ALT_INV_Mux6~0_combout\ <= NOT \port_map_men_instrucao|Mux6~0_combout\;
\port_map_men_instrucao|ALT_INV_Mux7~0_combout\ <= NOT \port_map_men_instrucao|Mux7~0_combout\;
\port_map_pc|ALT_INV_saida_pc\(7) <= NOT \port_map_pc|saida_pc\(7);
\port_map_pc|ALT_INV_saida_pc\(6) <= NOT \port_map_pc|saida_pc\(6);
\port_map_pc|ALT_INV_saida_pc\(5) <= NOT \port_map_pc|saida_pc\(5);
\port_map_pc|ALT_INV_saida_pc\(4) <= NOT \port_map_pc|saida_pc\(4);
\port_map_pc|ALT_INV_saida_pc\(3) <= NOT \port_map_pc|saida_pc\(3);
\port_map_pc|ALT_INV_saida_pc\(2) <= NOT \port_map_pc|saida_pc\(2);
\port_map_pc|ALT_INV_saida_pc\(1) <= NOT \port_map_pc|saida_pc\(1);
\port_map_pc|ALT_INV_saida_pc\(0) <= NOT \port_map_pc|saida_pc\(0);
\port_map_ula|ALT_INV_Mult0~23\ <= NOT \port_map_ula|Mult0~23\;
\port_map_ula|ALT_INV_Mult0~22\ <= NOT \port_map_ula|Mult0~22\;
\port_map_ula|ALT_INV_Mult0~21\ <= NOT \port_map_ula|Mult0~21\;
\port_map_ula|ALT_INV_Mult0~20\ <= NOT \port_map_ula|Mult0~20\;
\port_map_ula|ALT_INV_Mult0~19\ <= NOT \port_map_ula|Mult0~19\;
\port_map_ula|ALT_INV_Mult0~18\ <= NOT \port_map_ula|Mult0~18\;
\port_map_ula|ALT_INV_Mult0~17\ <= NOT \port_map_ula|Mult0~17\;
\port_map_ula|ALT_INV_Mult0~16\ <= NOT \port_map_ula|Mult0~16\;
\port_map_ula|ALT_INV_Mult0~15\ <= NOT \port_map_ula|Mult0~15\;
\port_map_ula|ALT_INV_Mult0~14\ <= NOT \port_map_ula|Mult0~14\;
\port_map_ula|ALT_INV_Mult0~13\ <= NOT \port_map_ula|Mult0~13\;
\port_map_ula|ALT_INV_Mult0~12\ <= NOT \port_map_ula|Mult0~12\;
\port_map_ula|ALT_INV_Mult0~11\ <= NOT \port_map_ula|Mult0~11\;
\port_map_ula|ALT_INV_Mult0~10\ <= NOT \port_map_ula|Mult0~10\;
\port_map_ula|ALT_INV_Mult0~9\ <= NOT \port_map_ula|Mult0~9\;
\port_map_ula|ALT_INV_Mult0~8_resulta\ <= NOT \port_map_ula|Mult0~8_resulta\;
\port_map_ula|ALT_INV_Add0~29_sumout\ <= NOT \port_map_ula|Add0~29_sumout\;
\port_map_ula|ALT_INV_Add0~25_sumout\ <= NOT \port_map_ula|Add0~25_sumout\;
\port_map_ula|ALT_INV_Add0~21_sumout\ <= NOT \port_map_ula|Add0~21_sumout\;
\port_map_ula|ALT_INV_Add0~17_sumout\ <= NOT \port_map_ula|Add0~17_sumout\;
\port_map_ula|ALT_INV_Add0~13_sumout\ <= NOT \port_map_ula|Add0~13_sumout\;
\port_map_ula|ALT_INV_Add0~9_sumout\ <= NOT \port_map_ula|Add0~9_sumout\;
\port_map_ula|ALT_INV_Add0~5_sumout\ <= NOT \port_map_ula|Add0~5_sumout\;
\port_map_ula|ALT_INV_Add0~1_sumout\ <= NOT \port_map_ula|Add0~1_sumout\;
\port_map_add|ALT_INV_Add0~29_sumout\ <= NOT \port_map_add|Add0~29_sumout\;

\saida_componente_pc[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|saida_pc\(0),
	devoe => ww_devoe,
	o => \saida_componente_pc[0]~output_o\);

\saida_componente_pc[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|saida_pc\(1),
	devoe => ww_devoe,
	o => \saida_componente_pc[1]~output_o\);

\saida_componente_pc[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|saida_pc\(2),
	devoe => ww_devoe,
	o => \saida_componente_pc[2]~output_o\);

\saida_componente_pc[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|saida_pc\(3),
	devoe => ww_devoe,
	o => \saida_componente_pc[3]~output_o\);

\saida_componente_pc[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|saida_pc\(4),
	devoe => ww_devoe,
	o => \saida_componente_pc[4]~output_o\);

\saida_componente_pc[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|saida_pc\(5),
	devoe => ww_devoe,
	o => \saida_componente_pc[5]~output_o\);

\saida_componente_pc[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|saida_pc\(6),
	devoe => ww_devoe,
	o => \saida_componente_pc[6]~output_o\);

\saida_componente_pc[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|saida_pc\(7),
	devoe => ww_devoe,
	o => \saida_componente_pc[7]~output_o\);

\saida_componente_memoria_instrucao[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_men_instrucao|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \saida_componente_memoria_instrucao[0]~output_o\);

\saida_componente_memoria_instrucao[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_men_instrucao|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \saida_componente_memoria_instrucao[1]~output_o\);

\saida_componente_memoria_instrucao[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_men_instrucao|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \saida_componente_memoria_instrucao[2]~output_o\);

\saida_componente_memoria_instrucao[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_men_instrucao|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \saida_componente_memoria_instrucao[3]~output_o\);

\saida_componente_memoria_instrucao[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_men_instrucao|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \saida_componente_memoria_instrucao[4]~output_o\);

\saida_componente_memoria_instrucao[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_men_instrucao|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \saida_componente_memoria_instrucao[5]~output_o\);

\saida_componente_memoria_instrucao[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_men_instrucao|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \saida_componente_memoria_instrucao[6]~output_o\);

\saida_componente_memoria_instrucao[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_men_instrucao|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \saida_componente_memoria_instrucao[7]~output_o\);

\saida_1_componente_banco_registradores[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[0]~8_combout\,
	devoe => ww_devoe,
	o => \saida_1_componente_banco_registradores[0]~output_o\);

\saida_1_componente_banco_registradores[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[1]~9_combout\,
	devoe => ww_devoe,
	o => \saida_1_componente_banco_registradores[1]~output_o\);

\saida_1_componente_banco_registradores[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[2]~10_combout\,
	devoe => ww_devoe,
	o => \saida_1_componente_banco_registradores[2]~output_o\);

\saida_1_componente_banco_registradores[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[3]~11_combout\,
	devoe => ww_devoe,
	o => \saida_1_componente_banco_registradores[3]~output_o\);

\saida_1_componente_banco_registradores[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[4]~12_combout\,
	devoe => ww_devoe,
	o => \saida_1_componente_banco_registradores[4]~output_o\);

\saida_1_componente_banco_registradores[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[5]~13_combout\,
	devoe => ww_devoe,
	o => \saida_1_componente_banco_registradores[5]~output_o\);

\saida_1_componente_banco_registradores[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[6]~14_combout\,
	devoe => ww_devoe,
	o => \saida_1_componente_banco_registradores[6]~output_o\);

\saida_1_componente_banco_registradores[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[7]~15_combout\,
	devoe => ww_devoe,
	o => \saida_1_componente_banco_registradores[7]~output_o\);

\saida_2_componente_banco_registradores[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[0]~8_combout\,
	devoe => ww_devoe,
	o => \saida_2_componente_banco_registradores[0]~output_o\);

\saida_2_componente_banco_registradores[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[1]~9_combout\,
	devoe => ww_devoe,
	o => \saida_2_componente_banco_registradores[1]~output_o\);

\saida_2_componente_banco_registradores[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[2]~10_combout\,
	devoe => ww_devoe,
	o => \saida_2_componente_banco_registradores[2]~output_o\);

\saida_2_componente_banco_registradores[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[3]~11_combout\,
	devoe => ww_devoe,
	o => \saida_2_componente_banco_registradores[3]~output_o\);

\saida_2_componente_banco_registradores[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[4]~12_combout\,
	devoe => ww_devoe,
	o => \saida_2_componente_banco_registradores[4]~output_o\);

\saida_2_componente_banco_registradores[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[5]~13_combout\,
	devoe => ww_devoe,
	o => \saida_2_componente_banco_registradores[5]~output_o\);

\saida_2_componente_banco_registradores[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[6]~14_combout\,
	devoe => ww_devoe,
	o => \saida_2_componente_banco_registradores[6]~output_o\);

\saida_2_componente_banco_registradores[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[7]~15_combout\,
	devoe => ww_devoe,
	o => \saida_2_componente_banco_registradores[7]~output_o\);

\saida_componente_ula[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|resultado_ula\(0),
	devoe => ww_devoe,
	o => \saida_componente_ula[0]~output_o\);

\saida_componente_ula[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|resultado_ula\(1),
	devoe => ww_devoe,
	o => \saida_componente_ula[1]~output_o\);

\saida_componente_ula[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|resultado_ula\(2),
	devoe => ww_devoe,
	o => \saida_componente_ula[2]~output_o\);

\saida_componente_ula[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|resultado_ula\(3),
	devoe => ww_devoe,
	o => \saida_componente_ula[3]~output_o\);

\saida_componente_ula[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|resultado_ula\(4),
	devoe => ww_devoe,
	o => \saida_componente_ula[4]~output_o\);

\saida_componente_ula[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|resultado_ula\(5),
	devoe => ww_devoe,
	o => \saida_componente_ula[5]~output_o\);

\saida_componente_ula[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|resultado_ula\(6),
	devoe => ww_devoe,
	o => \saida_componente_ula[6]~output_o\);

\saida_componente_ula[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|resultado_ula\(7),
	devoe => ww_devoe,
	o => \saida_componente_ula[7]~output_o\);

\saida_memoria_dados[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	devoe => ww_devoe,
	o => \saida_memoria_dados[0]~output_o\);

\saida_memoria_dados[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	devoe => ww_devoe,
	o => \saida_memoria_dados[1]~output_o\);

\saida_memoria_dados[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	devoe => ww_devoe,
	o => \saida_memoria_dados[2]~output_o\);

\saida_memoria_dados[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a3~portbdataout\,
	devoe => ww_devoe,
	o => \saida_memoria_dados[3]~output_o\);

\saida_memoria_dados[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	devoe => ww_devoe,
	o => \saida_memoria_dados[4]~output_o\);

\saida_memoria_dados[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a5~portbdataout\,
	devoe => ww_devoe,
	o => \saida_memoria_dados[5]~output_o\);

\saida_memoria_dados[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	devoe => ww_devoe,
	o => \saida_memoria_dados[6]~output_o\);

\saida_memoria_dados[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	devoe => ww_devoe,
	o => \saida_memoria_dados[7]~output_o\);

\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\port_map_and_componente|saida_and~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_and_componente|saida_and~0_combout\ = ( \port_map_pc|saida_pc\(4) & ( (!\port_map_pc|saida_pc\(3) & ((!\port_map_pc|saida_pc\(0)) # ((!\port_map_pc|saida_pc\(1)) # (!\port_map_pc|saida_pc\(2))))) ) ) # ( !\port_map_pc|saida_pc\(4) & ( 
-- (\port_map_pc|saida_pc\(0) & (\port_map_pc|saida_pc\(1) & (\port_map_pc|saida_pc\(2) & \port_map_pc|saida_pc\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111111100000000000000000000000011111111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida_pc\(0),
	datab => \port_map_pc|ALT_INV_saida_pc\(1),
	datac => \port_map_pc|ALT_INV_saida_pc\(2),
	datad => \port_map_pc|ALT_INV_saida_pc\(3),
	datae => \port_map_pc|ALT_INV_saida_pc\(4),
	combout => \port_map_and_componente|saida_and~0_combout\);

\port_map_add|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_add|Add0~1_sumout\ = SUM(( \port_map_pc|saida_pc\(0) ) + ( VCC ) + ( !VCC ))
-- \port_map_add|Add0~2\ = CARRY(( \port_map_pc|saida_pc\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_saida_pc\(0),
	cin => GND,
	sumout => \port_map_add|Add0~1_sumout\,
	cout => \port_map_add|Add0~2\);

\port_map_add|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_add|Add0~5_sumout\ = SUM(( \port_map_pc|saida_pc\(1) ) + ( GND ) + ( \port_map_add|Add0~2\ ))
-- \port_map_add|Add0~6\ = CARRY(( \port_map_pc|saida_pc\(1) ) + ( GND ) + ( \port_map_add|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_saida_pc\(1),
	cin => \port_map_add|Add0~2\,
	sumout => \port_map_add|Add0~5_sumout\,
	cout => \port_map_add|Add0~6\);

\port_map_add|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_add|Add0~9_sumout\ = SUM(( \port_map_pc|saida_pc\(2) ) + ( GND ) + ( \port_map_add|Add0~6\ ))
-- \port_map_add|Add0~10\ = CARRY(( \port_map_pc|saida_pc\(2) ) + ( GND ) + ( \port_map_add|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_saida_pc\(2),
	cin => \port_map_add|Add0~6\,
	sumout => \port_map_add|Add0~9_sumout\,
	cout => \port_map_add|Add0~10\);

\port_map_add|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_add|Add0~13_sumout\ = SUM(( \port_map_pc|saida_pc\(3) ) + ( GND ) + ( \port_map_add|Add0~10\ ))
-- \port_map_add|Add0~14\ = CARRY(( \port_map_pc|saida_pc\(3) ) + ( GND ) + ( \port_map_add|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_saida_pc\(3),
	cin => \port_map_add|Add0~10\,
	sumout => \port_map_add|Add0~13_sumout\,
	cout => \port_map_add|Add0~14\);

\port_map_add|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_add|Add0~17_sumout\ = SUM(( \port_map_pc|saida_pc\(4) ) + ( GND ) + ( \port_map_add|Add0~14\ ))
-- \port_map_add|Add0~18\ = CARRY(( \port_map_pc|saida_pc\(4) ) + ( GND ) + ( \port_map_add|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_saida_pc\(4),
	cin => \port_map_add|Add0~14\,
	sumout => \port_map_add|Add0~17_sumout\,
	cout => \port_map_add|Add0~18\);

\port_map_multiplexador_jump|saida_mux_jump[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_jump|saida_mux_jump[4]~4_combout\ = (\port_map_add|Add0~17_sumout\ & (!\port_map_men_instrucao|Mux0~0_combout\ $ (((\port_map_ula|zero~combout\ & \port_map_and_componente|saida_and~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101001000000001010100100000000101010010000000010101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_men_instrucao|ALT_INV_Mux0~0_combout\,
	datab => \port_map_ula|ALT_INV_zero~combout\,
	datac => \port_map_and_componente|ALT_INV_saida_and~0_combout\,
	datad => \port_map_add|ALT_INV_Add0~17_sumout\,
	combout => \port_map_multiplexador_jump|saida_mux_jump[4]~4_combout\);

\port_map_pc|saida_pc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_multiplexador_jump|saida_mux_jump[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|saida_pc\(4));

\port_map_men_instrucao|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_men_instrucao|Mux3~0_combout\ = ( \port_map_pc|saida_pc\(4) & ( (!\port_map_pc|saida_pc\(3) & (!\port_map_pc|saida_pc\(2) $ (((!\port_map_pc|saida_pc\(0)) # (!\port_map_pc|saida_pc\(1)))))) ) ) # ( !\port_map_pc|saida_pc\(4) & ( 
-- (!\port_map_pc|saida_pc\(0) & ((!\port_map_pc|saida_pc\(2) $ (\port_map_pc|saida_pc\(3))))) # (\port_map_pc|saida_pc\(0) & ((!\port_map_pc|saida_pc\(1) & ((!\port_map_pc|saida_pc\(3)) # (\port_map_pc|saida_pc\(2)))) # (\port_map_pc|saida_pc\(1) & 
-- (!\port_map_pc|saida_pc\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010000011110000111100000000011110100000111100001111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida_pc\(0),
	datab => \port_map_pc|ALT_INV_saida_pc\(1),
	datac => \port_map_pc|ALT_INV_saida_pc\(2),
	datad => \port_map_pc|ALT_INV_saida_pc\(3),
	datae => \port_map_pc|ALT_INV_saida_pc\(4),
	combout => \port_map_men_instrucao|Mux3~0_combout\);

\port_map_men_instrucao|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_men_instrucao|Mux2~0_combout\ = ( \port_map_pc|saida_pc\(4) & ( (!\port_map_pc|saida_pc\(3) & ((!\port_map_pc|saida_pc\(0)) # ((!\port_map_pc|saida_pc\(1)) # (!\port_map_pc|saida_pc\(2))))) ) ) # ( !\port_map_pc|saida_pc\(4) & ( 
-- (!\port_map_pc|saida_pc\(1) & (((\port_map_pc|saida_pc\(2) & \port_map_pc|saida_pc\(3))))) # (\port_map_pc|saida_pc\(1) & ((!\port_map_pc|saida_pc\(0) & (\port_map_pc|saida_pc\(2))) # (\port_map_pc|saida_pc\(0) & ((\port_map_pc|saida_pc\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000011111111111100000000000000010000111111111111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida_pc\(0),
	datab => \port_map_pc|ALT_INV_saida_pc\(1),
	datac => \port_map_pc|ALT_INV_saida_pc\(2),
	datad => \port_map_pc|ALT_INV_saida_pc\(3),
	datae => \port_map_pc|ALT_INV_saida_pc\(4),
	combout => \port_map_men_instrucao|Mux2~0_combout\);

\port_map_men_instrucao|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_men_instrucao|Mux1~0_combout\ = ( \port_map_pc|saida_pc\(4) & ( (!\port_map_pc|saida_pc\(3) & ((!\port_map_pc|saida_pc\(0)) # ((!\port_map_pc|saida_pc\(1)) # (!\port_map_pc|saida_pc\(2))))) ) ) # ( !\port_map_pc|saida_pc\(4) & ( 
-- (!\port_map_pc|saida_pc\(0) & (((!\port_map_pc|saida_pc\(2))))) # (\port_map_pc|saida_pc\(0) & ((!\port_map_pc|saida_pc\(1) & (!\port_map_pc|saida_pc\(2))) # (\port_map_pc|saida_pc\(1) & ((!\port_map_pc|saida_pc\(3)) # (\port_map_pc|saida_pc\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000111100001111111100000000011110001111000011111111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida_pc\(0),
	datab => \port_map_pc|ALT_INV_saida_pc\(1),
	datac => \port_map_pc|ALT_INV_saida_pc\(2),
	datad => \port_map_pc|ALT_INV_saida_pc\(3),
	datae => \port_map_pc|ALT_INV_saida_pc\(4),
	combout => \port_map_men_instrucao|Mux1~0_combout\);

\port_map_uc|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_uc|Mux6~0_combout\ = ((\port_map_men_instrucao|Mux0~0_combout\ & ((\port_map_men_instrucao|Mux1~0_combout\) # (\port_map_men_instrucao|Mux2~0_combout\)))) # (\port_map_men_instrucao|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101111111010101010111111101010101011111110101010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_men_instrucao|ALT_INV_Mux3~0_combout\,
	datab => \port_map_men_instrucao|ALT_INV_Mux2~0_combout\,
	datac => \port_map_men_instrucao|ALT_INV_Mux1~0_combout\,
	datad => \port_map_men_instrucao|ALT_INV_Mux0~0_combout\,
	combout => \port_map_uc|Mux6~0_combout\);

\port_map_uc|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_uc|Mux2~0_combout\ = (\port_map_men_instrucao|Mux3~0_combout\ & (!\port_map_men_instrucao|Mux1~0_combout\ & (!\port_map_men_instrucao|Mux0~0_combout\ & \port_map_men_instrucao|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_men_instrucao|ALT_INV_Mux3~0_combout\,
	datab => \port_map_men_instrucao|ALT_INV_Mux1~0_combout\,
	datac => \port_map_men_instrucao|ALT_INV_Mux0~0_combout\,
	datad => \port_map_men_instrucao|ALT_INV_Mux2~0_combout\,
	combout => \port_map_uc|Mux2~0_combout\);

\port_map_uc|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_uc|Mux7~0_combout\ = (!\port_map_men_instrucao|Mux3~0_combout\ & (\port_map_men_instrucao|Mux1~0_combout\ & (!\port_map_men_instrucao|Mux0~0_combout\ & !\port_map_men_instrucao|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_men_instrucao|ALT_INV_Mux3~0_combout\,
	datab => \port_map_men_instrucao|ALT_INV_Mux1~0_combout\,
	datac => \port_map_men_instrucao|ALT_INV_Mux0~0_combout\,
	datad => \port_map_men_instrucao|ALT_INV_Mux2~0_combout\,
	combout => \port_map_uc|Mux7~0_combout\);

\port_map_ula|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux21~0_combout\ = (!\port_map_men_instrucao|Mux0~0_combout\ & (((\port_map_men_instrucao|Mux1~0_combout\ & !\port_map_uc|Mux6~0_combout\)) # (\port_map_men_instrucao|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110000001100010011000000110001001100000011000100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_men_instrucao|ALT_INV_Mux1~0_combout\,
	datab => \port_map_men_instrucao|ALT_INV_Mux0~0_combout\,
	datac => \port_map_men_instrucao|ALT_INV_Mux2~0_combout\,
	datad => \port_map_uc|ALT_INV_Mux6~0_combout\,
	combout => \port_map_ula|Mux21~0_combout\);

\port_map_ula|Mux21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux21~1_combout\ = (!\port_map_men_instrucao|Mux0~0_combout\ & ((!\port_map_men_instrucao|Mux2~0_combout\ & ((!\port_map_men_instrucao|Mux1~0_combout\) # (!\port_map_uc|Mux6~0_combout\))) # (\port_map_men_instrucao|Mux2~0_combout\ & 
-- ((\port_map_uc|Mux6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010001100110000001000110011000000100011001100000010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_men_instrucao|ALT_INV_Mux1~0_combout\,
	datab => \port_map_men_instrucao|ALT_INV_Mux0~0_combout\,
	datac => \port_map_men_instrucao|ALT_INV_Mux2~0_combout\,
	datad => \port_map_uc|ALT_INV_Mux6~0_combout\,
	combout => \port_map_ula|Mux21~1_combout\);

\port_map_men_instrucao|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_men_instrucao|Mux5~1_combout\ = (!\port_map_pc|saida_pc\(2) & (!\port_map_pc|saida_pc\(3) & !\port_map_pc|saida_pc\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida_pc\(2),
	datab => \port_map_pc|ALT_INV_saida_pc\(3),
	datac => \port_map_pc|ALT_INV_saida_pc\(4),
	combout => \port_map_men_instrucao|Mux5~1_combout\);

\port_map_men_instrucao|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_men_instrucao|Mux7~0_combout\ = ( \port_map_pc|saida_pc\(4) & ( (!\port_map_pc|saida_pc\(0) & !\port_map_pc|saida_pc\(3)) ) ) # ( !\port_map_pc|saida_pc\(4) & ( (!\port_map_pc|saida_pc\(0) & (((\port_map_pc|saida_pc\(3)) # 
-- (\port_map_pc|saida_pc\(2))))) # (\port_map_pc|saida_pc\(0) & (!\port_map_pc|saida_pc\(3) & ((!\port_map_pc|saida_pc\(1)) # (!\port_map_pc|saida_pc\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111010101010101010100000000001011110101010101010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida_pc\(0),
	datab => \port_map_pc|ALT_INV_saida_pc\(1),
	datac => \port_map_pc|ALT_INV_saida_pc\(2),
	datad => \port_map_pc|ALT_INV_saida_pc\(3),
	datae => \port_map_pc|ALT_INV_saida_pc\(4),
	combout => \port_map_men_instrucao|Mux7~0_combout\);

\port_map_ula|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add0~34_cout\ = CARRY(( \port_map_uc|Mux6~0_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_uc|ALT_INV_Mux6~0_combout\,
	cin => GND,
	cout => \port_map_ula|Add0~34_cout\);

\port_map_ula|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add0~1_sumout\ = SUM(( \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[0]~8_combout\ ) + ( !\port_map_uc|Mux6~0_combout\ $ (((!\port_map_men_instrucao|Mux5~1_combout\ & 
-- (!\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[0]~8_combout\)) # (\port_map_men_instrucao|Mux5~1_combout\ & ((!\port_map_men_instrucao|Mux7~0_combout\))))) ) + ( \port_map_ula|Add0~34_cout\ ))
-- \port_map_ula|Add0~2\ = CARRY(( \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[0]~8_combout\ ) + ( !\port_map_uc|Mux6~0_combout\ $ (((!\port_map_men_instrucao|Mux5~1_combout\ & (!\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[0]~8_combout\)) # 
-- (\port_map_men_instrucao|Mux5~1_combout\ & ((!\port_map_men_instrucao|Mux7~0_combout\))))) ) + ( \port_map_ula|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101101001000011100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[0]~8_combout\,
	datab => \port_map_men_instrucao|ALT_INV_Mux5~1_combout\,
	datac => \port_map_uc|ALT_INV_Mux6~0_combout\,
	dataf => \port_map_men_instrucao|ALT_INV_Mux7~0_combout\,
	cin => \port_map_ula|Add0~34_cout\,
	sumout => \port_map_ula|Add0~1_sumout\,
	cout => \port_map_ula|Add0~2\);

\port_map_multiplexador_ula_src|saida_mux_ula_src[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_ula_src|saida_mux_ula_src[2]~2_combout\ = (\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[2]~10_combout\ & (((\port_map_pc|saida_pc\(4)) # (\port_map_pc|saida_pc\(3))) # (\port_map_pc|saida_pc\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111111000000000111111100000000011111110000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida_pc\(2),
	datab => \port_map_pc|ALT_INV_saida_pc\(3),
	datac => \port_map_pc|ALT_INV_saida_pc\(4),
	datad => \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[2]~10_combout\,
	combout => \port_map_multiplexador_ula_src|saida_mux_ula_src[2]~2_combout\);

\port_map_ula|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add0~5_sumout\ = SUM(( \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[1]~9_combout\ ) + ( !\port_map_uc|Mux6~0_combout\ $ (((!\port_map_men_instrucao|Mux5~1_combout\ & 
-- (!\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[1]~9_combout\)) # (\port_map_men_instrucao|Mux5~1_combout\ & ((!\port_map_men_instrucao|Mux6~0_combout\))))) ) + ( \port_map_ula|Add0~2\ ))
-- \port_map_ula|Add0~6\ = CARRY(( \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[1]~9_combout\ ) + ( !\port_map_uc|Mux6~0_combout\ $ (((!\port_map_men_instrucao|Mux5~1_combout\ & (!\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[1]~9_combout\)) # 
-- (\port_map_men_instrucao|Mux5~1_combout\ & ((!\port_map_men_instrucao|Mux6~0_combout\))))) ) + ( \port_map_ula|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100111001001001100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[1]~9_combout\,
	datab => \port_map_uc|ALT_INV_Mux6~0_combout\,
	datac => \port_map_men_instrucao|ALT_INV_Mux5~1_combout\,
	dataf => \port_map_men_instrucao|ALT_INV_Mux6~0_combout\,
	cin => \port_map_ula|Add0~2\,
	sumout => \port_map_ula|Add0~5_sumout\,
	cout => \port_map_ula|Add0~6\);

\port_map_ula|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add0~9_sumout\ = SUM(( \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[2]~10_combout\ ) + ( !\port_map_uc|Mux6~0_combout\ $ (!\port_map_multiplexador_ula_src|saida_mux_ula_src[2]~2_combout\) ) + ( \port_map_ula|Add0~6\ ))
-- \port_map_ula|Add0~10\ = CARRY(( \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[2]~10_combout\ ) + ( !\port_map_uc|Mux6~0_combout\ $ (!\port_map_multiplexador_ula_src|saida_mux_ula_src[2]~2_combout\) ) + ( \port_map_ula|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_uc|ALT_INV_Mux6~0_combout\,
	datad => \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[2]~10_combout\,
	dataf => \port_map_multiplexador_ula_src|ALT_INV_saida_mux_ula_src[2]~2_combout\,
	cin => \port_map_ula|Add0~6\,
	sumout => \port_map_ula|Add0~9_sumout\,
	cout => \port_map_ula|Add0~10\);

\port_map_ula|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add0~13_sumout\ = SUM(( \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[3]~11_combout\ ) + ( !\port_map_uc|Mux6~0_combout\ $ (((!\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[3]~11_combout\) # 
-- (\port_map_men_instrucao|Mux5~1_combout\))) ) + ( \port_map_ula|Add0~10\ ))
-- \port_map_ula|Add0~14\ = CARRY(( \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[3]~11_combout\ ) + ( !\port_map_uc|Mux6~0_combout\ $ (((!\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[3]~11_combout\) # (\port_map_men_instrucao|Mux5~1_combout\))) 
-- ) + ( \port_map_ula|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100110011100110000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[3]~11_combout\,
	datab => \port_map_uc|ALT_INV_Mux6~0_combout\,
	dataf => \port_map_men_instrucao|ALT_INV_Mux5~1_combout\,
	cin => \port_map_ula|Add0~10\,
	sumout => \port_map_ula|Add0~13_sumout\,
	cout => \port_map_ula|Add0~14\);

\port_map_multiplexador_ula_src|saida_mux_ula_src[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_ula_src|saida_mux_ula_src[4]~4_combout\ = (\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[4]~12_combout\ & (((\port_map_pc|saida_pc\(4)) # (\port_map_pc|saida_pc\(3))) # (\port_map_pc|saida_pc\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111111000000000111111100000000011111110000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida_pc\(2),
	datab => \port_map_pc|ALT_INV_saida_pc\(3),
	datac => \port_map_pc|ALT_INV_saida_pc\(4),
	datad => \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[4]~12_combout\,
	combout => \port_map_multiplexador_ula_src|saida_mux_ula_src[4]~4_combout\);

\port_map_ula|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add0~17_sumout\ = SUM(( \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[4]~12_combout\ ) + ( !\port_map_uc|Mux6~0_combout\ $ (!\port_map_multiplexador_ula_src|saida_mux_ula_src[4]~4_combout\) ) + ( \port_map_ula|Add0~14\ ))
-- \port_map_ula|Add0~18\ = CARRY(( \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[4]~12_combout\ ) + ( !\port_map_uc|Mux6~0_combout\ $ (!\port_map_multiplexador_ula_src|saida_mux_ula_src[4]~4_combout\) ) + ( \port_map_ula|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_uc|ALT_INV_Mux6~0_combout\,
	datad => \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[4]~12_combout\,
	dataf => \port_map_multiplexador_ula_src|ALT_INV_saida_mux_ula_src[4]~4_combout\,
	cin => \port_map_ula|Add0~14\,
	sumout => \port_map_ula|Add0~17_sumout\,
	cout => \port_map_ula|Add0~18\);

\port_map_ula|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add0~21_sumout\ = SUM(( \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[5]~13_combout\ ) + ( !\port_map_uc|Mux6~0_combout\ $ (((!\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[5]~13_combout\) # 
-- (\port_map_men_instrucao|Mux5~1_combout\))) ) + ( \port_map_ula|Add0~18\ ))
-- \port_map_ula|Add0~22\ = CARRY(( \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[5]~13_combout\ ) + ( !\port_map_uc|Mux6~0_combout\ $ (((!\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[5]~13_combout\) # (\port_map_men_instrucao|Mux5~1_combout\))) 
-- ) + ( \port_map_ula|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100110011100110000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[5]~13_combout\,
	datab => \port_map_uc|ALT_INV_Mux6~0_combout\,
	dataf => \port_map_men_instrucao|ALT_INV_Mux5~1_combout\,
	cin => \port_map_ula|Add0~18\,
	sumout => \port_map_ula|Add0~21_sumout\,
	cout => \port_map_ula|Add0~22\);

\port_map_multiplexador_ula_src|saida_mux_ula_src[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_ula_src|saida_mux_ula_src[6]~6_combout\ = (\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[6]~14_combout\ & (((\port_map_pc|saida_pc\(4)) # (\port_map_pc|saida_pc\(3))) # (\port_map_pc|saida_pc\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111111000000000111111100000000011111110000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida_pc\(2),
	datab => \port_map_pc|ALT_INV_saida_pc\(3),
	datac => \port_map_pc|ALT_INV_saida_pc\(4),
	datad => \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[6]~14_combout\,
	combout => \port_map_multiplexador_ula_src|saida_mux_ula_src[6]~6_combout\);

\port_map_ula|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add0~25_sumout\ = SUM(( \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[6]~14_combout\ ) + ( !\port_map_uc|Mux6~0_combout\ $ (!\port_map_multiplexador_ula_src|saida_mux_ula_src[6]~6_combout\) ) + ( \port_map_ula|Add0~22\ ))
-- \port_map_ula|Add0~26\ = CARRY(( \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[6]~14_combout\ ) + ( !\port_map_uc|Mux6~0_combout\ $ (!\port_map_multiplexador_ula_src|saida_mux_ula_src[6]~6_combout\) ) + ( \port_map_ula|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_uc|ALT_INV_Mux6~0_combout\,
	datad => \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[6]~14_combout\,
	dataf => \port_map_multiplexador_ula_src|ALT_INV_saida_mux_ula_src[6]~6_combout\,
	cin => \port_map_ula|Add0~22\,
	sumout => \port_map_ula|Add0~25_sumout\,
	cout => \port_map_ula|Add0~26\);

\port_map_ula|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add0~29_sumout\ = SUM(( \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[7]~15_combout\ ) + ( !\port_map_uc|Mux6~0_combout\ $ (((!\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[7]~15_combout\) # 
-- (\port_map_men_instrucao|Mux5~1_combout\))) ) + ( \port_map_ula|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100110011100110000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[7]~15_combout\,
	datab => \port_map_uc|ALT_INV_Mux6~0_combout\,
	dataf => \port_map_men_instrucao|ALT_INV_Mux5~1_combout\,
	cin => \port_map_ula|Add0~26\,
	sumout => \port_map_ula|Add0~29_sumout\);

\port_map_multiplexador_ula_src|saida_mux_ula_src[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_ula_src|saida_mux_ula_src[0]~0_combout\ = (!\port_map_men_instrucao|Mux5~1_combout\ & ((\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[0]~8_combout\))) # (\port_map_men_instrucao|Mux5~1_combout\ & 
-- (\port_map_men_instrucao|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_men_instrucao|ALT_INV_Mux7~0_combout\,
	datab => \port_map_men_instrucao|ALT_INV_Mux5~1_combout\,
	datac => \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[0]~8_combout\,
	combout => \port_map_multiplexador_ula_src|saida_mux_ula_src[0]~0_combout\);

\port_map_multiplexador_ula_src|saida_mux_ula_src[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_ula_src|saida_mux_ula_src[1]~1_combout\ = (!\port_map_men_instrucao|Mux5~1_combout\ & ((\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[1]~9_combout\))) # (\port_map_men_instrucao|Mux5~1_combout\ & 
-- (\port_map_men_instrucao|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_men_instrucao|ALT_INV_Mux6~0_combout\,
	datab => \port_map_men_instrucao|ALT_INV_Mux5~1_combout\,
	datac => \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[1]~9_combout\,
	combout => \port_map_multiplexador_ula_src|saida_mux_ula_src[1]~1_combout\);

\port_map_multiplexador_ula_src|saida_mux_ula_src[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_ula_src|saida_mux_ula_src[3]~3_combout\ = (!\port_map_men_instrucao|Mux5~1_combout\ & \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[3]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_men_instrucao|ALT_INV_Mux5~1_combout\,
	datab => \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[3]~11_combout\,
	combout => \port_map_multiplexador_ula_src|saida_mux_ula_src[3]~3_combout\);

\port_map_multiplexador_ula_src|saida_mux_ula_src[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_ula_src|saida_mux_ula_src[5]~5_combout\ = (!\port_map_men_instrucao|Mux5~1_combout\ & \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[5]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_men_instrucao|ALT_INV_Mux5~1_combout\,
	datab => \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[5]~13_combout\,
	combout => \port_map_multiplexador_ula_src|saida_mux_ula_src[5]~5_combout\);

\port_map_multiplexador_ula_src|saida_mux_ula_src[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_ula_src|saida_mux_ula_src[7]~7_combout\ = (!\port_map_men_instrucao|Mux5~1_combout\ & \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[7]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_men_instrucao|ALT_INV_Mux5~1_combout\,
	datab => \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[7]~15_combout\,
	combout => \port_map_multiplexador_ula_src|saida_mux_ula_src[7]~7_combout\);

\port_map_ula|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 8,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m9x9",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \port_map_ula|Mult0~8_AX_bus\,
	ay => \port_map_ula|Mult0~8_AY_bus\,
	resulta => \port_map_ula|Mult0~8_RESULTA_bus\);

\port_map_ula|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux5~0_combout\ = (!\port_map_men_instrucao|Mux1~0_combout\ & (!\port_map_men_instrucao|Mux0~0_combout\ & (\port_map_men_instrucao|Mux2~0_combout\ & !\port_map_uc|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_men_instrucao|ALT_INV_Mux1~0_combout\,
	datab => \port_map_men_instrucao|ALT_INV_Mux0~0_combout\,
	datac => \port_map_men_instrucao|ALT_INV_Mux2~0_combout\,
	datad => \port_map_uc|ALT_INV_Mux6~0_combout\,
	combout => \port_map_ula|Mux5~0_combout\);

\port_map_ula|result_mult[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|result_mult\(7) = ( \port_map_ula|result_mult\(7) & ( \port_map_ula|Mux5~0_combout\ & ( \port_map_ula|Mult0~15\ ) ) ) # ( !\port_map_ula|result_mult\(7) & ( \port_map_ula|Mux5~0_combout\ & ( \port_map_ula|Mult0~15\ ) ) ) # ( 
-- \port_map_ula|result_mult\(7) & ( !\port_map_ula|Mux5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_ula|ALT_INV_Mult0~15\,
	datae => \port_map_ula|ALT_INV_result_mult\(7),
	dataf => \port_map_ula|ALT_INV_Mux5~0_combout\,
	combout => \port_map_ula|result_mult\(7));

\port_map_ula|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux28~0_combout\ = ( \port_map_ula|result_mult\(7) & ( (!\port_map_ula|Mux21~0_combout\ & (((\port_map_ula|Mux21~1_combout\ & \port_map_ula|Add0~29_sumout\)))) # (\port_map_ula|Mux21~0_combout\ & (((!\port_map_ula|Mux21~1_combout\)) # 
-- (\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[7]~15_combout\))) ) ) # ( !\port_map_ula|result_mult\(7) & ( (\port_map_ula|Mux21~1_combout\ & ((!\port_map_ula|Mux21~0_combout\ & ((\port_map_ula|Add0~29_sumout\))) # (\port_map_ula|Mux21~0_combout\ & 
-- (\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[7]~15_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101001100010011110100000001000011010011000100111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[7]~15_combout\,
	datab => \port_map_ula|ALT_INV_Mux21~0_combout\,
	datac => \port_map_ula|ALT_INV_Mux21~1_combout\,
	datad => \port_map_ula|ALT_INV_Add0~29_sumout\,
	datae => \port_map_ula|ALT_INV_result_mult\(7),
	combout => \port_map_ula|Mux28~0_combout\);

\port_map_ula|result_mult[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|result_mult\(12) = ( \port_map_ula|result_mult\(12) & ( \port_map_ula|Mux5~0_combout\ & ( \port_map_ula|Mult0~20\ ) ) ) # ( !\port_map_ula|result_mult\(12) & ( \port_map_ula|Mux5~0_combout\ & ( \port_map_ula|Mult0~20\ ) ) ) # ( 
-- \port_map_ula|result_mult\(12) & ( !\port_map_ula|Mux5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_ula|ALT_INV_Mult0~20\,
	datae => \port_map_ula|ALT_INV_result_mult\(12),
	dataf => \port_map_ula|ALT_INV_Mux5~0_combout\,
	combout => \port_map_ula|result_mult\(12));

\port_map_ula|result_mult[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|result_mult\(13) = ( \port_map_ula|result_mult\(13) & ( \port_map_ula|Mux5~0_combout\ & ( \port_map_ula|Mult0~21\ ) ) ) # ( !\port_map_ula|result_mult\(13) & ( \port_map_ula|Mux5~0_combout\ & ( \port_map_ula|Mult0~21\ ) ) ) # ( 
-- \port_map_ula|result_mult\(13) & ( !\port_map_ula|Mux5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_ula|ALT_INV_Mult0~21\,
	datae => \port_map_ula|ALT_INV_result_mult\(13),
	dataf => \port_map_ula|ALT_INV_Mux5~0_combout\,
	combout => \port_map_ula|result_mult\(13));

\port_map_ula|result_mult[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|result_mult\(14) = ( \port_map_ula|result_mult\(14) & ( \port_map_ula|Mux5~0_combout\ & ( \port_map_ula|Mult0~22\ ) ) ) # ( !\port_map_ula|result_mult\(14) & ( \port_map_ula|Mux5~0_combout\ & ( \port_map_ula|Mult0~22\ ) ) ) # ( 
-- \port_map_ula|result_mult\(14) & ( !\port_map_ula|Mux5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_ula|ALT_INV_Mult0~22\,
	datae => \port_map_ula|ALT_INV_result_mult\(14),
	dataf => \port_map_ula|ALT_INV_Mux5~0_combout\,
	combout => \port_map_ula|result_mult\(14));

\port_map_ula|result_mult[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|result_mult\(15) = ( \port_map_ula|result_mult\(15) & ( \port_map_ula|Mux5~0_combout\ & ( \port_map_ula|Mult0~23\ ) ) ) # ( !\port_map_ula|result_mult\(15) & ( \port_map_ula|Mux5~0_combout\ & ( \port_map_ula|Mult0~23\ ) ) ) # ( 
-- \port_map_ula|result_mult\(15) & ( !\port_map_ula|Mux5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_ula|ALT_INV_Mult0~23\,
	datae => \port_map_ula|ALT_INV_result_mult\(15),
	dataf => \port_map_ula|ALT_INV_Mux5~0_combout\,
	combout => \port_map_ula|result_mult\(15));

\port_map_ula|result_mult[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|result_mult\(8) = ( \port_map_ula|result_mult\(8) & ( \port_map_ula|Mux5~0_combout\ & ( \port_map_ula|Mult0~16\ ) ) ) # ( !\port_map_ula|result_mult\(8) & ( \port_map_ula|Mux5~0_combout\ & ( \port_map_ula|Mult0~16\ ) ) ) # ( 
-- \port_map_ula|result_mult\(8) & ( !\port_map_ula|Mux5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_ula|ALT_INV_Mult0~16\,
	datae => \port_map_ula|ALT_INV_result_mult\(8),
	dataf => \port_map_ula|ALT_INV_Mux5~0_combout\,
	combout => \port_map_ula|result_mult\(8));

\port_map_ula|result_mult[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|result_mult\(9) = ( \port_map_ula|result_mult\(9) & ( \port_map_ula|Mux5~0_combout\ & ( \port_map_ula|Mult0~17\ ) ) ) # ( !\port_map_ula|result_mult\(9) & ( \port_map_ula|Mux5~0_combout\ & ( \port_map_ula|Mult0~17\ ) ) ) # ( 
-- \port_map_ula|result_mult\(9) & ( !\port_map_ula|Mux5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_ula|ALT_INV_Mult0~17\,
	datae => \port_map_ula|ALT_INV_result_mult\(9),
	dataf => \port_map_ula|ALT_INV_Mux5~0_combout\,
	combout => \port_map_ula|result_mult\(9));

\port_map_ula|result_mult[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|result_mult\(10) = ( \port_map_ula|result_mult\(10) & ( \port_map_ula|Mux5~0_combout\ & ( \port_map_ula|Mult0~18\ ) ) ) # ( !\port_map_ula|result_mult\(10) & ( \port_map_ula|Mux5~0_combout\ & ( \port_map_ula|Mult0~18\ ) ) ) # ( 
-- \port_map_ula|result_mult\(10) & ( !\port_map_ula|Mux5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_ula|ALT_INV_Mult0~18\,
	datae => \port_map_ula|ALT_INV_result_mult\(10),
	dataf => \port_map_ula|ALT_INV_Mux5~0_combout\,
	combout => \port_map_ula|result_mult\(10));

\port_map_ula|result_mult[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|result_mult\(11) = ( \port_map_ula|result_mult\(11) & ( \port_map_ula|Mux5~0_combout\ & ( \port_map_ula|Mult0~19\ ) ) ) # ( !\port_map_ula|result_mult\(11) & ( \port_map_ula|Mux5~0_combout\ & ( \port_map_ula|Mult0~19\ ) ) ) # ( 
-- \port_map_ula|result_mult\(11) & ( !\port_map_ula|Mux5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_ula|ALT_INV_Mult0~19\,
	datae => \port_map_ula|ALT_INV_result_mult\(11),
	dataf => \port_map_ula|ALT_INV_Mux5~0_combout\,
	combout => \port_map_ula|result_mult\(11));

\port_map_ula|Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux29~0_combout\ = (!\port_map_ula|result_mult\(8) & (!\port_map_ula|result_mult\(9) & (!\port_map_ula|result_mult\(10) & !\port_map_ula|result_mult\(11))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|ALT_INV_result_mult\(8),
	datab => \port_map_ula|ALT_INV_result_mult\(9),
	datac => \port_map_ula|ALT_INV_result_mult\(10),
	datad => \port_map_ula|ALT_INV_result_mult\(11),
	combout => \port_map_ula|Mux29~0_combout\);

\port_map_ula|Mux29~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux29~1_combout\ = ( \port_map_ula|Mux29~0_combout\ & ( (!\port_map_ula|result_mult\(12) & (!\port_map_ula|result_mult\(13) & (!\port_map_ula|result_mult\(14) & !\port_map_ula|result_mult\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|ALT_INV_result_mult\(12),
	datab => \port_map_ula|ALT_INV_result_mult\(13),
	datac => \port_map_ula|ALT_INV_result_mult\(14),
	datad => \port_map_ula|ALT_INV_result_mult\(15),
	datae => \port_map_ula|ALT_INV_Mux29~0_combout\,
	combout => \port_map_ula|Mux29~1_combout\);

\port_map_ula|Mux29~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux29~2_combout\ = ( \port_map_ula|Mux29~1_combout\ & ( (!\port_map_men_instrucao|Mux0~0_combout\ & ((!\port_map_men_instrucao|Mux1~0_combout\) # ((!\port_map_men_instrucao|Mux2~0_combout\)))) # (\port_map_men_instrucao|Mux0~0_combout\ & 
-- (((!\port_map_uc|Mux6~0_combout\) # (\port_map_men_instrucao|Mux2~0_combout\)))) ) ) # ( !\port_map_ula|Mux29~1_combout\ & ( (!\port_map_men_instrucao|Mux0~0_combout\ & ((!\port_map_men_instrucao|Mux2~0_combout\) # 
-- ((!\port_map_men_instrucao|Mux1~0_combout\ & \port_map_uc|Mux6~0_combout\)))) # (\port_map_men_instrucao|Mux0~0_combout\ & (((!\port_map_uc|Mux6~0_combout\) # (\port_map_men_instrucao|Mux2~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111001011111110111100101111110011110010111111101111001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_men_instrucao|ALT_INV_Mux1~0_combout\,
	datab => \port_map_men_instrucao|ALT_INV_Mux0~0_combout\,
	datac => \port_map_men_instrucao|ALT_INV_Mux2~0_combout\,
	datad => \port_map_uc|ALT_INV_Mux6~0_combout\,
	datae => \port_map_ula|ALT_INV_Mux29~1_combout\,
	combout => \port_map_ula|Mux29~2_combout\);

\port_map_ula|resultado_ula[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|resultado_ula\(7) = ( \port_map_ula|resultado_ula\(7) & ( \port_map_ula|Mux29~2_combout\ & ( \port_map_ula|Mux28~0_combout\ ) ) ) # ( !\port_map_ula|resultado_ula\(7) & ( \port_map_ula|Mux29~2_combout\ & ( \port_map_ula|Mux28~0_combout\ ) ) 
-- ) # ( \port_map_ula|resultado_ula\(7) & ( !\port_map_ula|Mux29~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_ula|ALT_INV_Mux28~0_combout\,
	datae => \port_map_ula|ALT_INV_resultado_ula\(7),
	dataf => \port_map_ula|ALT_INV_Mux29~2_combout\,
	combout => \port_map_ula|resultado_ula\(7));

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/split.ram0_memoria_dados_b72205e6.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_dados:port_map_memoria_dados|altsyncram:indice_mem_dados_rtl_0|altsyncram_kpu1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \port_map_uc|Mux2~0_combout\,
	portbre => \port_map_uc|Mux7~0_combout\,
	clk0 => \clock~input_o\,
	portadatain => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[7]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[7]~15_combout\ = (!\port_map_uc|Mux2~0_combout\ & ((\port_map_multiplexador_ula_src|saida_mux_ula_src[7]~7_combout\))) # (\port_map_uc|Mux2~0_combout\ & 
-- (\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a7~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ALT_INV_ram_block1a7~portbdataout\,
	datab => \port_map_uc|ALT_INV_Mux2~0_combout\,
	datac => \port_map_multiplexador_ula_src|ALT_INV_saida_mux_ula_src[7]~7_combout\,
	combout => \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[7]~15_combout\);

\port_map_ula|result_mult[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|result_mult\(6) = ( \port_map_ula|result_mult\(6) & ( \port_map_ula|Mux5~0_combout\ & ( \port_map_ula|Mult0~14\ ) ) ) # ( !\port_map_ula|result_mult\(6) & ( \port_map_ula|Mux5~0_combout\ & ( \port_map_ula|Mult0~14\ ) ) ) # ( 
-- \port_map_ula|result_mult\(6) & ( !\port_map_ula|Mux5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_ula|ALT_INV_Mult0~14\,
	datae => \port_map_ula|ALT_INV_result_mult\(6),
	dataf => \port_map_ula|ALT_INV_Mux5~0_combout\,
	combout => \port_map_ula|result_mult\(6));

\port_map_ula|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux27~0_combout\ = ( \port_map_ula|result_mult\(6) & ( (!\port_map_ula|Mux21~0_combout\ & (((\port_map_ula|Mux21~1_combout\ & \port_map_ula|Add0~25_sumout\)))) # (\port_map_ula|Mux21~0_combout\ & (((!\port_map_ula|Mux21~1_combout\)) # 
-- (\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[6]~14_combout\))) ) ) # ( !\port_map_ula|result_mult\(6) & ( (\port_map_ula|Mux21~1_combout\ & ((!\port_map_ula|Mux21~0_combout\ & ((\port_map_ula|Add0~25_sumout\))) # (\port_map_ula|Mux21~0_combout\ & 
-- (\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[6]~14_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101001100010011110100000001000011010011000100111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[6]~14_combout\,
	datab => \port_map_ula|ALT_INV_Mux21~0_combout\,
	datac => \port_map_ula|ALT_INV_Mux21~1_combout\,
	datad => \port_map_ula|ALT_INV_Add0~25_sumout\,
	datae => \port_map_ula|ALT_INV_result_mult\(6),
	combout => \port_map_ula|Mux27~0_combout\);

\port_map_ula|resultado_ula[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|resultado_ula\(6) = ( \port_map_ula|resultado_ula\(6) & ( \port_map_ula|Mux29~2_combout\ & ( \port_map_ula|Mux27~0_combout\ ) ) ) # ( !\port_map_ula|resultado_ula\(6) & ( \port_map_ula|Mux29~2_combout\ & ( \port_map_ula|Mux27~0_combout\ ) ) 
-- ) # ( \port_map_ula|resultado_ula\(6) & ( !\port_map_ula|Mux29~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_ula|ALT_INV_Mux27~0_combout\,
	datae => \port_map_ula|ALT_INV_resultado_ula\(6),
	dataf => \port_map_ula|ALT_INV_Mux29~2_combout\,
	combout => \port_map_ula|resultado_ula\(6));

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/split.ram0_memoria_dados_b72205e6.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_dados:port_map_memoria_dados|altsyncram:indice_mem_dados_rtl_0|altsyncram_kpu1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \port_map_uc|Mux2~0_combout\,
	portbre => \port_map_uc|Mux7~0_combout\,
	clk0 => \clock~input_o\,
	portadatain => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[6]~14_combout\ = (!\port_map_uc|Mux2~0_combout\ & ((\port_map_multiplexador_ula_src|saida_mux_ula_src[6]~6_combout\))) # (\port_map_uc|Mux2~0_combout\ & 
-- (\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a6~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ALT_INV_ram_block1a6~portbdataout\,
	datab => \port_map_uc|ALT_INV_Mux2~0_combout\,
	datac => \port_map_multiplexador_ula_src|ALT_INV_saida_mux_ula_src[6]~6_combout\,
	combout => \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[6]~14_combout\);

\port_map_ula|result_mult[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|result_mult\(5) = ( \port_map_ula|result_mult\(5) & ( \port_map_ula|Mux5~0_combout\ & ( \port_map_ula|Mult0~13\ ) ) ) # ( !\port_map_ula|result_mult\(5) & ( \port_map_ula|Mux5~0_combout\ & ( \port_map_ula|Mult0~13\ ) ) ) # ( 
-- \port_map_ula|result_mult\(5) & ( !\port_map_ula|Mux5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_ula|ALT_INV_Mult0~13\,
	datae => \port_map_ula|ALT_INV_result_mult\(5),
	dataf => \port_map_ula|ALT_INV_Mux5~0_combout\,
	combout => \port_map_ula|result_mult\(5));

\port_map_ula|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux26~0_combout\ = ( \port_map_ula|result_mult\(5) & ( (!\port_map_ula|Mux21~0_combout\ & (((\port_map_ula|Mux21~1_combout\ & \port_map_ula|Add0~21_sumout\)))) # (\port_map_ula|Mux21~0_combout\ & (((!\port_map_ula|Mux21~1_combout\)) # 
-- (\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[5]~13_combout\))) ) ) # ( !\port_map_ula|result_mult\(5) & ( (\port_map_ula|Mux21~1_combout\ & ((!\port_map_ula|Mux21~0_combout\ & ((\port_map_ula|Add0~21_sumout\))) # (\port_map_ula|Mux21~0_combout\ & 
-- (\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[5]~13_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101001100010011110100000001000011010011000100111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[5]~13_combout\,
	datab => \port_map_ula|ALT_INV_Mux21~0_combout\,
	datac => \port_map_ula|ALT_INV_Mux21~1_combout\,
	datad => \port_map_ula|ALT_INV_Add0~21_sumout\,
	datae => \port_map_ula|ALT_INV_result_mult\(5),
	combout => \port_map_ula|Mux26~0_combout\);

\port_map_ula|resultado_ula[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|resultado_ula\(5) = ( \port_map_ula|resultado_ula\(5) & ( \port_map_ula|Mux29~2_combout\ & ( \port_map_ula|Mux26~0_combout\ ) ) ) # ( !\port_map_ula|resultado_ula\(5) & ( \port_map_ula|Mux29~2_combout\ & ( \port_map_ula|Mux26~0_combout\ ) ) 
-- ) # ( \port_map_ula|resultado_ula\(5) & ( !\port_map_ula|Mux29~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_ula|ALT_INV_Mux26~0_combout\,
	datae => \port_map_ula|ALT_INV_resultado_ula\(5),
	dataf => \port_map_ula|ALT_INV_Mux29~2_combout\,
	combout => \port_map_ula|resultado_ula\(5));

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/split.ram0_memoria_dados_b72205e6.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_dados:port_map_memoria_dados|altsyncram:indice_mem_dados_rtl_0|altsyncram_kpu1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \port_map_uc|Mux2~0_combout\,
	portbre => \port_map_uc|Mux7~0_combout\,
	clk0 => \clock~input_o\,
	portadatain => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[5]~13_combout\ = (!\port_map_uc|Mux2~0_combout\ & ((\port_map_multiplexador_ula_src|saida_mux_ula_src[5]~5_combout\))) # (\port_map_uc|Mux2~0_combout\ & 
-- (\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a5~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ALT_INV_ram_block1a5~portbdataout\,
	datab => \port_map_uc|ALT_INV_Mux2~0_combout\,
	datac => \port_map_multiplexador_ula_src|ALT_INV_saida_mux_ula_src[5]~5_combout\,
	combout => \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[5]~13_combout\);

\port_map_ula|result_mult[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|result_mult\(4) = ( \port_map_ula|result_mult\(4) & ( \port_map_ula|Mux5~0_combout\ & ( \port_map_ula|Mult0~12\ ) ) ) # ( !\port_map_ula|result_mult\(4) & ( \port_map_ula|Mux5~0_combout\ & ( \port_map_ula|Mult0~12\ ) ) ) # ( 
-- \port_map_ula|result_mult\(4) & ( !\port_map_ula|Mux5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_ula|ALT_INV_Mult0~12\,
	datae => \port_map_ula|ALT_INV_result_mult\(4),
	dataf => \port_map_ula|ALT_INV_Mux5~0_combout\,
	combout => \port_map_ula|result_mult\(4));

\port_map_ula|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux25~0_combout\ = ( \port_map_ula|result_mult\(4) & ( (!\port_map_ula|Mux21~0_combout\ & (((\port_map_ula|Mux21~1_combout\ & \port_map_ula|Add0~17_sumout\)))) # (\port_map_ula|Mux21~0_combout\ & (((!\port_map_ula|Mux21~1_combout\)) # 
-- (\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[4]~12_combout\))) ) ) # ( !\port_map_ula|result_mult\(4) & ( (\port_map_ula|Mux21~1_combout\ & ((!\port_map_ula|Mux21~0_combout\ & ((\port_map_ula|Add0~17_sumout\))) # (\port_map_ula|Mux21~0_combout\ & 
-- (\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[4]~12_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101001100010011110100000001000011010011000100111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[4]~12_combout\,
	datab => \port_map_ula|ALT_INV_Mux21~0_combout\,
	datac => \port_map_ula|ALT_INV_Mux21~1_combout\,
	datad => \port_map_ula|ALT_INV_Add0~17_sumout\,
	datae => \port_map_ula|ALT_INV_result_mult\(4),
	combout => \port_map_ula|Mux25~0_combout\);

\port_map_ula|resultado_ula[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|resultado_ula\(4) = ( \port_map_ula|resultado_ula\(4) & ( \port_map_ula|Mux29~2_combout\ & ( \port_map_ula|Mux25~0_combout\ ) ) ) # ( !\port_map_ula|resultado_ula\(4) & ( \port_map_ula|Mux29~2_combout\ & ( \port_map_ula|Mux25~0_combout\ ) ) 
-- ) # ( \port_map_ula|resultado_ula\(4) & ( !\port_map_ula|Mux29~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_ula|ALT_INV_Mux25~0_combout\,
	datae => \port_map_ula|ALT_INV_resultado_ula\(4),
	dataf => \port_map_ula|ALT_INV_Mux29~2_combout\,
	combout => \port_map_ula|resultado_ula\(4));

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/split.ram0_memoria_dados_b72205e6.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_dados:port_map_memoria_dados|altsyncram:indice_mem_dados_rtl_0|altsyncram_kpu1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \port_map_uc|Mux2~0_combout\,
	portbre => \port_map_uc|Mux7~0_combout\,
	clk0 => \clock~input_o\,
	portadatain => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[4]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[4]~12_combout\ = (!\port_map_uc|Mux2~0_combout\ & ((\port_map_multiplexador_ula_src|saida_mux_ula_src[4]~4_combout\))) # (\port_map_uc|Mux2~0_combout\ & 
-- (\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a4~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ALT_INV_ram_block1a4~portbdataout\,
	datab => \port_map_uc|ALT_INV_Mux2~0_combout\,
	datac => \port_map_multiplexador_ula_src|ALT_INV_saida_mux_ula_src[4]~4_combout\,
	combout => \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[4]~12_combout\);

\port_map_ula|result_mult[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|result_mult\(3) = ( \port_map_ula|result_mult\(3) & ( \port_map_ula|Mux5~0_combout\ & ( \port_map_ula|Mult0~11\ ) ) ) # ( !\port_map_ula|result_mult\(3) & ( \port_map_ula|Mux5~0_combout\ & ( \port_map_ula|Mult0~11\ ) ) ) # ( 
-- \port_map_ula|result_mult\(3) & ( !\port_map_ula|Mux5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_ula|ALT_INV_Mult0~11\,
	datae => \port_map_ula|ALT_INV_result_mult\(3),
	dataf => \port_map_ula|ALT_INV_Mux5~0_combout\,
	combout => \port_map_ula|result_mult\(3));

\port_map_ula|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux24~0_combout\ = ( \port_map_ula|result_mult\(3) & ( (!\port_map_ula|Mux21~0_combout\ & (((\port_map_ula|Mux21~1_combout\ & \port_map_ula|Add0~13_sumout\)))) # (\port_map_ula|Mux21~0_combout\ & (((!\port_map_ula|Mux21~1_combout\)) # 
-- (\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[3]~11_combout\))) ) ) # ( !\port_map_ula|result_mult\(3) & ( (\port_map_ula|Mux21~1_combout\ & ((!\port_map_ula|Mux21~0_combout\ & ((\port_map_ula|Add0~13_sumout\))) # (\port_map_ula|Mux21~0_combout\ & 
-- (\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[3]~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101001100010011110100000001000011010011000100111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[3]~11_combout\,
	datab => \port_map_ula|ALT_INV_Mux21~0_combout\,
	datac => \port_map_ula|ALT_INV_Mux21~1_combout\,
	datad => \port_map_ula|ALT_INV_Add0~13_sumout\,
	datae => \port_map_ula|ALT_INV_result_mult\(3),
	combout => \port_map_ula|Mux24~0_combout\);

\port_map_ula|resultado_ula[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|resultado_ula\(3) = ( \port_map_ula|resultado_ula\(3) & ( \port_map_ula|Mux29~2_combout\ & ( \port_map_ula|Mux24~0_combout\ ) ) ) # ( !\port_map_ula|resultado_ula\(3) & ( \port_map_ula|Mux29~2_combout\ & ( \port_map_ula|Mux24~0_combout\ ) ) 
-- ) # ( \port_map_ula|resultado_ula\(3) & ( !\port_map_ula|Mux29~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_ula|ALT_INV_Mux24~0_combout\,
	datae => \port_map_ula|ALT_INV_resultado_ula\(3),
	dataf => \port_map_ula|ALT_INV_Mux29~2_combout\,
	combout => \port_map_ula|resultado_ula\(3));

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/split.ram0_memoria_dados_b72205e6.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_dados:port_map_memoria_dados|altsyncram:indice_mem_dados_rtl_0|altsyncram_kpu1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \port_map_uc|Mux2~0_combout\,
	portbre => \port_map_uc|Mux7~0_combout\,
	clk0 => \clock~input_o\,
	portadatain => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[3]~11_combout\ = (!\port_map_uc|Mux2~0_combout\ & ((\port_map_multiplexador_ula_src|saida_mux_ula_src[3]~3_combout\))) # (\port_map_uc|Mux2~0_combout\ & 
-- (\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a3~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ALT_INV_ram_block1a3~portbdataout\,
	datab => \port_map_uc|ALT_INV_Mux2~0_combout\,
	datac => \port_map_multiplexador_ula_src|ALT_INV_saida_mux_ula_src[3]~3_combout\,
	combout => \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[3]~11_combout\);

\port_map_ula|result_mult[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|result_mult\(2) = ( \port_map_ula|result_mult\(2) & ( \port_map_ula|Mux5~0_combout\ & ( \port_map_ula|Mult0~10\ ) ) ) # ( !\port_map_ula|result_mult\(2) & ( \port_map_ula|Mux5~0_combout\ & ( \port_map_ula|Mult0~10\ ) ) ) # ( 
-- \port_map_ula|result_mult\(2) & ( !\port_map_ula|Mux5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_ula|ALT_INV_Mult0~10\,
	datae => \port_map_ula|ALT_INV_result_mult\(2),
	dataf => \port_map_ula|ALT_INV_Mux5~0_combout\,
	combout => \port_map_ula|result_mult\(2));

\port_map_ula|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux23~0_combout\ = ( \port_map_ula|result_mult\(2) & ( (!\port_map_ula|Mux21~0_combout\ & (((\port_map_ula|Mux21~1_combout\ & \port_map_ula|Add0~9_sumout\)))) # (\port_map_ula|Mux21~0_combout\ & (((!\port_map_ula|Mux21~1_combout\)) # 
-- (\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[2]~10_combout\))) ) ) # ( !\port_map_ula|result_mult\(2) & ( (\port_map_ula|Mux21~1_combout\ & ((!\port_map_ula|Mux21~0_combout\ & ((\port_map_ula|Add0~9_sumout\))) # (\port_map_ula|Mux21~0_combout\ & 
-- (\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[2]~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101001100010011110100000001000011010011000100111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[2]~10_combout\,
	datab => \port_map_ula|ALT_INV_Mux21~0_combout\,
	datac => \port_map_ula|ALT_INV_Mux21~1_combout\,
	datad => \port_map_ula|ALT_INV_Add0~9_sumout\,
	datae => \port_map_ula|ALT_INV_result_mult\(2),
	combout => \port_map_ula|Mux23~0_combout\);

\port_map_ula|resultado_ula[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|resultado_ula\(2) = ( \port_map_ula|resultado_ula\(2) & ( \port_map_ula|Mux29~2_combout\ & ( \port_map_ula|Mux23~0_combout\ ) ) ) # ( !\port_map_ula|resultado_ula\(2) & ( \port_map_ula|Mux29~2_combout\ & ( \port_map_ula|Mux23~0_combout\ ) ) 
-- ) # ( \port_map_ula|resultado_ula\(2) & ( !\port_map_ula|Mux29~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_ula|ALT_INV_Mux23~0_combout\,
	datae => \port_map_ula|ALT_INV_resultado_ula\(2),
	dataf => \port_map_ula|ALT_INV_Mux29~2_combout\,
	combout => \port_map_ula|resultado_ula\(2));

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/split.ram0_memoria_dados_b72205e6.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_dados:port_map_memoria_dados|altsyncram:indice_mem_dados_rtl_0|altsyncram_kpu1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \port_map_uc|Mux2~0_combout\,
	portbre => \port_map_uc|Mux7~0_combout\,
	clk0 => \clock~input_o\,
	portadatain => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[2]~10_combout\ = (!\port_map_uc|Mux2~0_combout\ & ((\port_map_multiplexador_ula_src|saida_mux_ula_src[2]~2_combout\))) # (\port_map_uc|Mux2~0_combout\ & 
-- (\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a2~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ALT_INV_ram_block1a2~portbdataout\,
	datab => \port_map_uc|ALT_INV_Mux2~0_combout\,
	datac => \port_map_multiplexador_ula_src|ALT_INV_saida_mux_ula_src[2]~2_combout\,
	combout => \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[2]~10_combout\);

\port_map_ula|result_mult[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|result_mult\(0) = ( \port_map_ula|result_mult\(0) & ( \port_map_ula|Mux5~0_combout\ & ( \port_map_ula|Mult0~8_resulta\ ) ) ) # ( !\port_map_ula|result_mult\(0) & ( \port_map_ula|Mux5~0_combout\ & ( \port_map_ula|Mult0~8_resulta\ ) ) ) # ( 
-- \port_map_ula|result_mult\(0) & ( !\port_map_ula|Mux5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_ula|ALT_INV_Mult0~8_resulta\,
	datae => \port_map_ula|ALT_INV_result_mult\(0),
	dataf => \port_map_ula|ALT_INV_Mux5~0_combout\,
	combout => \port_map_ula|result_mult\(0));

\port_map_ula|Mux21~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux21~2_combout\ = ( \port_map_ula|result_mult\(0) & ( (!\port_map_ula|Mux21~0_combout\ & (((\port_map_ula|Mux21~1_combout\ & \port_map_ula|Add0~1_sumout\)))) # (\port_map_ula|Mux21~0_combout\ & (((!\port_map_ula|Mux21~1_combout\)) # 
-- (\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[0]~8_combout\))) ) ) # ( !\port_map_ula|result_mult\(0) & ( (\port_map_ula|Mux21~1_combout\ & ((!\port_map_ula|Mux21~0_combout\ & ((\port_map_ula|Add0~1_sumout\))) # (\port_map_ula|Mux21~0_combout\ & 
-- (\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[0]~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101001100010011110100000001000011010011000100111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[0]~8_combout\,
	datab => \port_map_ula|ALT_INV_Mux21~0_combout\,
	datac => \port_map_ula|ALT_INV_Mux21~1_combout\,
	datad => \port_map_ula|ALT_INV_Add0~1_sumout\,
	datae => \port_map_ula|ALT_INV_result_mult\(0),
	combout => \port_map_ula|Mux21~2_combout\);

\port_map_ula|resultado_ula[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|resultado_ula\(0) = ( \port_map_ula|resultado_ula\(0) & ( \port_map_ula|Mux29~2_combout\ & ( \port_map_ula|Mux21~2_combout\ ) ) ) # ( !\port_map_ula|resultado_ula\(0) & ( \port_map_ula|Mux29~2_combout\ & ( \port_map_ula|Mux21~2_combout\ ) ) 
-- ) # ( \port_map_ula|resultado_ula\(0) & ( !\port_map_ula|Mux29~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_ula|ALT_INV_Mux21~2_combout\,
	datae => \port_map_ula|ALT_INV_resultado_ula\(0),
	dataf => \port_map_ula|ALT_INV_Mux29~2_combout\,
	combout => \port_map_ula|resultado_ula\(0));

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "F",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/split.ram0_memoria_dados_b72205e6.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_dados:port_map_memoria_dados|altsyncram:indice_mem_dados_rtl_0|altsyncram_kpu1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \port_map_uc|Mux2~0_combout\,
	portbre => \port_map_uc|Mux7~0_combout\,
	clk0 => \clock~input_o\,
	portadatain => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[0]~8_combout\ = (!\port_map_uc|Mux2~0_combout\ & ((\port_map_multiplexador_ula_src|saida_mux_ula_src[0]~0_combout\))) # (\port_map_uc|Mux2~0_combout\ & 
-- (\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a0~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	datab => \port_map_uc|ALT_INV_Mux2~0_combout\,
	datac => \port_map_multiplexador_ula_src|ALT_INV_saida_mux_ula_src[0]~0_combout\,
	combout => \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[0]~8_combout\);

\port_map_ula|result_mult[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|result_mult\(1) = ( \port_map_ula|result_mult\(1) & ( \port_map_ula|Mux5~0_combout\ & ( \port_map_ula|Mult0~9\ ) ) ) # ( !\port_map_ula|result_mult\(1) & ( \port_map_ula|Mux5~0_combout\ & ( \port_map_ula|Mult0~9\ ) ) ) # ( 
-- \port_map_ula|result_mult\(1) & ( !\port_map_ula|Mux5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_ula|ALT_INV_Mult0~9\,
	datae => \port_map_ula|ALT_INV_result_mult\(1),
	dataf => \port_map_ula|ALT_INV_Mux5~0_combout\,
	combout => \port_map_ula|result_mult\(1));

\port_map_ula|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux22~0_combout\ = ( \port_map_ula|result_mult\(1) & ( (!\port_map_ula|Mux21~0_combout\ & (((\port_map_ula|Mux21~1_combout\ & \port_map_ula|Add0~5_sumout\)))) # (\port_map_ula|Mux21~0_combout\ & (((!\port_map_ula|Mux21~1_combout\)) # 
-- (\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[1]~9_combout\))) ) ) # ( !\port_map_ula|result_mult\(1) & ( (\port_map_ula|Mux21~1_combout\ & ((!\port_map_ula|Mux21~0_combout\ & ((\port_map_ula|Add0~5_sumout\))) # (\port_map_ula|Mux21~0_combout\ & 
-- (\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[1]~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101001100010011110100000001000011010011000100111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[1]~9_combout\,
	datab => \port_map_ula|ALT_INV_Mux21~0_combout\,
	datac => \port_map_ula|ALT_INV_Mux21~1_combout\,
	datad => \port_map_ula|ALT_INV_Add0~5_sumout\,
	datae => \port_map_ula|ALT_INV_result_mult\(1),
	combout => \port_map_ula|Mux22~0_combout\);

\port_map_ula|resultado_ula[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|resultado_ula\(1) = ( \port_map_ula|resultado_ula\(1) & ( \port_map_ula|Mux29~2_combout\ & ( \port_map_ula|Mux22~0_combout\ ) ) ) # ( !\port_map_ula|resultado_ula\(1) & ( \port_map_ula|Mux29~2_combout\ & ( \port_map_ula|Mux22~0_combout\ ) ) 
-- ) # ( \port_map_ula|resultado_ula\(1) & ( !\port_map_ula|Mux29~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_ula|ALT_INV_Mux22~0_combout\,
	datae => \port_map_ula|ALT_INV_resultado_ula\(1),
	dataf => \port_map_ula|ALT_INV_Mux29~2_combout\,
	combout => \port_map_ula|resultado_ula\(1));

\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/split.ram0_memoria_dados_b72205e6.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_dados:port_map_memoria_dados|altsyncram:indice_mem_dados_rtl_0|altsyncram_kpu1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \port_map_uc|Mux2~0_combout\,
	portbre => \port_map_uc|Mux7~0_combout\,
	clk0 => \clock~input_o\,
	portadatain => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[1]~9_combout\ = (!\port_map_uc|Mux2~0_combout\ & ((\port_map_multiplexador_ula_src|saida_mux_ula_src[1]~1_combout\))) # (\port_map_uc|Mux2~0_combout\ & 
-- (\port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ram_block1a1~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_dados|indice_mem_dados_rtl_0|auto_generated|ALT_INV_ram_block1a1~portbdataout\,
	datab => \port_map_uc|ALT_INV_Mux2~0_combout\,
	datac => \port_map_multiplexador_ula_src|ALT_INV_saida_mux_ula_src[1]~1_combout\,
	combout => \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[1]~9_combout\);

\port_map_ula|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Equal0~0_combout\ = (\port_map_men_instrucao|Mux5~1_combout\ & (((\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[7]~15_combout\) # (\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[6]~14_combout\)) # 
-- (\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[5]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101000101010101010100010101010101010001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_men_instrucao|ALT_INV_Mux5~1_combout\,
	datab => \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[5]~13_combout\,
	datac => \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[6]~14_combout\,
	datad => \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[7]~15_combout\,
	combout => \port_map_ula|Equal0~0_combout\);

\port_map_ula|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Equal0~1_combout\ = ( \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[3]~11_combout\ & ( \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[4]~12_combout\ & ( \port_map_men_instrucao|Mux5~1_combout\ ) ) ) # ( 
-- !\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[3]~11_combout\ & ( \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[4]~12_combout\ & ( \port_map_men_instrucao|Mux5~1_combout\ ) ) ) # ( 
-- \port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[3]~11_combout\ & ( !\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[4]~12_combout\ & ( \port_map_men_instrucao|Mux5~1_combout\ ) ) ) # ( 
-- !\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[3]~11_combout\ & ( !\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[4]~12_combout\ & ( (\port_map_men_instrucao|Mux5~1_combout\ & ((!\port_map_men_instrucao|Mux7~0_combout\ $ 
-- (!\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[0]~8_combout\)) # (\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[2]~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_men_instrucao|ALT_INV_Mux7~0_combout\,
	datab => \port_map_men_instrucao|ALT_INV_Mux5~1_combout\,
	datac => \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[0]~8_combout\,
	datad => \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[2]~10_combout\,
	datae => \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[3]~11_combout\,
	dataf => \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[4]~12_combout\,
	combout => \port_map_ula|Equal0~1_combout\);

\port_map_ula|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Equal0~2_combout\ = (!\port_map_ula|Equal0~0_combout\ & (!\port_map_ula|Equal0~1_combout\ & (!\port_map_multiplexador_M_to_reg|saida_mux_M_to_reg[1]~9_combout\ $ (\port_map_multiplexador_ula_src|saida_mux_ula_src[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000100100000000000010010000000000001001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_M_to_reg|ALT_INV_saida_mux_M_to_reg[1]~9_combout\,
	datab => \port_map_multiplexador_ula_src|ALT_INV_saida_mux_ula_src[1]~1_combout\,
	datac => \port_map_ula|ALT_INV_Equal0~0_combout\,
	datad => \port_map_ula|ALT_INV_Equal0~1_combout\,
	combout => \port_map_ula|Equal0~2_combout\);

\port_map_ula|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux0~0_combout\ = (!\port_map_men_instrucao|Mux1~0_combout\ & (\port_map_men_instrucao|Mux0~0_combout\ & (!\port_map_men_instrucao|Mux2~0_combout\ & \port_map_uc|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_men_instrucao|ALT_INV_Mux1~0_combout\,
	datab => \port_map_men_instrucao|ALT_INV_Mux0~0_combout\,
	datac => \port_map_men_instrucao|ALT_INV_Mux2~0_combout\,
	datad => \port_map_uc|ALT_INV_Mux6~0_combout\,
	combout => \port_map_ula|Mux0~0_combout\);

\port_map_ula|entrada_temp_if\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|entrada_temp_if~combout\ = ( \port_map_ula|entrada_temp_if~combout\ & ( \port_map_ula|Mux0~0_combout\ & ( \port_map_ula|Equal0~2_combout\ ) ) ) # ( !\port_map_ula|entrada_temp_if~combout\ & ( \port_map_ula|Mux0~0_combout\ & ( 
-- \port_map_ula|Equal0~2_combout\ ) ) ) # ( \port_map_ula|entrada_temp_if~combout\ & ( !\port_map_ula|Mux0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_ula|ALT_INV_Equal0~2_combout\,
	datae => \port_map_ula|ALT_INV_entrada_temp_if~combout\,
	dataf => \port_map_ula|ALT_INV_Mux0~0_combout\,
	combout => \port_map_ula|entrada_temp_if~combout\);

\port_map_ula|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux3~0_combout\ = !\port_map_uc|Mux6~0_combout\ $ (!\port_map_ula|entrada_temp_if~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_uc|ALT_INV_Mux6~0_combout\,
	datab => \port_map_ula|ALT_INV_entrada_temp_if~combout\,
	combout => \port_map_ula|Mux3~0_combout\);

\port_map_ula|zero\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|zero~combout\ = ( \port_map_ula|zero~combout\ & ( \port_map_and_componente|saida_and~0_combout\ & ( \port_map_ula|Mux3~0_combout\ ) ) ) # ( !\port_map_ula|zero~combout\ & ( \port_map_and_componente|saida_and~0_combout\ & ( 
-- \port_map_ula|Mux3~0_combout\ ) ) ) # ( \port_map_ula|zero~combout\ & ( !\port_map_and_componente|saida_and~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_ula|ALT_INV_Mux3~0_combout\,
	datae => \port_map_ula|ALT_INV_zero~combout\,
	dataf => \port_map_and_componente|ALT_INV_saida_and~0_combout\,
	combout => \port_map_ula|zero~combout\);

\port_map_multiplexador_jump|saida_mux_jump[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_jump|saida_mux_jump[2]~2_combout\ = (\port_map_add|Add0~9_sumout\ & (!\port_map_men_instrucao|Mux0~0_combout\ $ (((\port_map_ula|zero~combout\ & \port_map_and_componente|saida_and~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101001000000001010100100000000101010010000000010101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_men_instrucao|ALT_INV_Mux0~0_combout\,
	datab => \port_map_ula|ALT_INV_zero~combout\,
	datac => \port_map_and_componente|ALT_INV_saida_and~0_combout\,
	datad => \port_map_add|ALT_INV_Add0~9_sumout\,
	combout => \port_map_multiplexador_jump|saida_mux_jump[2]~2_combout\);

\port_map_pc|saida_pc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_multiplexador_jump|saida_mux_jump[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|saida_pc\(2));

\port_map_men_instrucao|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_men_instrucao|Mux6~0_combout\ = ( \port_map_pc|saida_pc\(4) & ( (!\port_map_pc|saida_pc\(3) & (!\port_map_pc|saida_pc\(0) $ (!\port_map_pc|saida_pc\(1)))) ) ) # ( !\port_map_pc|saida_pc\(4) & ( (!\port_map_pc|saida_pc\(3) & 
-- (!\port_map_pc|saida_pc\(2) & ((!\port_map_pc|saida_pc\(0)) # (\port_map_pc|saida_pc\(1))))) # (\port_map_pc|saida_pc\(3) & (!\port_map_pc|saida_pc\(0) $ ((!\port_map_pc|saida_pc\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000001100110011001100000000010110000011001100110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida_pc\(0),
	datab => \port_map_pc|ALT_INV_saida_pc\(1),
	datac => \port_map_pc|ALT_INV_saida_pc\(2),
	datad => \port_map_pc|ALT_INV_saida_pc\(3),
	datae => \port_map_pc|ALT_INV_saida_pc\(4),
	combout => \port_map_men_instrucao|Mux6~0_combout\);

\port_map_multiplexador_jump|saida_mux_jump[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_jump|saida_mux_jump[1]~1_combout\ = ( \port_map_add|Add0~5_sumout\ & ( ((!\port_map_men_instrucao|Mux0~0_combout\ & ((!\port_map_ula|zero~combout\) # (!\port_map_and_componente|saida_and~0_combout\)))) # 
-- (\port_map_men_instrucao|Mux6~0_combout\) ) ) # ( !\port_map_add|Add0~5_sumout\ & ( (\port_map_men_instrucao|Mux6~0_combout\ & (((\port_map_ula|zero~combout\ & \port_map_and_componente|saida_and~0_combout\)) # (\port_map_men_instrucao|Mux0~0_combout\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010101110111011101010100010001000101011101110111010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_men_instrucao|ALT_INV_Mux6~0_combout\,
	datab => \port_map_men_instrucao|ALT_INV_Mux0~0_combout\,
	datac => \port_map_ula|ALT_INV_zero~combout\,
	datad => \port_map_and_componente|ALT_INV_saida_and~0_combout\,
	datae => \port_map_add|ALT_INV_Add0~5_sumout\,
	combout => \port_map_multiplexador_jump|saida_mux_jump[1]~1_combout\);

\port_map_pc|saida_pc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_multiplexador_jump|saida_mux_jump[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|saida_pc\(1));

\port_map_men_instrucao|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_men_instrucao|Mux0~0_combout\ = (\port_map_pc|saida_pc\(0) & (\port_map_pc|saida_pc\(1) & (\port_map_pc|saida_pc\(2) & \port_map_pc|saida_pc\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida_pc\(0),
	datab => \port_map_pc|ALT_INV_saida_pc\(1),
	datac => \port_map_pc|ALT_INV_saida_pc\(2),
	datad => \port_map_pc|ALT_INV_saida_pc\(4),
	combout => \port_map_men_instrucao|Mux0~0_combout\);

\port_map_multiplexador_jump|saida_mux_jump[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_jump|saida_mux_jump[3]~3_combout\ = (\port_map_add|Add0~13_sumout\ & (!\port_map_men_instrucao|Mux0~0_combout\ $ (((\port_map_ula|zero~combout\ & \port_map_and_componente|saida_and~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101001000000001010100100000000101010010000000010101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_men_instrucao|ALT_INV_Mux0~0_combout\,
	datab => \port_map_ula|ALT_INV_zero~combout\,
	datac => \port_map_and_componente|ALT_INV_saida_and~0_combout\,
	datad => \port_map_add|ALT_INV_Add0~13_sumout\,
	combout => \port_map_multiplexador_jump|saida_mux_jump[3]~3_combout\);

\port_map_pc|saida_pc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_multiplexador_jump|saida_mux_jump[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|saida_pc\(3));

\port_map_men_instrucao|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_men_instrucao|Mux2~1_combout\ = (!\port_map_pc|saida_pc\(3) & \port_map_pc|saida_pc\(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida_pc\(3),
	datab => \port_map_pc|ALT_INV_saida_pc\(4),
	combout => \port_map_men_instrucao|Mux2~1_combout\);

\port_map_multiplexador_jump|saida_mux_jump[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_jump|saida_mux_jump[0]~0_combout\ = ( \port_map_ula|zero~combout\ & ( \port_map_and_componente|saida_and~0_combout\ & ( (!\port_map_pc|saida_pc\(0) & \port_map_men_instrucao|Mux2~1_combout\) ) ) ) # ( !\port_map_ula|zero~combout\ & 
-- ( \port_map_and_componente|saida_and~0_combout\ & ( (!\port_map_men_instrucao|Mux0~0_combout\ & \port_map_add|Add0~1_sumout\) ) ) ) # ( \port_map_ula|zero~combout\ & ( !\port_map_and_componente|saida_and~0_combout\ & ( (!\port_map_pc|saida_pc\(0) & 
-- (((!\port_map_men_instrucao|Mux0~0_combout\ & \port_map_add|Add0~1_sumout\)) # (\port_map_men_instrucao|Mux2~1_combout\))) # (\port_map_pc|saida_pc\(0) & (((!\port_map_men_instrucao|Mux0~0_combout\ & \port_map_add|Add0~1_sumout\)))) ) ) ) # ( 
-- !\port_map_ula|zero~combout\ & ( !\port_map_and_componente|saida_and~0_combout\ & ( (!\port_map_men_instrucao|Mux0~0_combout\ & \port_map_add|Add0~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000001000101111001000000000111100000010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida_pc\(0),
	datab => \port_map_men_instrucao|ALT_INV_Mux2~1_combout\,
	datac => \port_map_men_instrucao|ALT_INV_Mux0~0_combout\,
	datad => \port_map_add|ALT_INV_Add0~1_sumout\,
	datae => \port_map_ula|ALT_INV_zero~combout\,
	dataf => \port_map_and_componente|ALT_INV_saida_and~0_combout\,
	combout => \port_map_multiplexador_jump|saida_mux_jump[0]~0_combout\);

\port_map_pc|saida_pc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_multiplexador_jump|saida_mux_jump[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|saida_pc\(0));

\port_map_add|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_add|Add0~21_sumout\ = SUM(( \port_map_pc|saida_pc\(5) ) + ( GND ) + ( \port_map_add|Add0~18\ ))
-- \port_map_add|Add0~22\ = CARRY(( \port_map_pc|saida_pc\(5) ) + ( GND ) + ( \port_map_add|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_saida_pc\(5),
	cin => \port_map_add|Add0~18\,
	sumout => \port_map_add|Add0~21_sumout\,
	cout => \port_map_add|Add0~22\);

\port_map_multiplexador_jump|saida_mux_jump[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_jump|saida_mux_jump[5]~5_combout\ = (\port_map_add|Add0~21_sumout\ & (!\port_map_men_instrucao|Mux0~0_combout\ $ (((\port_map_ula|zero~combout\ & \port_map_and_componente|saida_and~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101001000000001010100100000000101010010000000010101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_men_instrucao|ALT_INV_Mux0~0_combout\,
	datab => \port_map_ula|ALT_INV_zero~combout\,
	datac => \port_map_and_componente|ALT_INV_saida_and~0_combout\,
	datad => \port_map_add|ALT_INV_Add0~21_sumout\,
	combout => \port_map_multiplexador_jump|saida_mux_jump[5]~5_combout\);

\port_map_pc|saida_pc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_multiplexador_jump|saida_mux_jump[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|saida_pc\(5));

\port_map_add|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_add|Add0~25_sumout\ = SUM(( \port_map_pc|saida_pc\(6) ) + ( GND ) + ( \port_map_add|Add0~22\ ))
-- \port_map_add|Add0~26\ = CARRY(( \port_map_pc|saida_pc\(6) ) + ( GND ) + ( \port_map_add|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_saida_pc\(6),
	cin => \port_map_add|Add0~22\,
	sumout => \port_map_add|Add0~25_sumout\,
	cout => \port_map_add|Add0~26\);

\port_map_multiplexador_jump|saida_mux_jump[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_jump|saida_mux_jump[6]~6_combout\ = (\port_map_add|Add0~25_sumout\ & (!\port_map_men_instrucao|Mux0~0_combout\ $ (((\port_map_ula|zero~combout\ & \port_map_and_componente|saida_and~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101001000000001010100100000000101010010000000010101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_men_instrucao|ALT_INV_Mux0~0_combout\,
	datab => \port_map_ula|ALT_INV_zero~combout\,
	datac => \port_map_and_componente|ALT_INV_saida_and~0_combout\,
	datad => \port_map_add|ALT_INV_Add0~25_sumout\,
	combout => \port_map_multiplexador_jump|saida_mux_jump[6]~6_combout\);

\port_map_pc|saida_pc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_multiplexador_jump|saida_mux_jump[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|saida_pc\(6));

\port_map_add|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_add|Add0~29_sumout\ = SUM(( \port_map_pc|saida_pc\(7) ) + ( GND ) + ( \port_map_add|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_saida_pc\(7),
	cin => \port_map_add|Add0~26\,
	sumout => \port_map_add|Add0~29_sumout\);

\port_map_multiplexador_jump|saida_mux_jump[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_jump|saida_mux_jump[7]~7_combout\ = (\port_map_add|Add0~29_sumout\ & (!\port_map_men_instrucao|Mux0~0_combout\ $ (((\port_map_ula|zero~combout\ & \port_map_and_componente|saida_and~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101001000000001010100100000000101010010000000010101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_men_instrucao|ALT_INV_Mux0~0_combout\,
	datab => \port_map_ula|ALT_INV_zero~combout\,
	datac => \port_map_and_componente|ALT_INV_saida_and~0_combout\,
	datad => \port_map_add|ALT_INV_Add0~29_sumout\,
	combout => \port_map_multiplexador_jump|saida_mux_jump[7]~7_combout\);

\port_map_pc|saida_pc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_multiplexador_jump|saida_mux_jump[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|saida_pc\(7));

\port_map_men_instrucao|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_men_instrucao|Mux5~0_combout\ = (\port_map_pc|saida_pc\(0) & (!\port_map_pc|saida_pc\(2) & (!\port_map_pc|saida_pc\(3) & !\port_map_pc|saida_pc\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida_pc\(0),
	datab => \port_map_pc|ALT_INV_saida_pc\(2),
	datac => \port_map_pc|ALT_INV_saida_pc\(3),
	datad => \port_map_pc|ALT_INV_saida_pc\(4),
	combout => \port_map_men_instrucao|Mux5~0_combout\);

\port_map_men_instrucao|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_men_instrucao|Mux4~0_combout\ = (\port_map_pc|saida_pc\(1) & (!\port_map_pc|saida_pc\(2) & (!\port_map_pc|saida_pc\(3) & !\port_map_pc|saida_pc\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida_pc\(1),
	datab => \port_map_pc|ALT_INV_saida_pc\(2),
	datac => \port_map_pc|ALT_INV_saida_pc\(3),
	datad => \port_map_pc|ALT_INV_saida_pc\(4),
	combout => \port_map_men_instrucao|Mux4~0_combout\);

ww_saida_componente_pc(0) <= \saida_componente_pc[0]~output_o\;

ww_saida_componente_pc(1) <= \saida_componente_pc[1]~output_o\;

ww_saida_componente_pc(2) <= \saida_componente_pc[2]~output_o\;

ww_saida_componente_pc(3) <= \saida_componente_pc[3]~output_o\;

ww_saida_componente_pc(4) <= \saida_componente_pc[4]~output_o\;

ww_saida_componente_pc(5) <= \saida_componente_pc[5]~output_o\;

ww_saida_componente_pc(6) <= \saida_componente_pc[6]~output_o\;

ww_saida_componente_pc(7) <= \saida_componente_pc[7]~output_o\;

ww_saida_componente_memoria_instrucao(0) <= \saida_componente_memoria_instrucao[0]~output_o\;

ww_saida_componente_memoria_instrucao(1) <= \saida_componente_memoria_instrucao[1]~output_o\;

ww_saida_componente_memoria_instrucao(2) <= \saida_componente_memoria_instrucao[2]~output_o\;

ww_saida_componente_memoria_instrucao(3) <= \saida_componente_memoria_instrucao[3]~output_o\;

ww_saida_componente_memoria_instrucao(4) <= \saida_componente_memoria_instrucao[4]~output_o\;

ww_saida_componente_memoria_instrucao(5) <= \saida_componente_memoria_instrucao[5]~output_o\;

ww_saida_componente_memoria_instrucao(6) <= \saida_componente_memoria_instrucao[6]~output_o\;

ww_saida_componente_memoria_instrucao(7) <= \saida_componente_memoria_instrucao[7]~output_o\;

ww_saida_1_componente_banco_registradores(0) <= \saida_1_componente_banco_registradores[0]~output_o\;

ww_saida_1_componente_banco_registradores(1) <= \saida_1_componente_banco_registradores[1]~output_o\;

ww_saida_1_componente_banco_registradores(2) <= \saida_1_componente_banco_registradores[2]~output_o\;

ww_saida_1_componente_banco_registradores(3) <= \saida_1_componente_banco_registradores[3]~output_o\;

ww_saida_1_componente_banco_registradores(4) <= \saida_1_componente_banco_registradores[4]~output_o\;

ww_saida_1_componente_banco_registradores(5) <= \saida_1_componente_banco_registradores[5]~output_o\;

ww_saida_1_componente_banco_registradores(6) <= \saida_1_componente_banco_registradores[6]~output_o\;

ww_saida_1_componente_banco_registradores(7) <= \saida_1_componente_banco_registradores[7]~output_o\;

ww_saida_2_componente_banco_registradores(0) <= \saida_2_componente_banco_registradores[0]~output_o\;

ww_saida_2_componente_banco_registradores(1) <= \saida_2_componente_banco_registradores[1]~output_o\;

ww_saida_2_componente_banco_registradores(2) <= \saida_2_componente_banco_registradores[2]~output_o\;

ww_saida_2_componente_banco_registradores(3) <= \saida_2_componente_banco_registradores[3]~output_o\;

ww_saida_2_componente_banco_registradores(4) <= \saida_2_componente_banco_registradores[4]~output_o\;

ww_saida_2_componente_banco_registradores(5) <= \saida_2_componente_banco_registradores[5]~output_o\;

ww_saida_2_componente_banco_registradores(6) <= \saida_2_componente_banco_registradores[6]~output_o\;

ww_saida_2_componente_banco_registradores(7) <= \saida_2_componente_banco_registradores[7]~output_o\;

ww_saida_componente_ula(0) <= \saida_componente_ula[0]~output_o\;

ww_saida_componente_ula(1) <= \saida_componente_ula[1]~output_o\;

ww_saida_componente_ula(2) <= \saida_componente_ula[2]~output_o\;

ww_saida_componente_ula(3) <= \saida_componente_ula[3]~output_o\;

ww_saida_componente_ula(4) <= \saida_componente_ula[4]~output_o\;

ww_saida_componente_ula(5) <= \saida_componente_ula[5]~output_o\;

ww_saida_componente_ula(6) <= \saida_componente_ula[6]~output_o\;

ww_saida_componente_ula(7) <= \saida_componente_ula[7]~output_o\;

ww_saida_memoria_dados(0) <= \saida_memoria_dados[0]~output_o\;

ww_saida_memoria_dados(1) <= \saida_memoria_dados[1]~output_o\;

ww_saida_memoria_dados(2) <= \saida_memoria_dados[2]~output_o\;

ww_saida_memoria_dados(3) <= \saida_memoria_dados[3]~output_o\;

ww_saida_memoria_dados(4) <= \saida_memoria_dados[4]~output_o\;

ww_saida_memoria_dados(5) <= \saida_memoria_dados[5]~output_o\;

ww_saida_memoria_dados(6) <= \saida_memoria_dados[6]~output_o\;

ww_saida_memoria_dados(7) <= \saida_memoria_dados[7]~output_o\;
END structure;


