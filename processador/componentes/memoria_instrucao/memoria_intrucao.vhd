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
        1 => "00010001", -- sub s0 s1
        2 => "00100001", -- mult s0 s1
        3 => "001100", -- lw s0 (memoria) nao sabemos colocar
        4 => "0100 00", -- sw s0 memoria00 nao sabemos
        5 => "0101 00 01", -- li s0 1 pq 1? como? o que?
        6 => "0110", -- beq endereco ???????
        7 => "0111", -- bne endereço ???????
        8 => "10000001", -- incondicional 
        );
    begin
        process (clock_mem) is:
            begin
                saida_mem <= enderecos(conv_integer(unsigned(entrada_mem))); -- oq que é banco de reg
        end process;
end comportamento_mem;