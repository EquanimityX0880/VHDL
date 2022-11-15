----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/14/2022 01:54:35 PM
-- Design Name: 
-- Module Name: muxA - Behavioral
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

entity muxA is
    Port ( Aa : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           F : out STD_LOGIC);
end muxA;

architecture Behavioral of muxA is

signal s : std_logic_vector(1 downto 0);

begin -- selected signal assignment statements

    s <= C&D;

    with s select
        F <= not Aa after 10ns when "00",
             B after 10 ns when "01",
             not B after 10 ns when "10",
             '0' after 10ns when others;

end Behavioral;
