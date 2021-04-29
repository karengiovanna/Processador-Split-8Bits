library ieee;
use ieee.std_logic_1164.all;

entity divisor_instrucao is
    port(
        saida_extensor1 :   out std_logic_vector(4 downto 0);
        
        entrada_divisor :   in std_logic_vector (7 downto 0);
        saida_uc        :   out std_logic_vector(7 downto 4);
        saida_reg1      :   out std_logic_vector(3 downto 2);
        saida_reg2      :   out std_logic_vector(1 downto 0);   
        
        saida_extensor2 :   out std_logic_vector(1 downto 0)  
    );
end divisor_instrucao;

architecture comportamento_divisor of divisor_instrucao is
    begin
        saida_extensor1 <= entrada_divisor(4 downto 0);

        saida_uc        <= entrada_divisor(7 downto 4);
        saida_reg1      <= entrada_divisor(3 downto 2);
        saida_reg2      <= entrada_divisor(1 downto 0);

        saida_extensor2 <= entrada_divisor(1 downto 0);
end comportamento_divisor;
        
    


