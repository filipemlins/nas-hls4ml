-- ==============================================================
-- File generated on Tue Mar 02 23:01:39 -03 2021
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity dense_large_rf_gt_ni_3_outidx4_rom is 
    generic(
             DWIDTH     : integer := 6; 
             AWIDTH     : integer := 13; 
             MEM_SIZE    : integer := 5040
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of dense_large_rf_gt_ni_3_outidx4_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 to 119=> "000000", 120 to 239=> "000001", 240 to 359=> "000010", 360 to 479=> "000011", 480 to 599=> "000100", 
    600 to 719=> "000101", 720 to 839=> "000110", 840 to 959=> "000111", 960 to 1079=> "001000", 1080 to 1199=> "001001", 
    1200 to 1319=> "001010", 1320 to 1439=> "001011", 1440 to 1559=> "001100", 1560 to 1679=> "001101", 1680 to 1799=> "001110", 
    1800 to 1919=> "001111", 1920 to 2039=> "010000", 2040 to 2159=> "010001", 2160 to 2279=> "010010", 2280 to 2399=> "010011", 
    2400 to 2519=> "010100", 2520 to 2639=> "010101", 2640 to 2759=> "010110", 2760 to 2879=> "010111", 2880 to 2999=> "011000", 
    3000 to 3119=> "011001", 3120 to 3239=> "011010", 3240 to 3359=> "011011", 3360 to 3479=> "011100", 3480 to 3599=> "011101", 
    3600 to 3719=> "011110", 3720 to 3839=> "011111", 3840 to 3959=> "100000", 3960 to 4079=> "100001", 4080 to 4199=> "100010", 
    4200 to 4319=> "100011", 4320 to 4439=> "100100", 4440 to 4559=> "100101", 4560 to 4679=> "100110", 4680 to 4799=> "100111", 
    4800 to 4919=> "101000", 4920 to 5039=> "101001" );


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

entity dense_large_rf_gt_ni_3_outidx4 is
    generic (
        DataWidth : INTEGER := 6;
        AddressRange : INTEGER := 5040;
        AddressWidth : INTEGER := 13);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of dense_large_rf_gt_ni_3_outidx4 is
    component dense_large_rf_gt_ni_3_outidx4_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    dense_large_rf_gt_ni_3_outidx4_rom_U :  component dense_large_rf_gt_ni_3_outidx4_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


