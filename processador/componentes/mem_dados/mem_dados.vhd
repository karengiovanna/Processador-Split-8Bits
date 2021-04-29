library ieee;
use ieee.std_logic_1164.all;

entity mem_dados is 
    port(
        clock_mem_dados     : in std_logic;

        M_read              : in std_logic;
        M_write             : in std_logic;
        entrada_endereco    : in std_logic_vector (7 downto 0);
        escrita_dados       : in std_logic_vector (7 downto 0); 

        dado_lido           : out std_logic_vector (7 downto 0); 
    );
end mem_dados;

architecture comportamento_mem_dados of mem_dados is
    type enderecos_mem_dados is array(0 to 255) of std_logic_vector(7 downto 0);
    constant indice_mem_dados : enderecos_mem_dados := (
        OTHERS => "00000000");
    
    begin
        process(clock_mem_dados='1')
            if (M_read = '1') then 
                indice_mem_dados(to_integer(unsigned(entrada_endereco))) <= escrita_dados;

            end if;

            if (M_write = '1') then 
                dado_lido <= indice_mem_dados(to_integer(unsigned(entrada_endereco)));
            end if;
            
            
        end process;
    end comportamento_mem_dados;

