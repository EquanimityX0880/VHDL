library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_StateMachine is
end TB_StateMachine;

architecture Behavioral of TB_StateMachine is 

    component oct1114
        port(CLK, X: in STD_LOGIC; Z: out STD_LOGIC);
    end component;
    signal XA: std_logic_vector(0 to 17) := "010011101010101101";
    signal ZA: std_logic_vector(0 to 17) := "000000000011010101";
    -- Correct Sequence:   000000000011000011
    -- Incorrect Sequence: 000000000011010101 
    signal CLKi, Xi, Zo:std_logic := '0';
    
    begin
        clki <= not clki after 10 ns;
        M1: oct1114 port map(CLKi, Xi, Zo);
        
        process
        begin
            for i in 0 to 17 loop
                Xi <= XA(i) after 5 ns;
                wait until CLKi = '0' and CLKi'event;
                assert (Zo = ZA(i))
                report "Error" &integer'image (i) severity error;
            end loop;
            report("Sequence correct");
        end process;
end Behavioral;