library ieee;
use ieee.std_logic_1164.all;

entity multiplexador_jump is 
    port(
        flag_jump                       : in std_logic;
        resultado_extensor_2_8          : in std_logic_vector(7 downto 0);
        resultado_mux_branch_and        : in std_logic_vector(7 downto 0);
        saida_mux_jump                  : out std_logic_vector(7 downto 0)
    );
end multiplexador_jump;

architecture mux_comportamento_jump of multiplexador_jump is
    begin
		  process(flag_jump, resultado_extensor_2_8, resultado_mux_branch_and)
				begin
			  case(flag_jump) is
					when '1' =>
						 saida_mux_jump <= resultado_extensor_2_8;
					when '0' =>
						 saida_mux_jump <= resultado_mux_branch_and;
			  end case;
		end process;
    end mux_comportamento_jump;
