library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  
  
entity Tfflop is     Generic (N : integer := 3);  
    Port ( clk : in STD_LOGIC;  
           T   : in STD_LOGIC;  
           Y   : inout STD_LOGIC_VECTOR(N-1 downto 0) := (others => '0'));
 end Tfflop;  
  
architecture Behavioral of Tfflop is   signal Q : STD_LOGIC_VECTOR(N-1 downto 0) := (others => '0'); begin  
  
    process(clk,T)     begin  
        if rising_edge(clk) then            
             if T = '1' then  
                Q(0) <= not Q(0); -- First flip-flop toggles with each clock pulse                 
               for i in 1 to N-1 loop                     
                     Q(i) <= Q(i) xor Q(i-1);  
                end loop;            
             end if;  
        end if;     
    end process;    
 Y <= Q;  
  
end Behavioral;  
