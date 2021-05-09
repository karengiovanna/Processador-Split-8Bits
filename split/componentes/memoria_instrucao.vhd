library ieee;
use ieee.std_logic_1164.all;
USE ieee.std_logic_arith.ALL;

entity memoria_instrucao is
    port(
        clock_mem       :   in std_logic;
        entrada_mem     :   in std_logic_vector(7 downto 0);
        saida_mem       :   out std_logic_vector(7 downto 0)
    );
end memoria_instrucao;

architecture comportamento_mem of memoria_instrucao is
    type enderecos is array(0 to 255) of std_logic_vector(7 downto 0); --0 to 255
    constant indice : enderecos := (

        -- load immediate 0101

		  0 => "01011111", -- s3 3
		  1 => "01011011", -- s2 3
		  2 => "00001011", -- add s2 s3 6
		  3 => "00001010", -- add S2 S2 12
		  4 => "00011011", -- sub s2 s3 9
		  
		  5 => "01001000", -- sw $s2 endereco00 9
          6 => "01001101", -- sw $s3 endereco01 3
		  
		  7 => "00110000", -- lw $s0 (edereco 00) 
          8 => "00110101", -- lw $s1 (endereco 01)
		  
		  9 => "00000001", -- add S0 S1
		  
		  10 => "01010000", -- s0 0
		  11 => "01010100", -- s1 0
		  12 => "01011000", -- s2 0
		  13 => "01011100", -- s3 0
		  
		  
        --0 => "01010010", -- li $s0 valor0 att valor 2
        --1 => "01010101", -- li $s1 valor1
		  
		  
		  
        --2 => "01011010", -- li $s2 valor2
        --3 => "01011111", -- li $s3 valor3

        -- aritmética
        --4 => "00000001", -- add = $s0 + $s1
        --5 => "00010001", -- sub $s0 $s1
        --6 => "00100001", -- mult $s0 $s1
		  
		  -- store word 0100
        --7 => "01000000", -- sw $s0 endereco00 
        --8 => "01000001", -- sw $s0 endereco01 
       --9 => "01000010", -- sw $s0 endereco10 
        --10 =>"01000011", -- sw $s0 endereco11 

        -- load word 0011
        --11 => "00110000", -- lw $s0 (edereco 00) 
        --12 => "00110001", -- lw $s0 (endereco 01)
        --13 => "00110010", -- lw $s0 (endereco 10)
        --14 => "00110011", -- lw $s0 (endereco 11) 

        -- breach if equal 0110
        --15 => "01100000", --beq endereco0000
        --16 => "01100001", --beq endereco0001
        --17 => "01100010", --beq endereco0010
        --18 => "01100011", --beq endereco0011
    
        -- breach if not equal 0111
        --19 => "01110000", --bne endereco0000
        --20 => "01110001", --bne endereco0001
        --21 => "01110010", --bne endereco0010
        --22 => "01110011", --bne endereco0011

        -- jump 1000
        --23 => "10000000" --j endereco0000

        OTHERS => "00000000");

    begin
        process(clock_mem) is
				begin
				saida_mem <= indice(conv_integer(unsigned(entrada_mem)));
        end process;
end comportamento_mem;