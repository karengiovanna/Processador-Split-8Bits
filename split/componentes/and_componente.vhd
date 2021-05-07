library ieee;
use ieee.std_logic_1164.all;

entity and_componente is 
    port(
        entrada_and_1   : in std_logic;
        entrada_and_2   : in std_logic;

        saida_and       : out std_logic
    );
end and_componente;

architecture and_comportamento of and_componente is
    begin
        saida_and <= entrada_and_1 and entrada_and_2;
    end and_comportamento;
