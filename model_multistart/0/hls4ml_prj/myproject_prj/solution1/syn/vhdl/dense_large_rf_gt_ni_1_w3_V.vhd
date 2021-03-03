-- ==============================================================
-- File generated on Tue Mar 02 23:01:38 -03 2021
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity dense_large_rf_gt_ni_1_w3_V_rom is 
    generic(
             DWIDTH     : integer := 25; 
             AWIDTH     : integer := 6; 
             MEM_SIZE    : integer := 64
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of dense_large_rf_gt_ni_1_w3_V_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0110010111111111011000010", 1 => "1001101110100001000100100", 
    2 => "1111100101111110110001011", 3 => "0110011100011110110000110", 
    4 => "0101000110011111000000011", 5 => "0100001101000000110001110", 
    6 => "0000111111100000110100001", 7 => "0001101111011111000110110", 
    8 => "1111010111100001001010111", 9 => "1101001011111110011111010", 
    10 => "1011010101100000010001111", 11 => "1111110101111110110011011", 
    12 => "1111110101111111000000001", 13 => "1010001010000001000011000", 
    14 => "0011101010000001001111000", 15 => "0101000011011111111100101", 
    16 => "0000111000011110100111100", 17 => "0101100000011111000111001", 
    18 => "0110001111100000100010000", 19 => "1001110001100000110110000", 
    20 => "1001111111000000111101110", 21 => "1110111010111110100100111", 
    22 => "0010110101011111000101111", 23 => "0011100001111110100111001", 
    24 => "1010010101000001011001011", 25 => "1111110110111111101000001", 
    26 => "0011010010000001011010001", 27 => "0010011100100000001110010", 
    28 => "1101111011011111010101011", 29 => "0010110000011111111100101", 
    30 => "0000010011100001100000011", 31 => "0110010101011110111010101", 
    32 => "0001010010100000001100011", 33 => "0001010111000000000111011", 
    34 => "1001100011011110100011011", 35 => "1100101100000000001111010", 
    36 => "1110011011011111011111110", 37 => "1101101110011111011011011", 
    38 => "1111110000111110011101010", 39 => "1101101001111110011101001", 
    40 => "1011011101011111111010110", 41 => "0000001101011110101001100", 
    42 => "1001100101000000100011110", 43 => "0010101001111110101100000", 
    44 => "1010011001100000010010101", 45 => "1011001011011110111010101", 
    46 => "1101011100100000101111101", 47 => "1110100011000000000001101", 
    48 => "1111101101011111000111111", 49 => "1001011111100000101010010", 
    50 => "0101001011111110110110000", 51 => "0000101100111111100110011", 
    52 => "1010001010000000111011000", 53 => "0100111001111111011000001", 
    54 => "1010110110000000110001011", 55 => "1110010111011110101011000", 
    56 => "1010010110011110011111011", 57 => "0101001010100000110100111", 
    58 => "1101101101000000011100010", 59 => "1010110101100001010001000", 
    60 => "1010101101011111100011101", 61 => "0011100100100000011001010", 
    62 => "0101100000111111001101110", 63 => "1101011111000000101011110" );


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

entity dense_large_rf_gt_ni_1_w3_V is
    generic (
        DataWidth : INTEGER := 25;
        AddressRange : INTEGER := 64;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of dense_large_rf_gt_ni_1_w3_V is
    component dense_large_rf_gt_ni_1_w3_V_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    dense_large_rf_gt_ni_1_w3_V_rom_U :  component dense_large_rf_gt_ni_1_w3_V_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


