library ieee;
use ieee.std_logic_1164.all;

entity multiplexador_M_to_reg is 
    port(
        M_to_reg                : in std_logic;
        dado_lido2              : in std_logic_vector(7 downto 0);
        resultado_ula           : in std_logic_vector(7 downto 0);
        saida_mux_M_to_reg      : out std_logic_vector(7 downto 0)
    );
end multiplexador_M_to_reg;

architecture mux_comportamento_M_to_reg of multiplexador_M_to_reg is
    begin
        process(M_to_reg, dado_lido2, resultado_ula)
            begin
            case(M_to_reg) is
                when '1' =>
                    saida_mux_M_to_reg <= dado_lido2;
                when '0' =>
                    saida_mux_M_to_reg <= resultado_ula;
            end case;
        end process;
    end mux_comportamento_M_to_reg;
