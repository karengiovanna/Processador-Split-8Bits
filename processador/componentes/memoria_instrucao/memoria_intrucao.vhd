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

        -- load immediate 0101
        0 => "01010000", -- li $s0 valor0
        2 => "01010101", -- li $s1 valor1
        3 => "01011010", -- li $s2 valor2
        4 => "01011111", -- li $s3 valor3

        -- aritmética
        5 => "00000001", -- add = $s0 + $s1
        6 => "00010001", -- sub $s0 $s1
        7 => "00100001", -- mult $s0 $s1

        -- load word 0011
        8 => "00110000", -- lw $s0 (edereco 00) 
        9 => "00110001", -- lw $s0 (endereco 01)
        10 => "00110010", -- lw $s0 (endereco 10)
        11 => "00110011", -- lw $s0 (endereco 11)

        -- store word 0100
        12 => "01000000", -- sw $s0 endereco00 
        13 => "01000001", -- sw $s0 endereco01 
        14 => "01000010", -- sw $s0 endereco10 
        15 =>"01000011", -- sw $s0 endereco11 

        -- breach if equal 0110
        16 => "01100000", --beq endereco0000
        17 => "01100001", --beq endereco0001
        18 => "01100010", --beq endereco0010
        19 => "01100011", --beq endereco0011
    
        -- breach if not equal 0111
        20 => "01110000", --bne endereco0000
        21 => "01110001", --bne endereco0001
        22 => "01110010", --bne endereco0010
        23 => "01110011", --bne endereco0011

        -- jump 1000
        24 => "10000000", --j endereco0000

        );

        -- 00 $s0
        -- 01 $s1
        -- 10 $s2
        -- 11 $s3
    begin
        process (clock_mem) is:
            begin
                saida_mem <= enderecos(conv_integer(unsigned(entrada_mem))); -- oq que é banco de reg
        end process;
end comportamento_mem;