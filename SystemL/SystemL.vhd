library IEEE;
use IEEE.std_logic_1164.all;

entity SystemL is
   port (ABCD  : in  std_logic_vector(3 downto 0);
         F     : out std_logic);
end entity;

architecture SystemL_arch of SystemL is

begin

  SystemI_Proc : process (ABCD)
  begin
	if     ABCD = "0001" then F <= '0';
	elsif  ABCD = "1001" then F <= '0';
        elsif  ABCD = "1011" then F <= '0';
	elsif  ABCD = "1101" then F <= '0';
	else F <= '1';
	end if;
  end process SystemI_Proc;



end architecture; 
