library ieee;
use ieee.std_logic_1164.all;

entity banco_regs is
    port(
        entrada_reg1            : in std_logic_vector(3 downto 2);
        entrada_reg2            : in std_logic_vector(1 downto 0);
        entrada_escrita_dados   : in std_logic_vector(7 downto 0);

        saida_dado_lido1        : out std_logic_vector(7 downto 0);
        saida_dado_lido2        : out std_logic_vector(7 downto 0);

        reg_write : in std_logic
    );
end banco_regs;

architecture comportamento_banco_regs of banco_regs is
    type registradores is array (0 to 3) of std_logic_vector (7 downto 0);
    begin
        process (entrada_reg1)
            if (reg_write = '1') then -- se reg_write == 1 escreve o dado no banco de registradores
                registradores(to_integer(unsigned(entrada_reg1))) <= entrada_escrita_dados;  -- entrar no indice do vetor para salvar o dado 
            end if;
            saida_dado_lido1 <= registradores(to_integer(unsigned(entrada_reg1))); 
            saida_dado_lido2 <= registradores(to_integer(unsigned(entrada_reg2))) 
        end process;

end comportamento_banco_regs;