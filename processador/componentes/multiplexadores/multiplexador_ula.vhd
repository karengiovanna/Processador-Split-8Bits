library ieee;
use ieee.std_logic_1164.all;

entity multiplexador_banco_ula is 
    port(
        ula_src                 : in std_logic;
        dado_lido2              : in std_logic_vector(7 downto 0);
        saida_extensor          : in std_logic_vector(7 downto 0);
        saida_multiplexador     : out std_logic_vector(7 downto 0);
    );
end multiplexador_banco_ula;

architecture multiplexador_comportamento of multiplexador_banco_ula
    begin
        case(ula_src) is
            when '0' =>
                saida_multiplexador <= dado_lido2;
            when '1' =>
                saida_multiplexador <= saida_extensor;
        end case;
    end multiplexador_comportamento;
