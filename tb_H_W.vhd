-- test bench to verify the operation of and gate logic

library IEEE;
use IEEE.numeric_std.all;
use IEEE.STD_LOGIC_1164.all;

entity tb_h_w is
end tb_h_w;

architecture behave of tb_h_w is
	component hello_world is
     Port (
       s1 : in std_logic;
       s2 : in std_logic;
       fclk : in std_logic;
       LED1 : out std_logic;
       LED2 : out std_logic
     );
	end component;

constant clockperiod : time := 20 ns;

signal 	si1, si2, LEDi1, LEDi2 : std_logic; 
signal	ficlk : std_logic	:= '0';

begin

    hello_world_i : entity work.hello_world 
	port map(

        s1    => si1,
        s2    => si2,
        LED1    => LEDi1,
	LED2    => LEDi2,
	fclk	=> ficlk
    );
ficlk	<= not ficlk after clockperiod/2;

Process is
	begin
		si1 <='0';
		si2 <='0';
		
		wait for 100 ns;

		si1 <='0';
		si2 <='1';
		
		wait for 100 ns;

		si1 <='1';
		si2 <='0';
		
		wait for 100 ns;
		si1 <='1';
		si2 <='1';
		wait for 100 ns;
	end process;
end behave;
