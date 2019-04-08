library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_textio.all;

library STD;
use STD.textio.all;

entity SystemL_TB is 
end entity;

architecture SystemL_arch of SystemL_TB is
   component SystemL
      port (ABCD  : in  std_logic_vector(3 downto 0);
            F     : out std_logic);
   end component;

   signal ABCD_TB  : std_logic_vector(3 downto 0);
   signal F_TB 	   : std_logic;
 
   begin
      DUT : SystemL port map (ABCD => ABCD_TB, F => F_TB);
      
      STIMULUS : process

 	file Fin: TEXT open READ_MODE is "input_vectors.txt";

	variable current_read_line : line;
	variable current_read_field : std_logic_vector(3 downto 0);
	variable current_write_line : line;

	begin 
	   
	   while (not endfile(Fin)) loop

		readLine(Fin, current_read_line);
		read(current_read_line, current_read_field);

		ABCD_TB <= current_read_field; wait for 100 ns;

		write(current_write_line, string'("Input Vector: ABCD_TB="));
		write(current_write_line, ABCD_TB);
		--write(current_write_line, string'(" "));

		write(current_write_line, string'("  Output: F_TB="));
		write(current_write_line, F_TB);
		writeline(OUTPUT, current_write_line);

	   end loop;

	   wait;

      end process;

end architecture;