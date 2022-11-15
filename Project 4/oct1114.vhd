library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity oct1114 is
    Port ( CLK : in STD_LOGIC;
         X : in STD_LOGIC;
         Z : out STD_LOGIC);
end oct1114;

architecture Behavioral of oct1114 is
    signal State, NextState: integer range 0 to 5;
begin

    process(CLK)
    begin
        if (CLK = '0' and CLK'event) then
            State <= NextState; end if;
    end process;

    process(State, X)
    begin
        case State is 
            when 0 => if X = '0' then Z <= '0'; Nextstate <= 1; else Z <= '0'; NextState <= 0; end if;
            when 1 => if X = '0' then Z <= '0'; Nextstate <= 1; else Z <= '0'; NextState <= 2; end if;
            when 2 => if X = '0' then Z <= '0'; Nextstate <= 3; else Z <= '0'; NextState <= 4; end if;
            when 3 => if X = '0' then Z <= '0'; Nextstate <= 1; else Z <= '1'; NextState <= 5; end if;
            when 4 => if X = '0' then Z <= '1'; Nextstate <= 5; else Z <= '0'; NextState <= 0; end if;
            when 5 => if X = '0' then Z <= '1'; Nextstate <= 0; else Z <= '1'; NextState <= 0; end if;
        end case;
    end process;

    
end Behavioral;