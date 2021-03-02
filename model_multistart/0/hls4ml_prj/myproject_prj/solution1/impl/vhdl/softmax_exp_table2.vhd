-- ==============================================================
-- File generated on Mon Mar 01 22:17:23 -03 2021
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity softmax_exp_table2_rom is 
    generic(
             DWIDTH     : integer := 18; 
             AWIDTH     : integer := 10; 
             MEM_SIZE    : integer := 1024
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of softmax_exp_table2_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000000010000000000", 1 => "000000011010011000", 
    2 => "000000101011011111", 3 => "000001000111101101", 
    4 => "000001110110001110", 5 => "000011000010111010", 
    6 => "000101000001010111", 7 => "001000010001110110", 
    8 => "001101101001100100", 9 => "010110100000010001", 
    10 => "100101000110100111", 11 => "111101001011000100", 
    12 => "100100110110110111", 13 => "100110010010010001", 
    14 => "010010001010001000", 15 => "000100000000101011", 
    16 => "101001001111010101", 17 => "001100101100010011", 
    18 => "101001110001010110", 19 => "001011111011101000", 
    20 => "000010100111011100", 21 => "110110111000000100", 
    22 => "111000100010010000", 23 => "100110111100011000", 
    24 => "110000101100110000", 25 => "001100010100100000", 
    26 => "001011010110100000", 27 => "010010000110000000", 
    28 => "101011000100000000", 29 => "001001110100000000", 
    30 => "100110010100000000", 31 => "100000101000000000", 
    32 to 33=> "010111110000000000", 34 => "010010000000000000", 
    35 => "100100000000000000", 36 => "010000000000000000", 
    37 => "000010000000000000", 38 => "100000000000000000", 
    39 => "101000000000000000", 40 => "100000000000000000", 
    41 to 1010=> "000000000000000000", 1011 => "000000000000000001", 
    1012 => "000000000000000010", 1013 => "000000000000000100", 
    1014 => "000000000000000110", 1015 => "000000000000001011", 
    1016 => "000000000000010010", 1017 => "000000000000011110", 
    1018 => "000000000000110010", 1019 => "000000000001010100", 
    1020 => "000000000010001010", 1021 => "000000000011100100", 
    1022 => "000000000101111000", 1023 => "000000001001101101" );


begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity softmax_exp_table2 is
    generic (
        DataWidth : INTEGER := 18;
        AddressRange : INTEGER := 1024;
        AddressWidth : INTEGER := 10);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of softmax_exp_table2 is
    component softmax_exp_table2_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    softmax_exp_table2_rom_U :  component softmax_exp_table2_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


