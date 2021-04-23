-- chamada das bibliotecas
library ieee; --A biblioteca “IEEE” é sempre incluída.
use IEEE.std_logic_1164.all; -- é necessária para usar os dados correspondentes à lógica padrão da biblioteca

entity pc is
    port(
        -- declaracao dos pinos
        clock_pc    :   in std_logic; --indica se o componente está ligado ou desligado
        entrada_pc  :   in std_logic_vector(7 downto 0); -- entra instrucao de 7 bits
        saida_pc    :   out std_logic_vector(7 downto 0) -- saida da instrução de 8 bits
        );
end pc;

architecture comportamento_pc of pc is
    begin 
        process (clock_pc) -- sempre será executado
            if(clock_pc == 1) then -- se estiver ligado a instrucao de entrada sairá
                saida_pc <= entrada_pc;
            end if;
        end process;
end comportamento_pc;


