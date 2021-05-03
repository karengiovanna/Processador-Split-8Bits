library ieee;
use ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.ALL;

entity banco_registradores is
    port(
        entrada_reg1            : in std_logic_vector(3 downto 2);
        entrada_reg2            : in std_logic_vector(1 downto 0);
        entrada_escrita_dados   : in std_logic_vector(7 downto 0);

        saida_dado_lido1        : out std_logic_vector(7 downto 0);
        saida_dado_lido2        : out std_logic_vector(7 downto 0);

        reg_write : in std_logic
    );
end banco_registradores;

architecture comportamento_banco_registradores of banco_registradores is

    type banco_registrador is array (0 to 3) of std_logic_vector (7 downto 0);
    signal registrador : banco_registrador;

    begin
        process (entrada_reg1)
			begin
            if (reg_write = '1') then -- se reg_write == 1 escreve o dado no banco de registradores
                registrador(conv_integer(unsigned(entrada_reg1))) <= entrada_escrita_dados;  -- entrar no indice do vetor para salvar o dado 
            end if;
            saida_dado_lido1 <= registrador(conv_integer(unsigned(entrada_reg1))); 
            saida_dado_lido2 <= registrador(conv_integer(unsigned(entrada_reg2)));
        end process;

end comportamento_banco_registradores;