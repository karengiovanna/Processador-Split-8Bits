library ieee;
use ieee.std_logic_1164.all;

entity multiplexador_Branch_and is 
    port(
        resultado_and           : in std_logic;
        resultado_extensor_2_8  : in std_logic_vector(7 downto 0);
        resultado_add           : in std_logic_vector(7 downto 0);
        saida_mux_branch_and    : out std_logic_vector(7 downto 0)
    );
end multiplexador_Branch_and;

architecture mux_comportamento_and of multiplexador_Branch_and is
    begin
		  process(resultado_and, resultado_extensor_2_8, resultado_add)
		  begin
			  case(resultado_and) is
					when '1' =>
						 saida_mux_branch_and <= resultado_extensor_2_8;
					when '0' =>
						 saida_mux_branch_and <= resultado_add;
			  end case;
		  end process;
    end mux_comportamento_and;
