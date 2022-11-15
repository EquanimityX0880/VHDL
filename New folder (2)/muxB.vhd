----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/14/2022 02:40:59 PM
-- Design Name: 
-- Module Name: muxB - Behavioral
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

entity muxB is
    Port ( Ab : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           F : out STD_LOGIC);
end muxB;

architecture Behavioral of muxB is
signal s : std_logic_vector(1 downto 0);

begin -- conditional signal assignment statement
s <= C&D;
F <= not Ab after 10 ns when s = "00" else
     B after 10 ns when s = "01" else
     not B after 10 ns when s = "10" else
     '0' after 10 ns when s = "11" else 'X';

end Behavioral;