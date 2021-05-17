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

        ---------------------------------------
		---------------ADD e SUB---------------
		---------------------------------------
	    --0 => "01010011", -- li $s0 3
		--1 => "00000000", -- add $s0 $s0 6  
		--2 => "01010110", -- li $s1 2
		--3 => "00010001", -- sub $s0 $s1 4
		--4 => "01000000", -- sw $s0 endereço(00)
	    --5 => "00110000", -- lw $s0 endereço(00)
		  
		  
		---------------------------------------
		-----------OUTRAS INSTRUÇÕES-----------
		---------------------------------------
		0 => "01010010", -- li $s0 2
		1 => "01010110", -- li $s1 2
		
		2 => "10010001", -- if $s0 == $s1
		3 => "01100111", -- beq $s0 == $s1 jump linha 7
		4 => "01111000", -- bne $s0 != $s1 jump  linha 8
		  
		5 => "00100001", -- mult $s0 $s1     s0 vira 4
		6 => "10000010", -- jump linha 2
		  
		7 => "10000101", -- jump linha 5
		  
		8 => "01000000", -- sw $s0 00
		9 => "00110000", -- lw $s0 00
		  
		10 => "01010000", -- li $s0 0
		11 => "01010100", -- li $s1 0
		12 => "01011000", -- li $s2 0
		13 => "01011100", -- li $s3 0
		

        OTHERS => "00000000");

    begin
        process(clock_mem) is
				begin
				saida_mem <= indice(conv_integer(unsigned(entrada_mem)));
        end process;
end comportamento_mem;