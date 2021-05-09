library ieee;
use IEEE.std_logic_1164.all;

entity split is
    port(
        clock    :   in std_logic;
		  saida_componente_pc : out std_logic_vector(7 downto 0);
		  saida_componente_memoria_instrucao : out std_logic_vector(7 downto 0);
		  saida_1_componente_banco_registradores : out std_logic_vector(7 downto 0);
		  saida_2_componente_banco_registradores : out std_logic_vector(7 downto 0);
		  saida_componente_ula : out std_logic_vector(7 downto 0);
		  saida_memoria_dados : out std_logic_vector (7 downto 0)
		  
        );
end split;

architecture comportamento_split of split is

	component pc is
		 port(
			  clock_pc    :   in std_logic;
			  entrada_pc  :   in std_logic_vector(7 downto 0);
			  saida_pc    :   out std_logic_vector(7 downto 0)
			  );
	end component;
	
	
	component add is
		 port(
			  saida_pc    : in std_logic_vector(7 downto 0);
			  saida_add   : out std_logic_vector(7 downto 0)
		 );
	end component;
	
	component memoria_instrucao is
		 port(
			  clock_mem       :   in std_logic;
			  entrada_mem     :   in std_logic_vector(7 downto 0);
			  saida_mem       :   out std_logic_vector(7 downto 0)
		 );
	end component;
	
	component divisor_instrucao is
		 port(
			  
			  entrada_divisor :   in std_logic_vector (7 downto 0);
			  saida_uc        :   out std_logic_vector(3 downto 0);
			  saida_reg1      :   out std_logic_vector(1 downto 0);
			  saida_reg2      :   out std_logic_vector(1 downto 0);   
			  
			  saida_extensor1 :   out std_logic_vector(3 downto 0); --ordem diferente em relação ao componente
			  saida_extensor2 :   out std_logic_vector(1 downto 0)  
		 );
	end component;
	
	component unidade_controle is
		 port(

			  clock_uc        : in std_logic;
			  entrada_uc      : in std_logic_vector(3 downto 0);
			  jump   : out std_logic;
			  branch : out std_logic;
			  M_read : out std_logic;
			  M_to_reg : out std_logic;

			  ula_op    : out std_logic_vector(3 downto 0);
			  M_write : out std_logic;
			  ula_src : out std_logic;
			  reg_write : out std_logic
		 );
	end component;
	
	component banco_registradores is
		 port(
			  clock : IN std_logic;
			  entrada_reg1            : in std_logic_vector(1 downto 0);
			  entrada_reg2            : in std_logic_vector(1 downto 0);
			  entrada_escrita_dados   : in std_logic_vector(7 downto 0);

			  saida_dado_lido1        : out std_logic_vector(7 downto 0);
			  saida_dado_lido2        : out std_logic_vector(7 downto 0);

			  reg_write : in std_logic
		 );
	end component;
	
	component extensor_sinal_4_8 IS
		 port (
			  entrada_extensor : IN std_logic_vector (3 DOWNTO 0);
			  saida_extensor : OUT std_logic_vector (7 DOWNTO 0)
		 );
	end component;
	
	component extensor_sinal_2_8 IS
		 PORT (
			  entrada_extensor : IN std_logic_vector (1 DOWNTO 0);
			  saida_extensor : OUT std_logic_vector (7 DOWNTO 0)
		 );
	END component;
	
	component ula is
		 port (
			  clock_ula                 : in std_logic;

			  entrada_dado_lido1        : in std_logic_vector(7 downto 0);
			  entrada_dado_lido2        : in std_logic_vector(7 downto 0);
			  entrada_ula_op            : in std_logic_vector(3 downto 0);

			  resultado_ula             : out std_logic_vector(7 downto 0);
			  zero                      : out std_logic

			  --overflow                  : out std_logic

		 );
	end component;
	
	component multiplexador_ula_src is 
		 port(
			  ula_src                 : in std_logic;
			  dado_lido2              : in std_logic_vector(7 downto 0);
			  saida_extensor          : in std_logic_vector(7 downto 0);
			  saida_mux_ula_src       : out std_logic_vector(7 downto 0)
		 );
	end component;
	
	component memoria_dados is 
		 port(
			  clock_mem_dados     : in std_logic;

			  M_read              : in std_logic;
			  M_write             : in std_logic;
			  entrada_endereco    : in std_logic_vector (7 downto 0);
			  escrita_dados       : in std_logic_vector (7 downto 0); 

			  dado_lido           : out std_logic_vector (7 downto 0)
		 );
	end component;
	
	component multiplexador_M_to_reg is 
		 port(
			  M_to_reg                : in std_logic;
			  dado_lido2              : in std_logic_vector(7 downto 0);
			  resultado_ula           : in std_logic_vector(7 downto 0);
			  saida_mux_M_to_reg      : out std_logic_vector(7 downto 0)
		 );
	end component;
	
	component and_componente is 
		 port(
			  entrada_and_1   : in std_logic;
			  entrada_and_2   : in std_logic;

			  saida_and       : out std_logic
		 );
	end component;
	
	component multiplexador_Branch_and is 
		 port(
			  resultado_and           : in std_logic;
			  resultado_extensor_2_8  : in std_logic_vector(7 downto 0);
			  resultado_add           : in std_logic_vector(7 downto 0);
			  saida_mux_branch_and    : out std_logic_vector(7 downto 0)
		 );
	end component;
	
	component multiplexador_jump is 
		 port(
			  flag_jump                       : in std_logic;
			  resultado_extensor_2_8          : in std_logic_vector(7 downto 0);
			  resultado_mux_branch_and        : in std_logic_vector(7 downto 0);
			  saida_mux_jump                  : out std_logic_vector(7 downto 0)
		 );
	end component;

	
	signal out_pc : std_logic_vector(7 downto 0);
	signal out_add : std_logic_vector(7 downto 0);
	
	signal out_mem_instrucao : std_logic_vector(7 downto 0);
	
	signal out_uc : std_logic_vector(3 downto 0);
	signal out_reg1 : std_logic_vector(1 downto 0);
	signal out_reg2 : std_logic_vector(1 downto 0);
	signal out_extensor1 : std_logic_vector(3 downto 0);
	signal out_extensor2 : std_logic_vector(1 downto 0);
	
	--saída da unidade de controle (flags)
	signal flag_jump : std_logic;
	signal flag_branch : std_logic;
	signal flag_M_read : std_logic;
	signal flag_M_to_reg : std_logic;
	signal flag_ula_op : std_logic_vector(3 downto 0);
	signal flag_M_write : std_logic;
	signal flag_ula_src : std_logic;
	signal flag_reg_write : std_logic;
	
	--saída do banco de registradores
	signal out_dado_lido1 : std_logic_vector(7 downto 0);
	signal out_dado_lido2 : std_logic_vector(7 downto 0);
	
	--saída dos extensores de sinais
	signal out_extensor_sinal_4_8 : std_logic_vector (7 DOWNTO 0);
	signal out_extensor_sinal_2_8 : std_logic_vector (7 DOWNTO 0);
	
	--saída da ula
	signal out_ula : std_logic_vector(7 downto 0);
	signal out_zero : std_logic;
	
	--saída mux
	signal out_mux_ula : std_logic_vector(7 downto 0);
	signal out_mux_M_to_reg : std_logic_vector(7 downto 0);
	signal out_mux_Branch_and : std_logic_vector(7 downto 0);
	signal out_mux_jump : std_logic_vector(7 downto 0);
	
	
	--saída memória de dados
	signal out_mem_dados : std_logic_vector (7 downto 0);
	
	--saída and_componente
	signal out_and : std_logic;
	
	
	
	
	

begin 

	port_map_pc : pc port map(clock, out_mux_jump, out_pc); --é oq vem do mux
	
	port_map_add : add port map(out_pc, out_add); -- saida liga no mux
	
	port_map_men_instrucao : memoria_instrucao port map(clock, out_pc, out_mem_instrucao); --saida liga div_instrucao
	
	port_map_divisor_instrucao : divisor_instrucao port map(out_mem_instrucao, out_uc, out_reg1, out_reg2, out_extensor1, out_extensor2);
	
	port_map_uc : unidade_controle port map(clock, out_uc, flag_jump, flag_branch, flag_M_read, flag_M_to_reg, flag_ula_op, flag_M_write, flag_ula_src, flag_reg_write);
	
	port_map_banco_regs : banco_registradores port map(clock, out_reg1, out_reg2, out_mux_M_to_reg, out_dado_lido1, out_dado_lido2, flag_reg_write);
	
	port_map_extensor_sinal_4_8 : extensor_sinal_4_8 port map(out_extensor1, out_extensor_sinal_4_8);
	
	port_map_extensor_sinal_2_8 : extensor_sinal_2_8 port map(out_extensor2, out_extensor_sinal_2_8);
	
	port_map_ula : ula port map(clock, out_dado_lido1, out_mux_ula, flag_ula_op, out_ula, out_zero);
	
	port_map_multiplexador_ula_src : multiplexador_ula_src port map(flag_ula_src, out_dado_lido2, out_extensor_sinal_2_8, out_mux_ula);
	
	port_map_memoria_dados : memoria_dados port map(clock, flag_M_read, flag_M_write, out_extensor_sinal_2_8, out_ula, out_mem_dados);

	port_map_multiplexador_M_to_reg : multiplexador_M_to_reg port map(flag_M_to_reg, out_mem_dados, out_ula, out_mux_M_to_reg);
	
	port_map_and_componente : and_componente port map(flag_branch, out_zero, out_and);
	
	
	port_map_multiplexador_Branch_and : multiplexador_Branch_and port map(out_and, out_extensor_sinal_4_8, out_add, out_mux_Branch_and);
	
	
	port_map_multiplexador_jump : multiplexador_jump port map(flag_jump, out_extensor_sinal_4_8, out_mux_Branch_and, out_mux_jump);
	
	saida_componente_pc <= out_pc;
	saida_componente_memoria_instrucao <= out_mem_instrucao;
	saida_1_componente_banco_registradores <= out_dado_lido1;
	saida_2_componente_banco_registradores <= out_dado_lido2;
	saida_componente_ula <= out_ula;
	saida_memoria_dados <= out_mem_dados;
	
end comportamento_split;


