library ieee;
use ieee.std_logic_1164.all;

entity memoria_instrucao is
    port(
        clock_mem       :   in std_logic;
        entrada_mem     :   in std_logic_vector(7 downto 0);
        saida_mem       :   out std_logic_vector(7 downto 0)
    );
end memoria_instrucao;

architecture comportamento_mem of memoria_instrucao is
    type enderecos is array(0 to 255) of std_logic_vector(7 downto 0);
    constant indice : enderecos := (
        0 => "00000001", -- add = s0 + s1
        1 => ""

    )
    begin
        process 
            
end comportamento_mem