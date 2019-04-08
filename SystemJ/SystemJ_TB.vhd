library IEEE;
use IEEE.std_logic_1164.all;

entity SystemJ_TB is
end entity;

architecture SystemJ_TB_arch of SystemJ_TB is
  
 component SystemJ is
   port (ABCD  : in  std_logic_vector(3 downto 0);
         F     : out std_logic);
 end component;
 
 signal ABCD_TB : std_logic_vector(3 downto 0);
 signal F_TB    : std_logic;
 
 begin
    
    DUT : SystemJ port map (ABCD_TB, F_TB);
    
    STIMULUS : process
      begin
        ABCD_TB <= "0000"; wait for 10 ns;
	report "Inputting Pattern 0000" severity NOTE;
	assert (F_TB= '0') report "Failed test at 0000" severity FAILURE;
	assert (F_TB= '1') report "Passed test at 0000" severity NOTE;

        ABCD_TB <= "0001"; wait for 10 ns;
	report "Inputting Pattern 0001" severity NOTE;
	assert (F_TB= '0') report "Failed test at 0001" severity FAILURE;
	assert (F_TB= '1') report "Passed test at 0001" severity NOTE;

        ABCD_TB <= "0010"; wait for 10 ns;
	report "Inputting Pattern 0010" severity NOTE;
	assert (F_TB= '0') report "Failed test at 0010" severity FAILURE;
	assert (F_TB= '1') report "Passed test at 0010" severity NOTE;

        ABCD_TB <= "0011"; wait for 10 ns;
	report "Inputting Pattern 0011" severity NOTE;
	assert (F_TB= '0') report "Failed test at 0011" severity FAILURE;
	assert (F_TB= '1') report "Passed test at 0011" severity NOTE;

        ABCD_TB <= "0100"; wait for 10 ns;
	report "Inputting Pattern 0100" severity NOTE;
	assert (F_TB= '0') report "Passed test at 0100" severity NOTE;
	assert (F_TB= '1') report "Failed test at 0100" severity FAILURE;

        ABCD_TB <= "0101"; wait for 10 ns;
	report "Inputting Pattern 0101" severity NOTE;
	assert (F_TB= '0') report "Passed test at 0101" severity NOTE;
	assert (F_TB= '1') report "Failed test at 0101" severity FAILURE;

        ABCD_TB <= "0110"; wait for 10 ns;
	report "Inputting Pattern 0110" severity NOTE;
	assert (F_TB= '0') report "Failed test at 0110" severity FAILURE;
	assert (F_TB= '1') report "Passed test at 0110" severity NOTE;

        ABCD_TB <= "0111"; wait for 10 ns;
	report "Inputting Pattern 0111" severity NOTE;
	assert (F_TB= '0') report "Passed test at 0111" severity NOTE;
	assert (F_TB= '1') report "Failed test at 0111" severity FAILURE;

        ABCD_TB <= "1000"; wait for 10 ns;
	report "Inputting Pattern 1000" severity NOTE;
	assert (F_TB= '0') report "Failed test at 1000" severity FAILURE;
	assert (F_TB= '1') report "Passed test at 1000" severity NOTE;

        ABCD_TB <= "1001"; wait for 10 ns;
	report "Inputting Pattern 1001" severity NOTE;
	assert (F_TB= '0') report "Failed test at 1001" severity FAILURE;
	assert (F_TB= '1') report "Passed test at 1001" severity NOTE;

        ABCD_TB <= "1010"; wait for 10 ns;
	report "Inputting Pattern 1010" severity NOTE;
	assert (F_TB= '0') report "Failed test at 1010" severity FAILURE;
	assert (F_TB= '1') report "Passed test at 1010" severity NOTE;

        ABCD_TB <= "1011"; wait for 10 ns;
	report "Inputting Pattern 1011" severity NOTE;
	assert (F_TB= '0') report "Failed test at 1011" severity FAILURE;
	assert (F_TB= '1') report "Passed test at 1011" severity NOTE;

        ABCD_TB <= "1100"; wait for 10 ns;
	report "Inputting Pattern 1100" severity NOTE;
	assert (F_TB= '0') report "Passed test at 1100" severity NOTE;
	assert (F_TB= '1') report "Failed test at 1100" severity FAILURE;

        ABCD_TB <= "1101"; wait for 10 ns;
	report "Inputting Pattern 1101" severity NOTE;
	assert (F_TB= '0') report "Passed test at 1101" severity NOTE;
	assert (F_TB= '1') report "Failed test at 1101" severity FAILURE;

        ABCD_TB <= "1110"; wait for 10 ns;
	report "Inputting Pattern 1110" severity NOTE;
	assert (F_TB= '0') report "Failed test at 1110" severity FAILURE;
	assert (F_TB= '1') report "Passed test at 1110" severity NOTE;

        ABCD_TB <= "1111"; wait for 10 ns;
	report "Inputting Pattern 1111" severity NOTE;
	assert (F_TB= '0') report "Passed test at 1111" severity NOTE;
	assert (F_TB= '1') report "Failed test at 1111" severity FAILURE;

       
    end process;
  
end architecture;