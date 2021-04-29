library ieee;
use ieee.std_logic_1164.all;

entity unidade_controle is
    port(

        clock_uc        : in std_logic;
        entrada_uc      : in std_logic_vector(7 downto 4);
        jump   : out std_logic;
        branch : out std_logic;
        M_read : out std_logic;
        M_to_reg : out std_logic;

        ula_op    : out std_logic_vector(7 downto 4);
        M_write : out std_logic;
        ula_src : out std_logic;
        reg_write : out std_logic;
    );
end unidade_controle;

architecture comportamento_uc of unidade_controle is
    begin
        process (clock_uc = '1')
            case entrada_uc is
                when "0000" => -- add
                    jump <= '0';
                    branch <= '0';
                    M_read <= '0';
                    M_to_reg <= '0';
                    ula_op <= "0000";
                    M_write <= '0';
                    ula_src <= '0';
                    reg_write <= '1';
                
                when "0001" => -- sub
                    jump <= '0';
                    branch <= '0';
                    M_read <= '0';
                    M_to_reg <= '0';
                    ula_op <= "0001";
                    M_write <= '0';
                    ula_src <= '0';
                    reg_write <= '1';
                
                when "0010" => -- mult
                    jump <= '0';
                    branch <= '0';
                    M_read <= '0';
                    M_to_reg <= '0';
                    ula_op <= "0010";
                    M_write <= '0';
                    ula_src <= '0';
                    reg_write <= '1';
                
                when "0011" => -- load word
                    jump <= '0';
                    branch <= '0';
                    M_read <= '1';
                    M_to_reg <= '1';
                    ula_op <= "0011";
                    M_write <= '0';
                    ula_src <= '0';
                    reg_write <= '1';

                when "0100" => -- store word
                    jump <= '0';
                    branch <= '0';
                    M_read <= '0';
                    M_to_reg <= '0';
                    ula_op <= "0100";
                    M_write <= '1';
                    ula_src <= '0';
                    reg_write <= '0';
                
                when "0101" => -- load immediate
                    jump <= '0';
                    branch <= '0';
                    M_read <= '0';
                    M_to_reg <= '0';
                    ula_op <= "0101";
                    M_write <= '0';
                    ula_src <= '1';
                    reg_write <= '1';
                
                when "0110" => -- beq
                    jump <= '0';
                    branch <= '1';
                    M_read <= '0';
                    M_to_reg <= '0';
                    ula_op <= "0110";
                    M_write <= '0';
                    ula_src <= '0';
                    reg_write <= '0';

                when "0111" => -- bne
                    jump <= '0';
                    branch <= '1';
                    M_read <= '0';
                    M_to_reg <= '0';
                    ula_op <= "0111";
                    M_write <= '0';
                    ula_src <= '0';
                    reg_write <= '0';

                when "1000" => -- jump
                    jump <= '1';
                    branch <= '0';
                    M_read <= '0';
                    M_to_reg <= '0';
                    ula_op <= "1000";
                    M_write <= '0';
                    ula_src <= '0';
                    reg_write <= '0';
            end case;
        end process;
end comportamento_uc;




            