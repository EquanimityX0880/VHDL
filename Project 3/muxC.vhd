----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/14/2022 04:12:51 PM
-- Design Name: 
-- Module Name: muxC - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity muxC is
    Port ( Ac : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           F : out STD_LOGIC);
end muxC;

architecture Behavioral of muxC is
signal s : STD_LOGIC_VECTOR(1 downto 0); 
begin -- process and case statement
s <= C&D;
process(s,Ac,B) begin
    case s is
        when "00" => F <= not Ac after 10 ns;
        when "01" => F <= B after 10 ns;
        when "10" => F <= not B after 10 ns;
        when "11" => F <= '0' after 10 ns;
        when others => F <= 'X';
    end case;
end process;
end Behavioral;
