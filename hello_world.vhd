library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity hello_world is
  Port (
        s1 : in std_logic;
        s2 : in std_logic;
        fclk : in std_logic;
        LED1 : out std_logic;
        LED2 : out std_logic
        );
end hello_world;

architecture Behavioral of hello_world is
begin        
hello_world: process(fclk)
begin
    if rising_edge (fclk) then 
    LED1    <=  s1 and s2;
    LED2    <=  s1 xor s2;
end if;
end process;

end Behavioral;