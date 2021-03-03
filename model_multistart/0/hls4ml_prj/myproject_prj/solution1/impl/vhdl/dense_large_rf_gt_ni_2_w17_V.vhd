-- ==============================================================
-- File generated on Tue Mar 02 23:01:40 -03 2021
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity dense_large_rf_gt_ni_2_w17_V_rom is 
    generic(
             DWIDTH     : integer := 25; 
             AWIDTH     : integer := 9; 
             MEM_SIZE    : integer := 420
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of dense_large_rf_gt_ni_2_w17_V_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010000111100001000101011", 1 => "1011001001000000110000101", 
    2 => "1110001011100001011111010", 3 => "1100000010000001011110000", 
    4 => "1100000110000000111010011", 5 => "0010011101100000011100110", 
    6 => "1100001111100001011100100", 7 => "0000011101011111101110111", 
    8 => "1010100111011111101010011", 9 => "1111011011000001100000011", 
    10 => "1101010100011110111100111", 11 => "0100101101111111111101110", 
    12 => "1111001001111111111110111", 13 => "0011101111111111100110001", 
    14 => "0100001000011111000111110", 15 => "0011101100000001001000101", 
    16 => "0001101010000000100011100", 17 => "1100000010000001001001111", 
    18 => "0010000000111110111001110", 19 => "0101001111111111001100000", 
    20 => "0001101001000001010000101", 21 => "0101001111100001001111010", 
    22 => "0000110011011110110100000", 23 => "0010100100011111110010001", 
    24 => "1101010010011110110010010", 25 => "1010010010000001011011101", 
    26 => "1111001111100000001111100", 27 => "0100001000111110101110010", 
    28 => "0010011111000000001101001", 29 => "1111110000111111110010110", 
    30 => "1010000101100001000101010", 31 => "1110000011011110101011010", 
    32 => "0100100011100001000111111", 33 => "1010010110011111111001000", 
    34 => "1010000011000000110100011", 35 => "0011100000111111010010101", 
    36 => "1110110110011110100110100", 37 => "0101111111111111010000001", 
    38 => "0010010111011111110011110", 39 => "0010001111000001000101011", 
    40 => "0010101100011110100001000", 41 => "0100110001011111010011100", 
    42 => "0010000100011111001010000", 43 => "1010111000100001010110101", 
    44 => "1011110000111111010001000", 45 => "0010000010100000110011000", 
    46 => "1110110100011111111100010", 47 => "0010001110011111010100001", 
    48 => "0000100000011111011010001", 49 => "1011001110011110110101001", 
    50 => "1111110000011111101110010", 51 => "0011010110100001010100100", 
    52 => "0011011101100000001111111", 53 => "1100010000100001010100110", 
    54 => "1100100010000000000011001", 55 => "1100100111111110101010100", 
    56 => "0011111111000001100000101", 57 => "0101100110000000100011110", 
    58 => "1100100111111111111000000", 59 => "1101011000111111111000011", 
    60 => "1111110000111110100101101", 61 => "1110000000000000010101110", 
    62 => "0101111010111110101100010", 63 => "0101110010100000010101101", 
    64 => "0011011001111111001010010", 65 => "1010010001011110111001110", 
    66 => "1110011000111110110001110", 67 => "1010100011111110101011111", 
    68 => "0010001011111111101001010", 69 => "0010011010100001010001100", 
    70 => "1011110001111110101100011", 71 => "0100010111111111011110110", 
    72 => "1011011001000001000001110", 73 => "1110110101100000100010010", 
    74 => "1101000010000001011111011", 75 => "1100011000000000110000011", 
    76 => "0101101110000000000101110", 77 => "1010001111011111010000010", 
    78 => "0001000000100000100000111", 79 => "1011000110111111001000110", 
    80 => "1111111100011111100101100", 81 => "1110010000100000010111011", 
    82 => "0100111101111110110011111", 83 => "0000001111111111111011100", 
    84 => "0101010010111111001101010", 85 => "0001000110100000110100101", 
    86 => "1100000110111111001010100", 87 => "0001010111111110110010010", 
    88 => "0100010101111111111101001", 89 => "1111010000100000101100010", 
    90 => "1010010001100001001010110", 91 => "1011101100100000011111011", 
    92 => "0100110001011110111011011", 93 => "0010000101100001011101100", 
    94 => "1100000101111111100001100", 95 => "1110001001000001010001111", 
    96 => "0011111001111111001111101", 97 => "1010101110011111100010010", 
    98 => "0101011100011111100110100", 99 => "1011011011111111010100000", 
    100 => "1111001100000000011101001", 101 => "1100001111111111011111110", 
    102 => "1110111101011110110010000", 103 => "1111110100011111100011000", 
    104 => "0101001001111111100010000", 105 => "1010000011000001001110011", 
    106 => "0001111100100001001100001", 107 => "0101000101000000010001001", 
    108 => "0001010001000000110001111", 109 => "0011111010100000010101111", 
    110 => "0101011100000000101110101", 111 => "0001101001000001001110101", 
    112 => "1011110011111110101010011", 113 => "1100101111111110111010111", 
    114 => "0000001011000000001101111", 115 => "1100001111011111111000110", 
    116 => "0001100000000000111010010", 117 => "0100011100000000011010000", 
    118 => "0001001010000000110100011", 119 => "1101110001100000000110100", 
    120 => "0101011011100000101001011", 121 => "1011111011011110110011111", 
    122 => "0101010110011110101001101", 123 => "0100101100000000111101100", 
    124 => "1110011110011110110111110", 125 => "1101011010111111111000100", 
    126 => "1101001110111110111001010", 127 => "0010101101111111111000011", 
    128 => "1011001101000000001000111", 129 => "1100100110011111011101000", 
    130 => "1101010100000000101001110", 131 => "1111100001011111000010111", 
    132 => "1101000011111110111101011", 133 => "1100010110011110101101010", 
    134 => "1101101101100000111110101", 135 => "1110111011000001001111010", 
    136 => "0000111101000000101100001", 137 => "0000010101111111110111001", 
    138 => "0001110110100000001000000", 139 => "1101010010000000010101010", 
    140 => "0000010000100000110011000", 141 => "0001001100111110110100100", 
    142 => "0101110100011110101011101", 143 => "1110000101111110100111110", 
    144 => "1110110100100000101110011", 145 => "1011010111111110110001010", 
    146 => "0011110111111111100010101", 147 => "1110100111111111110110000", 
    148 => "0100111011000001010010011", 149 => "0001000010000000001001111", 
    150 => "0011010011100000110001010", 151 => "1110110001100000110010010", 
    152 => "1100011100011110100001110", 153 => "1011010100000000110100111", 
    154 => "0010011111011111110010000", 155 => "0010100000111111101110010", 
    156 => "0101011001011111011101111", 157 => "0010001011000001001010111", 
    158 => "1100000010111111011110110", 159 => "0001100110111111000010010", 
    160 => "0011101100100001000100010", 161 => "1111111011000001100000011", 
    162 => "0010101110011111011001110", 163 => "0100010001000001000110010", 
    164 => "0101111111000000110110100", 165 => "1011000110011111101110000", 
    166 => "0000110001111110101100111", 167 => "1010001011000000011101001", 
    168 => "0011010001100000110111110", 169 => "0000111111000000110111100", 
    170 => "0100011000111110110000010", 171 => "1011110011000001011101000", 
    172 => "0011010100000000000101011", 173 => "0000011101011111110011111", 
    174 => "0001011010000000000000110", 175 => "0010011011000000010000110", 
    176 => "1011011000100001011001011", 177 => "1111100111111110100010101", 
    178 => "1110101111000000101011110", 179 => "1010100011111111101101000", 
    180 => "0010001010011111001100110", 181 => "1101111110011111100110101", 
    182 => "1010010011111111001011010", 183 => "0000111111100000100101010", 
    184 => "0101001010011111101000001", 185 => "0010011011100000111010111", 
    186 => "1011000100011111001011001", 187 => "1111101110111111100000111", 
    188 => "1101001110011110100000010", 189 => "1111110000111111101001100", 
    190 => "1111011111011111010100100", 191 => "0010010100111110101000010", 
    192 => "0000110110111111101100000", 193 => "0100110010000001000010011", 
    194 => "1110101100000000111100110", 195 => "0011100110100000001100110", 
    196 => "1100001000011110111000111", 197 => "0011001011100001011101001", 
    198 => "1101101000100001010000110", 199 => "0100100100011110101000000", 
    200 => "1111000001011110101110100", 201 => "0000100100111110110001101", 
    202 => "1110001001111111110011110", 203 => "0000000100011111000100111", 
    204 => "1110110000011110111011110", 205 => "0100111101000000111111100", 
    206 => "1010001110111111111000000", 207 => "0000000001111111010111100", 
    208 => "1110000000000000100010111", 209 => "1010111000000000111011000", 
    210 => "1100100000100000000000000", 211 => "0100001111100000100110000", 
    212 => "0100110100100001011100101", 213 => "0011001100111111100000010", 
    214 => "0010100000000001000011010", 215 => "0101000100011111110010101", 
    216 => "1101011101111111010101101", 217 => "1101101001111111111101001", 
    218 => "1011001101100000110110011", 219 => "0101100101100000110010111", 
    220 => "1011000000000000001110111", 221 => "0101110011000000100101001", 
    222 => "1101101101000000100001000", 223 => "0101110100011111010100110", 
    224 => "0100100100000000100110101", 225 => "0011101000000000111001000", 
    226 => "1010000000100000110100110", 227 => "0010011011111110101110111", 
    228 => "1101110010111110101001010", 229 => "1111001111000000111001011", 
    230 => "1010111010000000001100011", 231 => "0010110111000000010001100", 
    232 => "1010111001011110111010100", 233 => "1111010111011110110001000", 
    234 => "1110110110011110111111011", 235 => "0100101001100000000000010", 
    236 => "1110100000011110110110111", 237 => "1011110000000000110011010", 
    238 => "1110001000100000000000000", 239 => "0000000000111111010111111", 
    240 => "1111101110111111101100011", 241 => "1100101101011111111111110", 
    242 => "1111111011011110101111010", 243 => "1111010010011111010000001", 
    244 => "0101100101011111101000100", 245 => "1110011001011110111011100", 
    246 => "1110101000011111011110010", 247 => "1111101100111111101100000", 
    248 => "0100101111111111100110011", 249 => "0000010001100001001011110", 
    250 => "0101010011111110101000001", 251 => "1110101001000000100110100", 
    252 => "1110110011100000010001010", 253 => "0010111011100000110100101", 
    254 => "1111100110111111001110010", 255 => "0011111101111111011111010", 
    256 => "0101010011011111101100100", 257 => "1110011011100000010001001", 
    258 => "1101001110111111000100111", 259 => "0101010011100000101100110", 
    260 => "0011110101100000101100111", 261 => "0100110110100001000100011", 
    262 => "0000000111100000010001111", 263 => "1111000100000000001001110", 
    264 => "1100011110000000111110100", 265 => "1100010000000000011010110", 
    266 => "1111010001000001011110100", 267 => "0100011010000000100100100", 
    268 => "1111110101000000001111010", 269 => "0011100011111111010100110", 
    270 => "0000100100011111111101101", 271 => "0010101011011110111000101", 
    272 => "0101110001100000100110010", 273 => "0010100110100000110110101", 
    274 => "1110000000100001001101111", 275 => "0011111111000000011000011", 
    276 => "1100100111011111111101010", 277 => "1110011010000001011111000", 
    278 => "1110101010011111101101011", 279 => "1110011010111111110110100", 
    280 => "1011010010000000111111111", 281 => "0010000011111110100111011", 
    282 => "0100110011100001010001101", 283 => "1111011100011110111100111", 
    284 => "0101010011000000011100001", 285 => "1010111010000000101011110", 
    286 => "0011001011111111110000001", 287 => "1100111000111111111001000", 
    288 => "1110000010000000011011000", 289 => "1100101000111110111011110", 
    290 => "0011000111100001001111011", 291 => "0001111111100000110010100", 
    292 => "0010011100011111010111100", 293 => "1100000110100000000000011", 
    294 => "1101010000100000001110110", 295 => "1111111000011111110110101", 
    296 => "1110010111000000011111101", 297 => "0011110101011110111000011", 
    298 => "0000001110011110100000010", 299 => "0011101010111111100001011", 
    300 => "0101000110100001001100100", 301 => "0001010110100000010101000", 
    302 => "0000011001000000000001000", 303 => "0011111000100001011100101", 
    304 => "1100001000111111111001111", 305 => "1101011011000000000010000", 
    306 => "1101111011011111110100010", 307 => "1100000011100001001101011", 
    308 => "1100011011100000110100010", 309 => "0010110100100000000011111", 
    310 => "1011101111111110111110010", 311 => "0000111000111111000011001", 
    312 => "0000110111011110101100001", 313 => "0100010011100000010010011", 
    314 => "1011010110100001001010101", 315 => "1101001011000000001011000", 
    316 => "0100110000111111100100001", 317 => "0101000111100001011001010", 
    318 => "0001101001011110111001011", 319 => "0001011101000001001110111", 
    320 => "0100011110000000110100101", 321 => "0011011011011110110110010", 
    322 => "0011100011011110101101001", 323 => "0000110110000000010010100", 
    324 => "1011010101111111001000110", 325 => "0010101110011110110010111", 
    326 => "1011111011111110100100111", 327 => "1110101001000000000100011", 
    328 => "0011000100000000000111111", 329 => "0101011011111111110100110", 
    330 => "0100101101111110101011001", 331 => "0100110011111111000000011", 
    332 => "0101101011000000010111111", 333 => "0010110111111111001100001", 
    334 => "0101100010000000100101001", 335 => "1011010101000000011110100", 
    336 => "0100011100111111110101100", 337 => "1011101111100000111010000", 
    338 => "1110111110111111011000110", 339 => "1010010000100000011001110", 
    340 => "1010010001011111100011101", 341 => "1011000111100000110011110", 
    342 => "0010110001000001010111001", 343 => "0001101110111110110000001", 
    344 => "0100011111100001001100101", 345 => "1100111111100000001110100", 
    346 => "1101100111111111011010100", 347 => "0100010101011110110011100", 
    348 => "0001000111100000011101011", 349 => "0101011110111111110111110", 
    350 => "0011001100000000010100001", 351 => "0011101000011110111011011", 
    352 => "1111101001000001011110011", 353 => "0011010001000000100001010", 
    354 => "1111000111100001010011101", 355 => "1100111001011111010100011", 
    356 => "0001000011111110111010100", 357 => "0100001001111111110101101", 
    358 => "1111101010111110101101111", 359 => "0100101001011111101110101", 
    360 => "0101110010111111101010011", 361 => "1001111111111111010000011", 
    362 => "0100001100011110100100000", 363 => "0100001110100000011000111", 
    364 => "1111111000000000001010110", 365 => "0001111110100000010100000", 
    366 => "1111000110111111101000000", 367 => "0100110100100000001000101", 
    368 => "0101000110111110111100000", 369 => "0010100100100000000111101", 
    370 => "0001110000011111001110000", 371 => "0101000110100000010000000", 
    372 => "1100110101000000110111100", 373 => "0011010001100000101010010", 
    374 => "0001011001011111000010110", 375 => "0011110000000000110000110", 
    376 => "0001010000011111101101001", 377 => "1110011000011111101100000", 
    378 => "1111000101100000110100100", 379 => "1011101010100001011101101", 
    380 => "1110110001000001011111000", 381 => "0001000001111110011111011", 
    382 => "1111101011111111111101011", 383 => "0011010010000000111010011", 
    384 => "1101000000100000011001110", 385 => "0011111110111111001000010", 
    386 => "0001101010011111110011110", 387 => "1110011110000000010110100", 
    388 => "0001111110100000101000001", 389 => "1011010111000000000001101", 
    390 => "0100010001000000011001001", 391 => "1101100010011111011001101", 
    392 => "1101011011000001000100110", 393 => "1110000010100000001001111", 
    394 => "1101111100111110101101100", 395 => "0000011010111111011001000", 
    396 => "1100100101100000001100001", 397 => "1111110110000000011100100", 
    398 => "0011011100111111001111000", 399 => "1110101110000001010101111", 
    400 => "0101000001100000111000111", 401 => "0010000100011111101001101", 
    402 => "1011100000011111101001010", 403 => "1101011111000000101001000", 
    404 => "1010001001111110100010001", 405 => "0001100000000001010110011", 
    406 => "1010011101011111011001100", 407 => "0001101110100001000101100", 
    408 => "1111101110100000110010001", 409 => "1111000111111111010000011", 
    410 => "1110000010011111110010010", 411 => "0100101010011110101100000", 
    412 => "1010110110000000000000011", 413 => "1010101111111111010100100", 
    414 => "0010110011011111010000010", 415 => "1111011001000001011110110", 
    416 => "1110100101000000100010000", 417 => "1100001101011111100000110", 
    418 => "1011010100011110110111100", 419 => "0101110101000000110100000" );


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

entity dense_large_rf_gt_ni_2_w17_V is
    generic (
        DataWidth : INTEGER := 25;
        AddressRange : INTEGER := 420;
        AddressWidth : INTEGER := 9);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of dense_large_rf_gt_ni_2_w17_V is
    component dense_large_rf_gt_ni_2_w17_V_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    dense_large_rf_gt_ni_2_w17_V_rom_U :  component dense_large_rf_gt_ni_2_w17_V_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


