library ieee;
use ieee.std_logic_1164.all;

entity add is
    port(
        saida_pc    : in std_logic_vector(7 downto 0);
        proxima     : in std_logic;

        saida_add   : out std_logic_vector(7 downto 0)
    );
end add;

architecture comportamento_add of add is
    begin 
        process (saida_pc)
        begin
            proxima <= "00000001";
            saida_add <= saida_pc + proxima;
        end process;
end comportamento_add;
        
