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

entity dense_large_rf_gt_ni_4_outidx5_rom is 
    generic(
             DWIDTH     : integer := 5; 
             AWIDTH     : integer := 14; 
             MEM_SIZE    : integer := 13824
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of dense_large_rf_gt_ni_4_outidx5_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 to 575=> "00000", 576 to 1151=> "00001", 1152 to 1727=> "00010", 1728 to 2303=> "00011", 2304 to 2879=> "00100", 
    2880 to 3455=> "00101", 3456 to 4031=> "00110", 4032 to 4607=> "00111", 4608 to 5183=> "01000", 5184 to 5759=> "01001", 
    5760 to 6335=> "01010", 6336 to 6911=> "01011", 6912 to 7487=> "01100", 7488 to 8063=> "01101", 8064 to 8639=> "01110", 
    8640 to 9215=> "01111", 9216 to 9791=> "10000", 9792 to 10367=> "10001", 10368 to 10943=> "10010", 10944 to 11519=> "10011", 
    11520 to 12095=> "10100", 12096 to 12671=> "10101", 12672 to 13247=> "10110", 13248 to 13823=> "10111" );


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

entity dense_large_rf_gt_ni_4_outidx5 is
    generic (
        DataWidth : INTEGER := 5;
        AddressRange : INTEGER := 13824;
        AddressWidth : INTEGER := 14);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of dense_large_rf_gt_ni_4_outidx5 is
    component dense_large_rf_gt_ni_4_outidx5_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    dense_large_rf_gt_ni_4_outidx5_rom_U :  component dense_large_rf_gt_ni_4_outidx5_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


