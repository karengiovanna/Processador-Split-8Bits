library ieee;
use ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

entity add is
    port(
        saida_pc    : in std_logic_vector(7 downto 0);

        saida_add   : out std_logic_vector(7 downto 0)
    );
end add;

architecture comportamento_add of add is

	 signal proxima : std_logic_vector(7 downto 0);
	 
    begin 
        process (saida_pc)
        begin
            proxima <= "00000001";
            saida_add <= saida_pc + proxima;
        end process;
end comportamento_add;
