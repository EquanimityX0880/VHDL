----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/14/2022 04:33:43 PM
-- Design Name: 
-- Module Name: SRLatchA - Behavioral
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

entity SRLatchA is
    Port ( Sa : in STD_LOGIC;
           R : in STD_LOGIC;
           Q : inout STD_LOGIC);
end SRLatchA;

architecture Behavioral of SRLatchA is
signal SR : STD_LOGIC_vector(1 downto 0);
begin -- conditional signal assignment statement
SR <= Sa&R;
Q <= Q after 10 ns when SR = "00" else    -- Hold
     '0' after 10 ns when SR = "01"  else -- Reset
     '1' after 10ns when SR = "10" else   -- Set
     'X';                                 -- prohibited
end Behavioral;
