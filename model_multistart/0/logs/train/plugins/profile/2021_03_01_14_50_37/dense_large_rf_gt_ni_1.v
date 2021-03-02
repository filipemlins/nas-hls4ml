// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dense_large_rf_gt_ni_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
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

parameter    ap_ST_fsm_state1 = 12'd1;
parameter    ap_ST_fsm_state2 = 12'd2;
parameter    ap_ST_fsm_state3 = 12'd4;
parameter    ap_ST_fsm_state4 = 12'd8;
parameter    ap_ST_fsm_state5 = 12'd16;
parameter    ap_ST_fsm_state6 = 12'd32;
parameter    ap_ST_fsm_state7 = 12'd64;
parameter    ap_ST_fsm_state8 = 12'd128;
parameter    ap_ST_fsm_state9 = 12'd256;
parameter    ap_ST_fsm_state10 = 12'd512;
parameter    ap_ST_fsm_state11 = 12'd1024;
parameter    ap_ST_fsm_state12 = 12'd2048;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] data_V_address0;
output   data_V_ce0;
input  [12:0] data_V_q0;
output  [2:0] res_V_address0;
output   res_V_ce0;
output   res_V_we0;
output  [12:0] res_V_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg data_V_ce0;
reg res_V_ce0;
reg res_V_we0;

(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [5:0] outidx7_address0;
reg    outidx7_ce0;
wire   [1:0] outidx7_q0;
wire   [5:0] w3_V_address0;
reg    w3_V_ce0;
wire   [14:0] w3_V_q0;
wire   [3:0] iacc_2_fu_270_p2;
wire    ap_CS_fsm_state2;
wire   [7:0] w_index_cast_fu_281_p1;
reg   [7:0] w_index_cast_reg_517;
wire    ap_CS_fsm_state3;
wire   [6:0] ir_fu_291_p2;
reg   [6:0] ir_reg_525;
wire   [0:0] exitcond_fu_285_p2;
wire   [3:0] out_index_cast_fu_307_p1;
wire    ap_CS_fsm_state4;
reg   [12:0] data_V_load_reg_545;
wire   [0:0] tmp_113_fu_311_p3;
reg   [0:0] tmp_113_reg_550;
wire    ap_CS_fsm_state5;
wire   [1:0] im_2_fu_319_p2;
reg   [1:0] im_2_reg_554;
wire   [12:0] tmp_117_fu_368_p1;
reg   [12:0] tmp_117_reg_564;
wire    ap_CS_fsm_state6;
wire   [12:0] grp_product_fu_258_ap_return;
reg  signed [12:0] p_Val2_23_reg_569;
wire    ap_CS_fsm_state8;
wire    grp_product_fu_258_ap_ready;
wire    grp_product_fu_258_ap_done;
reg   [2:0] acc_V_addr_4_reg_575;
wire   [0:0] overflow_fu_418_p2;
reg   [0:0] overflow_reg_580;
wire    ap_CS_fsm_state9;
wire   [0:0] underflow_fu_430_p2;
reg   [0:0] underflow_reg_584;
wire   [0:0] brmerge7_fu_436_p2;
reg   [0:0] brmerge7_reg_588;
wire   [7:0] w_index_2_fu_442_p2;
wire    ap_CS_fsm_state10;
wire   [3:0] out_index_2_fu_456_p2;
wire   [0:0] tmp_120_fu_448_p3;
wire   [31:0] p_s_fu_484_p3;
wire   [3:0] ires_2_fu_498_p2;
reg   [3:0] ires_2_reg_613;
wire    ap_CS_fsm_state11;
wire   [63:0] tmp_100_fu_504_p1;
reg   [63:0] tmp_100_reg_618;
wire   [0:0] tmp_99_fu_492_p2;
reg   [2:0] acc_V_address0;
reg    acc_V_ce0;
reg    acc_V_we0;
reg   [12:0] acc_V_d0;
wire   [12:0] acc_V_q0;
wire    grp_product_fu_258_ap_start;
wire    grp_product_fu_258_ap_idle;
reg   [3:0] iacc_reg_182;
wire   [0:0] exitcond5_fu_264_p2;
reg   [6:0] w_index_reg_193;
reg  signed [31:0] in_index_reg_204;
reg   [1:0] im_reg_216;
reg   [3:0] out_index3_reg_227;
reg   [7:0] w_index3_reg_237;
reg   [3:0] ires_reg_247;
wire    ap_CS_fsm_state12;
reg    grp_product_fu_258_ap_start_reg;
wire    ap_CS_fsm_state7;
wire   [63:0] tmp_fu_276_p1;
wire   [63:0] tmp_s_fu_297_p1;
wire  signed [63:0] tmp_98_fu_302_p1;
wire   [63:0] tmp_43_fu_329_p1;
wire   [63:0] tmp_101_fu_372_p1;
wire   [12:0] p_Val2_25_fu_398_p2;
wire   [5:0] tmp_114_fu_325_p1;
wire   [1:0] tmp_5_fu_338_p4;
wire   [1:0] tmp_45_fu_352_p1;
wire   [4:0] tmp_45_fu_352_p2;
wire  signed [25:0] w3_V_load_cast_fu_334_p1;
wire   [25:0] tmp_115_fu_358_p1;
wire   [25:0] tmp_116_fu_362_p2;
wire  signed [12:0] lhs_V_fu_377_p0;
wire  signed [13:0] lhs_V_fu_377_p1;
wire  signed [13:0] rhs_V_fu_381_p1;
wire   [13:0] ret_V_fu_384_p2;
wire  signed [12:0] p_Val2_25_fu_398_p1;
wire   [0:0] p_Result_s_fu_390_p3;
wire   [0:0] p_Result_26_fu_404_p3;
wire   [0:0] tmp_13_fu_412_p2;
wire   [0:0] tmp_102_fu_424_p2;
wire   [31:0] in_index_2_fu_462_p2;
wire   [27:0] tmp_121_fu_468_p4;
wire   [0:0] icmp_fu_478_p2;
reg   [11:0] ap_NS_fsm;
wire   [4:0] tmp_45_fu_352_p10;

// power-on initialization
initial begin
#0 ap_CS_fsm = 12'd1;
#0 grp_product_fu_258_ap_start_reg = 1'b0;
end

dense_large_rf_gt_ni_1_outidx7 #(
    .DataWidth( 2 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
outidx7_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(outidx7_address0),
    .ce0(outidx7_ce0),
    .q0(outidx7_q0)
);

dense_large_rf_gt_ni_1_w3_V #(
    .DataWidth( 15 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
w3_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(w3_V_address0),
    .ce0(w3_V_ce0),
    .q0(w3_V_q0)
);

dense_large_rf_gt_ni_1_acc_V #(
    .DataWidth( 13 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
acc_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(acc_V_address0),
    .ce0(acc_V_ce0),
    .we0(acc_V_we0),
    .d0(acc_V_d0),
    .q0(acc_V_q0)
);

product grp_product_fu_258(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_product_fu_258_ap_start),
    .ap_done(grp_product_fu_258_ap_done),
    .ap_idle(grp_product_fu_258_ap_idle),
    .ap_ready(grp_product_fu_258_ap_ready),
    .a_V(data_V_load_reg_545),
    .w_V(tmp_117_reg_564),
    .ap_return(grp_product_fu_258_ap_return)
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
        grp_product_fu_258_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_product_fu_258_ap_start_reg <= 1'b1;
        end else if ((grp_product_fu_258_ap_ready == 1'b1)) begin
            grp_product_fu_258_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        iacc_reg_182 <= 4'd0;
    end else if (((exitcond5_fu_264_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        iacc_reg_182 <= iacc_2_fu_270_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_113_reg_550 == 1'd0) & (tmp_120_fu_448_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        im_reg_216 <= im_2_reg_554;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        im_reg_216 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond5_fu_264_p2 == 1'd1))) begin
        in_index_reg_204 <= 32'd0;
    end else if (((1'b1 == ap_CS_fsm_state10) & ((tmp_113_reg_550 == 1'd1) | (tmp_120_fu_448_p3 == 1'd1)))) begin
        in_index_reg_204 <= p_s_fu_484_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_285_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        ires_reg_247 <= 4'd0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        ires_reg_247 <= ires_2_reg_613;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_113_reg_550 == 1'd0) & (tmp_120_fu_448_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        out_index3_reg_227 <= out_index_2_fu_456_p2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        out_index3_reg_227 <= out_index_cast_fu_307_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_113_reg_550 == 1'd0) & (tmp_120_fu_448_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        w_index3_reg_237 <= w_index_2_fu_442_p2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        w_index3_reg_237 <= w_index_cast_reg_517;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond5_fu_264_p2 == 1'd1))) begin
        w_index_reg_193 <= 7'd0;
    end else if (((1'b1 == ap_CS_fsm_state10) & ((tmp_113_reg_550 == 1'd1) | (tmp_120_fu_448_p3 == 1'd1)))) begin
        w_index_reg_193 <= ir_reg_525;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (grp_product_fu_258_ap_done == 1'b1))) begin
        acc_V_addr_4_reg_575 <= tmp_101_fu_372_p1;
        p_Val2_23_reg_569 <= grp_product_fu_258_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        brmerge7_reg_588 <= brmerge7_fu_436_p2;
        overflow_reg_580 <= overflow_fu_418_p2;
        underflow_reg_584 <= underflow_fu_430_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        data_V_load_reg_545 <= data_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        im_2_reg_554 <= im_2_fu_319_p2;
        tmp_113_reg_550 <= im_reg_216[32'd1];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ir_reg_525 <= ir_fu_291_p2;
        w_index_cast_reg_517[6 : 0] <= w_index_cast_fu_281_p1[6 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        ires_2_reg_613 <= ires_2_fu_498_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_99_fu_492_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        tmp_100_reg_618[3 : 0] <= tmp_100_fu_504_p1[3 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_117_reg_564 <= tmp_117_fu_368_p1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        acc_V_address0 = tmp_100_fu_504_p1;
    end else if (((1'b1 == ap_CS_fsm_state9) | ((tmp_113_reg_550 == 1'd0) & (1'b1 == ap_CS_fsm_state10) & (brmerge7_reg_588 == 1'd1) & (overflow_reg_580 == 1'd1)) | ((tmp_113_reg_550 == 1'd0) & (overflow_reg_580 == 1'd0) & (1'b1 == ap_CS_fsm_state10) & (brmerge7_reg_588 == 1'd1) & (underflow_reg_584 == 1'd1)))) begin
        acc_V_address0 = acc_V_addr_4_reg_575;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        acc_V_address0 = tmp_101_fu_372_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        acc_V_address0 = tmp_fu_276_p1;
    end else begin
        acc_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | ((tmp_113_reg_550 == 1'd0) & (1'b1 == ap_CS_fsm_state10) & (brmerge7_reg_588 == 1'd1) & (overflow_reg_580 == 1'd1)) | ((tmp_113_reg_550 == 1'd0) & (overflow_reg_580 == 1'd0) & (1'b1 == ap_CS_fsm_state10) & (brmerge7_reg_588 == 1'd1) & (underflow_reg_584 == 1'd1)) | ((1'b1 == ap_CS_fsm_state8) & (grp_product_fu_258_ap_done == 1'b1)))) begin
        acc_V_ce0 = 1'b1;
    end else begin
        acc_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_113_reg_550 == 1'd0) & (1'b1 == ap_CS_fsm_state10) & (brmerge7_reg_588 == 1'd1) & (overflow_reg_580 == 1'd1))) begin
        acc_V_d0 = 13'd4095;
    end else if (((tmp_113_reg_550 == 1'd0) & (overflow_reg_580 == 1'd0) & (1'b1 == ap_CS_fsm_state10) & (brmerge7_reg_588 == 1'd1) & (underflow_reg_584 == 1'd1))) begin
        acc_V_d0 = 13'd4096;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        acc_V_d0 = p_Val2_25_fu_398_p2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        acc_V_d0 = 13'd0;
    end else begin
        acc_V_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | ((exitcond5_fu_264_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((tmp_113_reg_550 == 1'd0) & (1'b1 == ap_CS_fsm_state10) & (brmerge7_reg_588 == 1'd1) & (overflow_reg_580 == 1'd1)) | ((tmp_113_reg_550 == 1'd0) & (overflow_reg_580 == 1'd0) & (1'b1 == ap_CS_fsm_state10) & (brmerge7_reg_588 == 1'd1) & (underflow_reg_584 == 1'd1)))) begin
        acc_V_we0 = 1'b1;
    end else begin
        acc_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state11) & (tmp_99_fu_492_p2 == 1'd1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
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
    if (((1'b1 == ap_CS_fsm_state11) & (tmp_99_fu_492_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        data_V_ce0 = 1'b1;
    end else begin
        data_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        outidx7_ce0 = 1'b1;
    end else begin
        outidx7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        res_V_ce0 = 1'b1;
    end else begin
        res_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        res_V_we0 = 1'b1;
    end else begin
        res_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        w3_V_ce0 = 1'b1;
    end else begin
        w3_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond5_fu_264_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((exitcond_fu_285_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((tmp_113_fu_311_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (grp_product_fu_258_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & ((tmp_113_reg_550 == 1'd1) | (tmp_120_fu_448_p3 == 1'd1)))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state11 : begin
            if (((1'b1 == ap_CS_fsm_state11) & (tmp_99_fu_492_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign brmerge7_fu_436_p2 = (p_Result_s_fu_390_p3 ^ p_Result_26_fu_404_p3);

assign data_V_address0 = tmp_98_fu_302_p1;

assign exitcond5_fu_264_p2 = ((iacc_reg_182 == 4'd8) ? 1'b1 : 1'b0);

assign exitcond_fu_285_p2 = ((w_index_reg_193 == 7'd64) ? 1'b1 : 1'b0);

assign grp_product_fu_258_ap_start = grp_product_fu_258_ap_start_reg;

assign iacc_2_fu_270_p2 = (iacc_reg_182 + 4'd1);

assign icmp_fu_478_p2 = (($signed(tmp_121_fu_468_p4) > $signed(28'd0)) ? 1'b1 : 1'b0);

assign im_2_fu_319_p2 = (im_reg_216 + 2'd1);

assign in_index_2_fu_462_p2 = ($signed(in_index_reg_204) + $signed(32'd1));

assign ir_fu_291_p2 = (w_index_reg_193 + 7'd1);

assign ires_2_fu_498_p2 = (ires_reg_247 + 4'd1);

assign lhs_V_fu_377_p0 = acc_V_q0;

assign lhs_V_fu_377_p1 = lhs_V_fu_377_p0;

assign out_index_2_fu_456_p2 = (out_index3_reg_227 + 4'd4);

assign out_index_cast_fu_307_p1 = outidx7_q0;

assign outidx7_address0 = tmp_s_fu_297_p1;

assign overflow_fu_418_p2 = (tmp_13_fu_412_p2 & p_Result_26_fu_404_p3);

assign p_Result_26_fu_404_p3 = p_Val2_25_fu_398_p2[32'd12];

assign p_Result_s_fu_390_p3 = ret_V_fu_384_p2[32'd13];

assign p_Val2_25_fu_398_p1 = acc_V_q0;

assign p_Val2_25_fu_398_p2 = ($signed(p_Val2_23_reg_569) + $signed(p_Val2_25_fu_398_p1));

assign p_s_fu_484_p3 = ((icmp_fu_478_p2[0:0] === 1'b1) ? 32'd0 : in_index_2_fu_462_p2);

assign res_V_address0 = tmp_100_reg_618;

assign res_V_d0 = acc_V_q0;

assign ret_V_fu_384_p2 = ($signed(lhs_V_fu_377_p1) + $signed(rhs_V_fu_381_p1));

assign rhs_V_fu_381_p1 = p_Val2_23_reg_569;

assign tmp_100_fu_504_p1 = ires_reg_247;

assign tmp_101_fu_372_p1 = out_index3_reg_227;

assign tmp_102_fu_424_p2 = (p_Result_26_fu_404_p3 ^ 1'd1);

assign tmp_113_fu_311_p3 = im_reg_216[32'd1];

assign tmp_114_fu_325_p1 = w_index3_reg_237[5:0];

assign tmp_115_fu_358_p1 = tmp_45_fu_352_p2;

assign tmp_116_fu_362_p2 = w3_V_load_cast_fu_334_p1 >> tmp_115_fu_358_p1;

assign tmp_117_fu_368_p1 = tmp_116_fu_362_p2[12:0];

assign tmp_120_fu_448_p3 = w_index_2_fu_442_p2[32'd7];

assign tmp_121_fu_468_p4 = {{in_index_2_fu_462_p2[31:4]}};

assign tmp_13_fu_412_p2 = (p_Result_s_fu_390_p3 ^ 1'd1);

assign tmp_43_fu_329_p1 = tmp_114_fu_325_p1;

assign tmp_45_fu_352_p1 = tmp_45_fu_352_p10;

assign tmp_45_fu_352_p10 = tmp_5_fu_338_p4;

assign tmp_45_fu_352_p2 = (5'd13 * tmp_45_fu_352_p1);

assign tmp_5_fu_338_p4 = {{w_index3_reg_237[7:6]}};

assign tmp_98_fu_302_p1 = in_index_reg_204;

assign tmp_99_fu_492_p2 = ((ires_reg_247 == 4'd8) ? 1'b1 : 1'b0);

assign tmp_fu_276_p1 = iacc_reg_182;

assign tmp_s_fu_297_p1 = w_index_reg_193;

assign underflow_fu_430_p2 = (tmp_102_fu_424_p2 & p_Result_s_fu_390_p3);

assign w3_V_address0 = tmp_43_fu_329_p1;

assign w3_V_load_cast_fu_334_p1 = $signed(w3_V_q0);

assign w_index_2_fu_442_p2 = (w_index3_reg_237 + 8'd64);

assign w_index_cast_fu_281_p1 = w_index_reg_193;

always @ (posedge ap_clk) begin
    w_index_cast_reg_517[7] <= 1'b0;
    tmp_100_reg_618[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end

endmodule //dense_large_rf_gt_ni_1