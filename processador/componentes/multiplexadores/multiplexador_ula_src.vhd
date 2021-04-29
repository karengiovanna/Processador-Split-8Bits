library ieee;
use ieee.std_logic_1164.all;

entity multiplexador_ula_src is 
    port(
        ula_src                 : in std_logic;
        dado_lido2              : in std_logic_vector(7 downto 0);
        saida_extensor          : in std_logic_vector(7 downto 0);
        saida_mux_ula_src       : out std_logic_vector(7 downto 0);
    );
end multiplexador_ula_src;

architecture mux_comportamento_ula of multiplexador_ula_src
    begin
        case(ula_src) is
            when '0' =>
                saida_mux_ula_src <= dado_lido2;
            when '1' =>
                saida_mux_ula_src <= saida_extensor;
        end case;
    end mux_comportamento_ula;
