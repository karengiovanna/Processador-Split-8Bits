library ieee;
use ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

entity ula is
    port (
        clock_ula                 : in std_logic;

        entrada_dado_lido1        : in std_logic_vector(7 downto 0);
        entrada_dado_lido2        : in std_logic_vector(7 downto 0);
        entrada_ula_op            : in std_logic_vector(3 downto 0);

        resultado_ula             : out std_logic_vector(7 downto 0);
        zero                      : out std_logic

        --overflow                  : out std_logic

    );
end ula;

architecture comportamento_ula of ula is

    signal entrada_temp_if : std_logic; -- Variável temporária para o if
    signal result_mult : std_logic_vector(15 downto 0);

    begin
        process(clock_ula)
				begin
            case entrada_ula_op is
                when "0000" => -- add
                    resultado_ula <= entrada_dado_lido1 + entrada_dado_lido2;
					                
                when "0001" => -- sub
                    resultado_ula <= entrada_dado_lido1 - entrada_dado_lido2;

                when "0010" => -- mult
                    result_mult <= entrada_dado_lido1 * entrada_dado_lido2;
                    if result_mult(8) = '1' or result_mult(9) = '1' or result_mult(10) = '1' or result_mult(11) = '1' or result_mult(12) = '1' or result_mult(13) = '1' or result_mult(14) = '1' or result_mult(15) = '1' then
                        --overflow = '1';
                    else
                        resultado_ula <= result_mult(7 downto 0);
                        --overflow = '0';
                    end if;

                when "0011" => -- Load Word
                    resultado_ula <= entrada_dado_lido1;
                
                when "0100" => -- Store Word
                    resultado_ula <= entrada_dado_lido1;
                        
		        when "1001" => -- if beq e bne // acrescentar na tabela de opcode
                    if entrada_dado_lido1 = entrada_dado_lido2 then
                        entrada_temp_if <= '1';
                    else
                        entrada_temp_if <= '0';
                    end if;
						  
                when "0110" => -- breach if equal
                    if entrada_temp_if = '1' then
                        zero <= '1';
                    else 
                        zero <= '0';
                    end if;

                when "0111" => -- breach if not equal
                    if entrada_temp_if = '0' then
                        zero <= '1';
                    else 
                        zero <= '0';
                    end if;
                
				when others =>
                    resultado_ula <= "00000000";
            end case;
        end process;
    end comportamento_ula;