// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module conv_2d_large_cl (
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

parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [10:0] data_V_address0;
output   data_V_ce0;
input  [13:0] data_V_q0;
output  [11:0] res_V_address0;
output   res_V_ce0;
output   res_V_we0;
output  [13:0] res_V_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg res_V_ce0;
reg res_V_we0;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [11:0] next_mul_fu_153_p2;
reg   [11:0] next_mul_reg_235;
wire    ap_CS_fsm_state2;
wire   [3:0] i_8_fu_165_p2;
reg   [3:0] i_8_reg_243;
wire   [3:0] j_1_fu_177_p2;
reg   [3:0] j_1_reg_251;
wire    ap_CS_fsm_state3;
wire   [8:0] tmp_128_cast_cast_fu_191_p1;
reg   [8:0] tmp_128_cast_cast_reg_256;
wire    ap_CS_fsm_state6;
wire    grp_dense_large_rf_gt_ni_fu_132_ap_ready;
wire    grp_dense_large_rf_gt_ni_fu_132_ap_done;
wire   [4:0] k_1_fu_205_p2;
reg   [4:0] k_1_reg_264;
wire    ap_CS_fsm_state7;
wire   [11:0] tmp_84_fu_220_p2;
reg   [11:0] tmp_84_reg_269;
wire   [0:0] tmp_83_fu_199_p2;
wire   [13:0] res_V_assign_q0;
reg   [13:0] res_V_assign_load_reg_279;
wire    ap_CS_fsm_state8;
reg   [4:0] data_col_V_address0;
reg    data_col_V_ce0;
reg    data_col_V_we0;
wire   [13:0] data_col_V_q0;
reg   [3:0] res_V_assign_address0;
reg    res_V_assign_ce0;
reg    res_V_assign_we0;
wire    grp_dense_large_rf_gt_ni_fu_132_ap_start;
wire    grp_dense_large_rf_gt_ni_fu_132_ap_idle;
wire   [4:0] grp_dense_large_rf_gt_ni_fu_132_data_V_address0;
wire    grp_dense_large_rf_gt_ni_fu_132_data_V_ce0;
wire   [3:0] grp_dense_large_rf_gt_ni_fu_132_res_V_address0;
wire    grp_dense_large_rf_gt_ni_fu_132_res_V_ce0;
wire    grp_dense_large_rf_gt_ni_fu_132_res_V_we0;
wire   [13:0] grp_dense_large_rf_gt_ni_fu_132_res_V_d0;
wire    grp_im2col_2d_cl_fu_142_ap_start;
wire    grp_im2col_2d_cl_fu_142_ap_done;
wire    grp_im2col_2d_cl_fu_142_ap_idle;
wire    grp_im2col_2d_cl_fu_142_ap_ready;
wire   [10:0] grp_im2col_2d_cl_fu_142_data_V_address0;
wire    grp_im2col_2d_cl_fu_142_data_V_ce0;
wire   [4:0] grp_im2col_2d_cl_fu_142_data_col_V_address0;
wire    grp_im2col_2d_cl_fu_142_data_col_V_ce0;
wire    grp_im2col_2d_cl_fu_142_data_col_V_we0;
wire   [13:0] grp_im2col_2d_cl_fu_142_data_col_V_d0;
reg   [3:0] i_reg_85;
wire   [0:0] tmp_s_fu_171_p2;
reg    ap_block_state1;
reg   [11:0] phi_mul_reg_97;
reg   [3:0] j_reg_109;
wire   [0:0] tmp_fu_159_p2;
reg   [4:0] k_reg_121;
wire    ap_CS_fsm_state9;
reg    grp_dense_large_rf_gt_ni_fu_132_ap_start_reg;
wire    ap_CS_fsm_state5;
reg    grp_im2col_2d_cl_fu_142_ap_start_reg;
wire    ap_CS_fsm_state4;
wire   [63:0] tmp_86_fu_226_p1;
wire   [63:0] tmp_85_fu_231_p1;
wire   [7:0] tmp_82_fu_183_p3;
wire   [8:0] k_cast4_cast_fu_195_p1;
wire   [8:0] tmp1_fu_211_p2;
wire   [11:0] tmp1_cast_fu_216_p1;
reg   [8:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 9'd1;
#0 grp_dense_large_rf_gt_ni_fu_132_ap_start_reg = 1'b0;
#0 grp_im2col_2d_cl_fu_142_ap_start_reg = 1'b0;
end

conv_2d_large_cl_data_col_V #(
    .DataWidth( 14 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
data_col_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(data_col_V_address0),
    .ce0(data_col_V_ce0),
    .we0(data_col_V_we0),
    .d0(grp_im2col_2d_cl_fu_142_data_col_V_d0),
    .q0(data_col_V_q0)
);

dense_large_rf_gt_ni_acc_V #(
    .DataWidth( 14 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
res_V_assign_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(res_V_assign_address0),
    .ce0(res_V_assign_ce0),
    .we0(res_V_assign_we0),
    .d0(grp_dense_large_rf_gt_ni_fu_132_res_V_d0),
    .q0(res_V_assign_q0)
);

dense_large_rf_gt_ni grp_dense_large_rf_gt_ni_fu_132(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_dense_large_rf_gt_ni_fu_132_ap_start),
    .ap_done(grp_dense_large_rf_gt_ni_fu_132_ap_done),
    .ap_idle(grp_dense_large_rf_gt_ni_fu_132_ap_idle),
    .ap_ready(grp_dense_large_rf_gt_ni_fu_132_ap_ready),
    .data_V_address0(grp_dense_large_rf_gt_ni_fu_132_data_V_address0),
    .data_V_ce0(grp_dense_large_rf_gt_ni_fu_132_data_V_ce0),
    .data_V_q0(data_col_V_q0),
    .res_V_address0(grp_dense_large_rf_gt_ni_fu_132_res_V_address0),
    .res_V_ce0(grp_dense_large_rf_gt_ni_fu_132_res_V_ce0),
    .res_V_we0(grp_dense_large_rf_gt_ni_fu_132_res_V_we0),
    .res_V_d0(grp_dense_large_rf_gt_ni_fu_132_res_V_d0)
);

im2col_2d_cl grp_im2col_2d_cl_fu_142(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_im2col_2d_cl_fu_142_ap_start),
    .ap_done(grp_im2col_2d_cl_fu_142_ap_done),
    .ap_idle(grp_im2col_2d_cl_fu_142_ap_idle),
    .ap_ready(grp_im2col_2d_cl_fu_142_ap_ready),
    .data_V_address0(grp_im2col_2d_cl_fu_142_data_V_address0),
    .data_V_ce0(grp_im2col_2d_cl_fu_142_data_V_ce0),
    .data_V_q0(data_V_q0),
    .data_col_V_address0(grp_im2col_2d_cl_fu_142_data_col_V_address0),
    .data_col_V_ce0(grp_im2col_2d_cl_fu_142_data_col_V_ce0),
    .data_col_V_we0(grp_im2col_2d_cl_fu_142_data_col_V_we0),
    .data_col_V_d0(grp_im2col_2d_cl_fu_142_data_col_V_d0),
    .row(i_reg_85),
    .col(j_reg_109)
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
        end else if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_159_p2 == 1'd1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dense_large_rf_gt_ni_fu_132_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_dense_large_rf_gt_ni_fu_132_ap_start_reg <= 1'b1;
        end else if ((grp_dense_large_rf_gt_ni_fu_132_ap_ready == 1'b1)) begin
            grp_dense_large_rf_gt_ni_fu_132_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_im2col_2d_cl_fu_142_ap_start_reg <= 1'b0;
    end else begin
        if (((tmp_s_fu_171_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
            grp_im2col_2d_cl_fu_142_ap_start_reg <= 1'b1;
        end else if ((grp_im2col_2d_cl_fu_142_ap_ready == 1'b1)) begin
            grp_im2col_2d_cl_fu_142_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_85 <= 4'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (tmp_s_fu_171_p2 == 1'd1))) begin
        i_reg_85 <= i_8_reg_243;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_83_fu_199_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        j_reg_109 <= j_1_reg_251;
    end else if (((tmp_fu_159_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_reg_109 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        k_reg_121 <= k_1_reg_264;
    end else if (((grp_dense_large_rf_gt_ni_fu_132_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        k_reg_121 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_reg_97 <= 12'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (tmp_s_fu_171_p2 == 1'd1))) begin
        phi_mul_reg_97 <= next_mul_reg_235;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_8_reg_243 <= i_8_fu_165_p2;
        next_mul_reg_235 <= next_mul_fu_153_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        j_1_reg_251 <= j_1_fu_177_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        k_1_reg_264 <= k_1_fu_205_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        res_V_assign_load_reg_279 <= res_V_assign_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_dense_large_rf_gt_ni_fu_132_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        tmp_128_cast_cast_reg_256[7 : 4] <= tmp_128_cast_cast_fu_191_p1[7 : 4];
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_83_fu_199_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        tmp_84_reg_269 <= tmp_84_fu_220_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_159_p2 == 1'd1))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_159_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        data_col_V_address0 = grp_im2col_2d_cl_fu_142_data_col_V_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        data_col_V_address0 = grp_dense_large_rf_gt_ni_fu_132_data_V_address0;
    end else begin
        data_col_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        data_col_V_ce0 = grp_im2col_2d_cl_fu_142_data_col_V_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        data_col_V_ce0 = grp_dense_large_rf_gt_ni_fu_132_data_V_ce0;
    end else begin
        data_col_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        data_col_V_we0 = grp_im2col_2d_cl_fu_142_data_col_V_we0;
    end else begin
        data_col_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        res_V_assign_address0 = tmp_86_fu_226_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        res_V_assign_address0 = grp_dense_large_rf_gt_ni_fu_132_res_V_address0;
    end else begin
        res_V_assign_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        res_V_assign_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        res_V_assign_ce0 = grp_dense_large_rf_gt_ni_fu_132_res_V_ce0;
    end else begin
        res_V_assign_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        res_V_assign_we0 = grp_dense_large_rf_gt_ni_fu_132_res_V_we0;
    end else begin
        res_V_assign_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        res_V_ce0 = 1'b1;
    end else begin
        res_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
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
            if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_159_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (tmp_s_fu_171_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_im2col_2d_cl_fu_142_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_dense_large_rf_gt_ni_fu_132_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((tmp_83_fu_199_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

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

assign data_V_address0 = grp_im2col_2d_cl_fu_142_data_V_address0;

assign data_V_ce0 = grp_im2col_2d_cl_fu_142_data_V_ce0;

assign grp_dense_large_rf_gt_ni_fu_132_ap_start = grp_dense_large_rf_gt_ni_fu_132_ap_start_reg;

assign grp_im2col_2d_cl_fu_142_ap_start = grp_im2col_2d_cl_fu_142_ap_start_reg;

assign i_8_fu_165_p2 = (i_reg_85 + 4'd1);

assign j_1_fu_177_p2 = (j_reg_109 + 4'd1);

assign k_1_fu_205_p2 = (k_reg_121 + 5'd1);

assign k_cast4_cast_fu_195_p1 = k_reg_121;

assign next_mul_fu_153_p2 = (phi_mul_reg_97 + 12'd208);

assign res_V_address0 = tmp_85_fu_231_p1;

assign res_V_d0 = res_V_assign_load_reg_279;

assign tmp1_cast_fu_216_p1 = tmp1_fu_211_p2;

assign tmp1_fu_211_p2 = (tmp_128_cast_cast_reg_256 + k_cast4_cast_fu_195_p1);

assign tmp_128_cast_cast_fu_191_p1 = tmp_82_fu_183_p3;

assign tmp_82_fu_183_p3 = {{j_reg_109}, {4'd0}};

assign tmp_83_fu_199_p2 = ((k_reg_121 == 5'd16) ? 1'b1 : 1'b0);

assign tmp_84_fu_220_p2 = (tmp1_cast_fu_216_p1 + phi_mul_reg_97);

assign tmp_85_fu_231_p1 = tmp_84_reg_269;

assign tmp_86_fu_226_p1 = k_reg_121;

assign tmp_fu_159_p2 = ((i_reg_85 == 4'd13) ? 1'b1 : 1'b0);

assign tmp_s_fu_171_p2 = ((j_reg_109 == 4'd13) ? 1'b1 : 1'b0);

always @ (posedge ap_clk) begin
    tmp_128_cast_cast_reg_256[3:0] <= 4'b0000;
    tmp_128_cast_cast_reg_256[8] <= 1'b0;
end

endmodule //conv_2d_large_cl