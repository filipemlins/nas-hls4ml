-- ==============================================================
-- File generated on Mon Mar 01 22:17:22 -03 2021
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
             DWIDTH     : integer := 18; 
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
    0 => "110111111111111100", 1 => "110000000000000101", 
    2 => "101000000000000001", 3 => "110011111111111011", 
    4 => "111111111111111111", 5 => "000000000000000001", 
    6 => "001000000000000000", 7 => "101111111111111100", 
    8 => "001000000000000110", 9 => "001111111111111111", 
    10 => "111100000000000101", 11 => "001100000000000100", 
    12 => "001100000000000011", 13 => "110000000000000000", 
    14 => "001100000000000011", 15 => "111000000000000111", 
    16 => "000111111111111100", 17 => "010000000000000101", 
    18 => "101111111111111011", 19 => "011011111111111010", 
    20 => "110011111111111011", 21 => "111100000000000001", 
    22 => "101111111111111011", 23 => "111000000000000101", 
    24 => "010000000000000110", 25 => "101100000000000000", 
    26 => "010100000000000011", 27 => "110111111111111100", 
    28 => "110011111111111100", 29 => "011011111111111111", 
    30 => "001011111111111110", 31 => "110000000000000101", 
    32 => "110100000000000101", 33 => "010000000000000000", 
    34 => "111100000000000101", 35 => "011011111111111100", 
    36 => "110000000000000010", 37 => "101111111111111011", 
    38 => "001011111111111110", 39 => "000100000000000110", 
    40 => "000011111111111111", 41 => "111011111111111100", 
    42 => "110000000000000010", 43 => "010000000000000010", 
    44 => "101100000000000101", 45 => "001100000000000011", 
    46 => "010111111111111101", 47 => "001011111111111110", 
    48 => "001000000000000001", 49 => "010000000000000100", 
    50 => "001111111111111010", 51 => "001011111111111111", 
    52 => "110011111111111010", 53 => "010011111111111101", 
    54 => "000100000000000101", 55 => "110100000000000000", 
    56 => "111000000000000010", 57 => "110100000000000001", 
    58 => "101100000000000011", 59 => "101100000000000001", 
    60 => "111100000000000001", 61 => "110100000000000101", 
    62 => "001011111111111101", 63 => "110000000000000011" );


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
        DataWidth : INTEGER := 18;
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


