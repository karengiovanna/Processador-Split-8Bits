library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;

entity memoria_dados is 
    port(
        clock_mem_dados     : in std_logic;

        M_read              : in std_logic;
        M_write             : in std_logic;
        entrada_endereco    : in std_logic_vector (7 downto 0);
        escrita_dados       : in std_logic_vector (7 downto 0); 

        dado_lido           : out std_logic_vector (7 downto 0)
    );
end memoria_dados;

architecture comportamento_mem_dados of memoria_dados is
    type enderecos_mem_dados is array(0 to 7) of std_logic_vector(7 downto 0);
    signal indice_mem_dados : enderecos_mem_dados := (OTHERS => "00000001");
    begin
        process(clock_mem_dados)
            begin
                IF rising_edge(clock_mem_dados) THEN
                    if (M_read = '1') then 
                        indice_mem_dados(to_integer(unsigned(entrada_endereco))) <= escrita_dados;

                    end if;

                    if (M_write = '1') then 
                        dado_lido <= indice_mem_dados(to_integer(unsigned(entrada_endereco)));
                    end if;
                END IF;
            
        end process;
    end comportamento_mem_dados;


