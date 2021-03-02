// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module pooling2d_cl_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        data_V_address0,
        data_V_ce0,
        data_V_q0,
        res_V_address0,
        res_V_ce0,
        res_V_we0,
        res_V_d0
);

parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_state2 = 11'd2;
parameter    ap_ST_fsm_state3 = 11'd4;
parameter    ap_ST_fsm_state4 = 11'd8;
parameter    ap_ST_fsm_state5 = 11'd16;
parameter    ap_ST_fsm_state6 = 11'd32;
parameter    ap_ST_fsm_state7 = 11'd64;
parameter    ap_ST_fsm_state8 = 11'd128;
parameter    ap_ST_fsm_state9 = 11'd256;
parameter    ap_ST_fsm_state10 = 11'd512;
parameter    ap_ST_fsm_state11 = 11'd1024;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [11:0] data_V_address0;
output   data_V_ce0;
input  [10:0] data_V_q0;
output  [9:0] res_V_address0;
output   res_V_ce0;
output   res_V_we0;
output  [11:0] res_V_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg data_V_ce0;
reg res_V_ce0;
reg res_V_we0;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
wire   [8:0] ff_cast2_cast_fu_214_p1;
reg   [8:0] ff_cast2_cast_reg_479;
wire    ap_CS_fsm_state2;
wire   [4:0] ff_1_fu_224_p2;
reg   [4:0] ff_1_reg_487;
wire   [10:0] tmp_2_fu_276_p3;
reg   [10:0] tmp_2_reg_495;
wire    ap_CS_fsm_state3;
wire   [0:0] tmp_fu_230_p2;
wire   [3:0] ii_3_fu_290_p2;
wire    ap_CS_fsm_state4;
wire   [0:0] tmp_3_fu_284_p2;
wire   [1:0] kk_1_fu_306_p2;
reg   [1:0] kk_1_reg_511;
wire    ap_CS_fsm_state5;
wire   [0:0] tmp_9_fu_322_p2;
reg   [0:0] tmp_9_reg_516;
wire   [0:0] tmp_4_fu_300_p2;
wire   [1:0] tmp_31_fu_328_p2;
reg   [1:0] tmp_31_reg_520;
wire   [11:0] tmp_10_fu_334_p2;
reg   [11:0] tmp_10_reg_525;
wire   [1:0] ll_1_fu_350_p2;
reg   [1:0] ll_1_reg_533;
wire    ap_CS_fsm_state6;
wire   [0:0] tmp_13_fu_362_p2;
reg   [0:0] tmp_13_reg_538;
wire   [0:0] tmp_11_fu_344_p2;
wire   [1:0] grp_fu_209_p2;
reg   [1:0] tmp_16_reg_542;
wire   [11:0] tmp_19_fu_389_p2;
reg   [11:0] tmp_19_reg_547;
wire    ap_CS_fsm_state7;
wire   [63:0] tmp_7_fu_433_p1;
reg   [63:0] tmp_7_reg_557;
wire    ap_CS_fsm_state9;
wire   [11:0] pool_V_q0;
wire    ap_CS_fsm_state10;
wire   [0:0] exitcond_i_i_fu_437_p2;
wire   [2:0] i_fu_448_p2;
reg   [2:0] i_reg_575;
wire   [3:0] jj_1_fu_454_p2;
wire   [11:0] y_V_3_fu_466_p3;
wire    ap_CS_fsm_state11;
reg   [1:0] pool_V_address0;
reg    pool_V_ce0;
reg    pool_V_we0;
reg   [11:0] pool_V_d0;
reg   [4:0] ff_reg_129;
reg   [3:0] ii_reg_141;
wire   [0:0] exitcond_fu_218_p2;
reg   [3:0] jj_reg_153;
reg   [1:0] kk_reg_165;
reg   [1:0] ll_reg_176;
wire    ap_CS_fsm_state8;
reg   [11:0] agg_result_V_i_i_reg_187;
reg   [2:0] i_i_i_reg_198;
wire   [63:0] tmp_15_fu_394_p1;
wire   [63:0] tmp_20_fu_399_p1;
wire   [63:0] tmp_17_fu_403_p1;
wire   [63:0] tmp_i_i_fu_443_p1;
wire   [11:0] extLd_fu_407_p1;
wire   [9:0] p_shl_fu_236_p3;
wire   [7:0] p_shl5_fu_248_p3;
wire   [10:0] p_shl_cast_fu_244_p1;
wire   [10:0] p_shl5_cast_fu_256_p1;
wire   [10:0] tmp_s_fu_260_p2;
wire   [5:0] tmp_1_fu_266_p4;
wire   [3:0] kk_cast8_fu_296_p1;
wire   [3:0] tmp_8_fu_312_p2;
wire   [3:0] tmp_10_fu_334_p1;
wire   [3:0] ll_cast7_fu_340_p1;
wire   [3:0] tmp_12_fu_356_p2;
wire   [7:0] tmp_18_fu_368_p3;
wire   [8:0] tmp_66_cast_cast_fu_376_p1;
wire   [8:0] tmp1_fu_380_p2;
wire   [11:0] tmp1_cast_fu_385_p1;
wire   [6:0] tmp_5_fu_412_p3;
wire   [10:0] tmp_51_cast_fu_420_p1;
wire   [10:0] tmp_6_fu_424_p2;
wire  signed [31:0] tmp_53_cast_fu_429_p1;
wire   [0:0] tmp_i_i_31_fu_460_p2;
reg   [10:0] ap_NS_fsm;
wire   [11:0] tmp_10_fu_334_p10;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 11'd1;
end

pooling2d_cl_pool_V #(
    .DataWidth( 12 ),
    .AddressRange( 4 ),
    .AddressWidth( 2 ))
pool_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(pool_V_address0),
    .ce0(pool_V_ce0),
    .we0(pool_V_we0),
    .d0(pool_V_d0),
    .q0(pool_V_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((exitcond_fu_218_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        agg_result_V_i_i_reg_187 <= y_V_3_fu_466_p3;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        agg_result_V_i_i_reg_187 <= pool_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_fu_230_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        ff_reg_129 <= ff_1_reg_487;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ff_reg_129 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        i_i_i_reg_198 <= i_reg_575;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        i_i_i_reg_198 <= 3'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_218_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ii_reg_141 <= 4'd0;
    end else if (((tmp_3_fu_284_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        ii_reg_141 <= ii_3_fu_290_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_fu_230_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        jj_reg_153 <= 4'd0;
    end else if (((exitcond_i_i_fu_437_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        jj_reg_153 <= jj_1_fu_454_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_fu_284_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        kk_reg_165 <= 2'd0;
    end else if (((tmp_11_fu_344_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        kk_reg_165 <= kk_1_reg_511;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_4_fu_300_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        ll_reg_176 <= 2'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        ll_reg_176 <= ll_1_reg_533;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ff_1_reg_487 <= ff_1_fu_224_p2;
        ff_cast2_cast_reg_479[4 : 0] <= ff_cast2_cast_fu_214_p1[4 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_i_i_fu_437_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        i_reg_575 <= i_fu_448_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        kk_1_reg_511 <= kk_1_fu_306_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ll_1_reg_533 <= ll_1_fu_350_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_4_fu_300_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        tmp_10_reg_525 <= tmp_10_fu_334_p2;
        tmp_31_reg_520[1] <= tmp_31_fu_328_p2[1];
        tmp_9_reg_516 <= tmp_9_fu_322_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_9_reg_516 == 1'd0) & (tmp_11_fu_344_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        tmp_13_reg_538 <= tmp_13_fu_362_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_9_reg_516 == 1'd0) & (tmp_11_fu_344_p2 == 1'd0) & (tmp_13_fu_362_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        tmp_16_reg_542 <= grp_fu_209_p2;
        tmp_19_reg_547 <= tmp_19_fu_389_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_fu_230_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp_2_reg_495 <= tmp_2_fu_276_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp_7_reg_557[31 : 0] <= tmp_7_fu_433_p1[31 : 0];
    end
end

always @ (*) begin
    if (((exitcond_fu_218_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_fu_218_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        data_V_ce0 = 1'b1;
    end else begin
        data_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        pool_V_address0 = tmp_i_i_fu_443_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        pool_V_address0 = tmp_17_fu_403_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        pool_V_address0 = tmp_15_fu_394_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        pool_V_address0 = 64'd0;
    end else begin
        pool_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6))) begin
        pool_V_ce0 = 1'b1;
    end else begin
        pool_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        pool_V_d0 = extLd_fu_407_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        pool_V_d0 = 12'd2048;
    end else begin
        pool_V_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((tmp_9_reg_516 == 1'd0) & (tmp_13_reg_538 == 1'd0) & (1'b1 == ap_CS_fsm_state8)) | ((1'b1 == ap_CS_fsm_state6) & (((tmp_11_fu_344_p2 == 1'd0) & (tmp_9_reg_516 == 1'd1)) | ((tmp_11_fu_344_p2 == 1'd0) & (tmp_13_fu_362_p2 == 1'd1)))))) begin
        pool_V_we0 = 1'b1;
    end else begin
        pool_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        res_V_ce0 = 1'b1;
    end else begin
        res_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_i_i_fu_437_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        res_V_we0 = 1'b1;
    end else begin
        res_V_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((exitcond_fu_218_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((tmp_fu_230_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((tmp_3_fu_284_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((tmp_4_fu_300_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((tmp_11_fu_344_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else if (((1'b1 == ap_CS_fsm_state6) & (((tmp_11_fu_344_p2 == 1'd0) & (tmp_9_reg_516 == 1'd1)) | ((tmp_11_fu_344_p2 == 1'd0) & (tmp_13_fu_362_p2 == 1'd1))))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((exitcond_i_i_fu_437_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign data_V_address0 = tmp_20_fu_399_p1;

assign exitcond_fu_218_p2 = ((ff_reg_129 == 5'd16) ? 1'b1 : 1'b0);

assign exitcond_i_i_fu_437_p2 = ((i_i_i_reg_198 == 3'd4) ? 1'b1 : 1'b0);

assign extLd_fu_407_p1 = data_V_q0;

assign ff_1_fu_224_p2 = (ff_reg_129 + 5'd1);

assign ff_cast2_cast_fu_214_p1 = ff_reg_129;

assign grp_fu_209_p2 = (tmp_31_reg_520 + ll_reg_176);

assign i_fu_448_p2 = (i_i_i_reg_198 + 3'd1);

assign ii_3_fu_290_p2 = (ii_reg_141 + 4'd2);

assign jj_1_fu_454_p2 = (jj_reg_153 + 4'd2);

assign kk_1_fu_306_p2 = (kk_reg_165 + 2'd1);

assign kk_cast8_fu_296_p1 = kk_reg_165;

assign ll_1_fu_350_p2 = (ll_reg_176 + 2'd1);

assign ll_cast7_fu_340_p1 = ll_reg_176;

assign p_shl5_cast_fu_256_p1 = p_shl5_fu_248_p3;

assign p_shl5_fu_248_p3 = {{ii_reg_141}, {4'd0}};

assign p_shl_cast_fu_244_p1 = p_shl_fu_236_p3;

assign p_shl_fu_236_p3 = {{ii_reg_141}, {6'd0}};

assign res_V_address0 = tmp_7_reg_557;

assign res_V_d0 = agg_result_V_i_i_reg_187;

assign tmp1_cast_fu_385_p1 = tmp1_fu_380_p2;

assign tmp1_fu_380_p2 = (ff_cast2_cast_reg_479 + tmp_66_cast_cast_fu_376_p1);

assign tmp_10_fu_334_p1 = tmp_10_fu_334_p10;

assign tmp_10_fu_334_p10 = tmp_8_fu_312_p2;

assign tmp_10_fu_334_p2 = (12'd208 * tmp_10_fu_334_p1);

assign tmp_11_fu_344_p2 = ((ll_reg_176 == 2'd2) ? 1'b1 : 1'b0);

assign tmp_12_fu_356_p2 = (jj_reg_153 + ll_cast7_fu_340_p1);

assign tmp_13_fu_362_p2 = ((tmp_12_fu_356_p2 > 4'd11) ? 1'b1 : 1'b0);

assign tmp_15_fu_394_p1 = grp_fu_209_p2;

assign tmp_17_fu_403_p1 = tmp_16_reg_542;

assign tmp_18_fu_368_p3 = {{tmp_12_fu_356_p2}, {4'd0}};

assign tmp_19_fu_389_p2 = (tmp_10_reg_525 + tmp1_cast_fu_385_p1);

assign tmp_1_fu_266_p4 = {{tmp_s_fu_260_p2[10:5]}};

assign tmp_20_fu_399_p1 = tmp_19_reg_547;

assign tmp_2_fu_276_p3 = {{tmp_1_fu_266_p4}, {ff_reg_129}};

assign tmp_31_fu_328_p2 = kk_reg_165 << 2'd1;

assign tmp_3_fu_284_p2 = ((jj_reg_153 < 4'd12) ? 1'b1 : 1'b0);

assign tmp_4_fu_300_p2 = ((kk_reg_165 == 2'd2) ? 1'b1 : 1'b0);

assign tmp_51_cast_fu_420_p1 = tmp_5_fu_412_p3;

assign tmp_53_cast_fu_429_p1 = $signed(tmp_6_fu_424_p2);

assign tmp_5_fu_412_p3 = {{jj_reg_153}, {3'd0}};

assign tmp_66_cast_cast_fu_376_p1 = tmp_18_fu_368_p3;

assign tmp_6_fu_424_p2 = (tmp_51_cast_fu_420_p1 + tmp_2_reg_495);

assign tmp_7_fu_433_p1 = $unsigned(tmp_53_cast_fu_429_p1);

assign tmp_8_fu_312_p2 = (ii_reg_141 + kk_cast8_fu_296_p1);

assign tmp_9_fu_322_p2 = ((tmp_8_fu_312_p2 > 4'd11) ? 1'b1 : 1'b0);

assign tmp_fu_230_p2 = ((ii_reg_141 < 4'd12) ? 1'b1 : 1'b0);

assign tmp_i_i_31_fu_460_p2 = (($signed(pool_V_q0) > $signed(agg_result_V_i_i_reg_187)) ? 1'b1 : 1'b0);

assign tmp_i_i_fu_443_p1 = i_i_i_reg_198;

assign tmp_s_fu_260_p2 = (p_shl_cast_fu_244_p1 - p_shl5_cast_fu_256_p1);

assign y_V_3_fu_466_p3 = ((tmp_i_i_31_fu_460_p2[0:0] === 1'b1) ? pool_V_q0 : agg_result_V_i_i_reg_187);

always @ (posedge ap_clk) begin
    ff_cast2_cast_reg_479[8:5] <= 4'b0000;
    tmp_31_reg_520[0] <= 1'b0;
    tmp_7_reg_557[63:32] <= 32'b00000000000000000000000000000000;
end

endmodule //pooling2d_cl_1
