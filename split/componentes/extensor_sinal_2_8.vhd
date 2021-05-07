LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY extensor_sinal_2_8 IS
    PORT (
        entrada_extensor : IN std_logic_vector (1 DOWNTO 0);
        saida_extensor : OUT std_logic_vector (7 DOWNTO 0)
    );
END extensor_sinal_2_8;

ARCHITECTURE comportamento_extensor OF extensor_sinal_2_8 IS

BEGIN
    PROCESS (entrada_extensor)
    BEGIN
        saida_extensor <= ("000000") & entrada_extensor;
    END PROCESS;
END comportamento_extensor;