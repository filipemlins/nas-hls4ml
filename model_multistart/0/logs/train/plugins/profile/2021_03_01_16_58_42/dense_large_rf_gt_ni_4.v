// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dense_large_rf_gt_ni_4 (
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

parameter    ap_ST_fsm_state1 = 33'd1;
parameter    ap_ST_fsm_state2 = 33'd2;
parameter    ap_ST_fsm_state3 = 33'd4;
parameter    ap_ST_fsm_state4 = 33'd8;
parameter    ap_ST_fsm_state5 = 33'd16;
parameter    ap_ST_fsm_state6 = 33'd32;
parameter    ap_ST_fsm_state7 = 33'd64;
parameter    ap_ST_fsm_state8 = 33'd128;
parameter    ap_ST_fsm_state9 = 33'd256;
parameter    ap_ST_fsm_state10 = 33'd512;
parameter    ap_ST_fsm_state11 = 33'd1024;
parameter    ap_ST_fsm_state12 = 33'd2048;
parameter    ap_ST_fsm_state13 = 33'd4096;
parameter    ap_ST_fsm_state14 = 33'd8192;
parameter    ap_ST_fsm_state15 = 33'd16384;
parameter    ap_ST_fsm_state16 = 33'd32768;
parameter    ap_ST_fsm_state17 = 33'd65536;
parameter    ap_ST_fsm_state18 = 33'd131072;
parameter    ap_ST_fsm_state19 = 33'd262144;
parameter    ap_ST_fsm_state20 = 33'd524288;
parameter    ap_ST_fsm_state21 = 33'd1048576;
parameter    ap_ST_fsm_state22 = 33'd2097152;
parameter    ap_ST_fsm_state23 = 33'd4194304;
parameter    ap_ST_fsm_state24 = 33'd8388608;
parameter    ap_ST_fsm_state25 = 33'd16777216;
parameter    ap_ST_fsm_state26 = 33'd33554432;
parameter    ap_ST_fsm_state27 = 33'd67108864;
parameter    ap_ST_fsm_state28 = 33'd134217728;
parameter    ap_ST_fsm_state29 = 33'd268435456;
parameter    ap_ST_fsm_state30 = 33'd536870912;
parameter    ap_ST_fsm_state31 = 33'd1073741824;
parameter    ap_ST_fsm_state32 = 33'd2147483648;
parameter    ap_ST_fsm_state33 = 33'd4294967296;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] data_V_address0;
output   data_V_ce0;
input  [11:0] data_V_q0;
output  [6:0] res_V_address0;
output   res_V_ce0;
output   res_V_we0;
output  [11:0] res_V_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg data_V_ce0;
reg res_V_ce0;
reg res_V_we0;

(* fsm_encoding = "none" *) reg   [32:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] b11_V_address0;
reg    b11_V_ce0;
wire   [0:0] b11_V_q0;
wire   [10:0] outidx5_address0;
reg    outidx5_ce0;
wire   [1:0] outidx5_q0;
wire   [10:0] w11_V_address0;
reg    w11_V_ce0;
wire   [471:0] w11_V_q0;
wire   [6:0] iacc_1_fu_290_p2;
reg   [6:0] iacc_1_reg_557;
wire    ap_CS_fsm_state2;
wire   [63:0] tmp_fu_296_p1;
reg   [63:0] tmp_reg_562;
wire   [0:0] exitcond8_fu_284_p2;
wire   [16:0] w_index_cast_fu_306_p1;
reg   [16:0] w_index_cast_reg_572;
wire    ap_CS_fsm_state4;
wire   [10:0] ir_fu_316_p2;
reg   [10:0] ir_reg_580;
wire   [0:0] exitcond_fu_310_p2;
wire   [6:0] out_index_cast_fu_332_p1;
wire    ap_CS_fsm_state5;
reg   [11:0] data_V_load_reg_600;
wire   [0:0] tmp_49_fu_336_p2;
reg   [0:0] tmp_49_reg_605;
wire    ap_CS_fsm_state6;
wire   [5:0] im_1_fu_342_p2;
reg   [5:0] im_1_reg_609;
wire   [35:0] mul_fu_548_p2;
reg   [35:0] mul_reg_614;
wire    ap_CS_fsm_state26;
wire   [11:0] tmp_46_fu_421_p1;
reg   [11:0] tmp_46_reg_625;
wire    ap_CS_fsm_state27;
reg   [6:0] acc_V_addr_2_reg_630;
wire    ap_CS_fsm_state28;
wire   [11:0] grp_product_fu_278_ap_return;
reg  signed [11:0] p_Val2_11_reg_635;
wire    ap_CS_fsm_state29;
wire    grp_product_fu_278_ap_ready;
wire    grp_product_fu_278_ap_done;
wire   [11:0] acc_V_q0;
reg  signed [11:0] p_Val2_s_reg_641;
wire   [0:0] overflow_fu_469_p2;
reg   [0:0] overflow_reg_647;
wire    ap_CS_fsm_state30;
wire   [0:0] underflow_fu_481_p2;
reg   [0:0] underflow_reg_651;
wire   [0:0] brmerge1_fu_487_p2;
reg   [0:0] brmerge1_reg_655;
wire   [16:0] w_index_1_fu_493_p2;
wire    ap_CS_fsm_state31;
wire   [6:0] out_index_1_fu_505_p2;
wire   [0:0] tmp_53_fu_499_p2;
wire   [31:0] p_s_fu_523_p3;
wire   [6:0] ires_1_fu_537_p2;
reg   [6:0] ires_1_reg_680;
wire    ap_CS_fsm_state32;
wire   [63:0] tmp_50_fu_543_p1;
reg   [63:0] tmp_50_reg_685;
wire   [0:0] tmp_48_fu_531_p2;
reg   [6:0] acc_V_address0;
reg    acc_V_ce0;
reg    acc_V_we0;
reg   [11:0] acc_V_d0;
wire    grp_product_fu_278_ap_start;
wire    grp_product_fu_278_ap_idle;
reg   [6:0] iacc_reg_202;
wire    ap_CS_fsm_state3;
reg   [10:0] w_index_reg_213;
reg  signed [31:0] in_index_reg_224;
reg   [5:0] im_reg_236;
reg   [6:0] out_index9_reg_247;
reg   [16:0] w_index9_reg_257;
reg   [6:0] ires_reg_267;
wire    ap_CS_fsm_state33;
reg    grp_product_fu_278_ap_start_reg;
wire   [63:0] tmp_s_fu_322_p1;
wire  signed [63:0] tmp_47_fu_327_p1;
wire   [63:0] tmp_41_fu_358_p1;
wire   [63:0] tmp_51_fu_425_p1;
wire   [11:0] b11_V_load_cast_fu_301_p1;
wire   [11:0] p_Val2_13_fu_450_p2;
wire   [11:0] grp_fu_348_p1;
wire   [16:0] grp_fu_348_p2;
wire   [5:0] tmp_4_fu_367_p4;
wire   [4:0] tmp_38_fu_376_p4;
wire   [7:0] p_shl8_fu_385_p3;
wire   [8:0] tmp_40_fu_393_p3;
wire   [8:0] tmp_42_fu_401_p1;
wire   [8:0] tmp_43_fu_405_p2;
wire  signed [479:0] w11_V_load_cast_fu_363_p1;
wire   [479:0] tmp_44_fu_411_p1;
wire   [479:0] tmp_45_fu_415_p2;
wire  signed [12:0] lhs_V_fu_430_p1;
wire  signed [12:0] rhs_V_fu_433_p1;
wire   [12:0] ret_V_fu_436_p2;
wire   [0:0] p_Result_s_fu_442_p3;
wire   [0:0] p_Result_9_fu_455_p3;
wire   [0:0] tmp_22_fu_463_p2;
wire   [0:0] tmp_52_fu_475_p2;
wire   [31:0] in_index_1_fu_511_p2;
wire   [0:0] tmp_54_fu_517_p2;
wire   [16:0] mul_fu_548_p0;
wire   [18:0] mul_fu_548_p1;
reg    grp_fu_348_ap_start;
wire    grp_fu_348_ap_done;
reg   [32:0] ap_NS_fsm;
wire   [35:0] mul_fu_548_p00;

// power-on initialization
initial begin
#0 ap_CS_fsm = 33'd1;
#0 grp_product_fu_278_ap_start_reg = 1'b0;
end

dense_large_rf_gt_ni_4_b11_V #(
    .DataWidth( 1 ),
    .AddressRange( 120 ),
    .AddressWidth( 7 ))
b11_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(b11_V_address0),
    .ce0(b11_V_ce0),
    .q0(b11_V_q0)
);

dense_large_rf_gt_ni_4_outidx5 #(
    .DataWidth( 2 ),
    .AddressRange( 1728 ),
    .AddressWidth( 11 ))
outidx5_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(outidx5_address0),
    .ce0(outidx5_ce0),
    .q0(outidx5_q0)
);

dense_large_rf_gt_ni_4_w11_V #(
    .DataWidth( 472 ),
    .AddressRange( 1728 ),
    .AddressWidth( 11 ))
w11_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(w11_V_address0),
    .ce0(w11_V_ce0),
    .q0(w11_V_q0)
);

dense_large_rf_gt_ni_4_acc_V #(
    .DataWidth( 12 ),
    .AddressRange( 120 ),
    .AddressWidth( 7 ))
acc_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(acc_V_address0),
    .ce0(acc_V_ce0),
    .we0(acc_V_we0),
    .d0(acc_V_d0),
    .q0(acc_V_q0)
);

product grp_product_fu_278(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_product_fu_278_ap_start),
    .ap_done(grp_product_fu_278_ap_done),
    .ap_idle(grp_product_fu_278_ap_idle),
    .ap_ready(grp_product_fu_278_ap_ready),
    .a_V(data_V_load_reg_600),
    .w_V(tmp_46_reg_625),
    .ap_return(grp_product_fu_278_ap_return)
);

myproject_urem_17ns_12ns_17_21_seq_1 #(
    .ID( 1 ),
    .NUM_STAGE( 21 ),
    .din0_WIDTH( 17 ),
    .din1_WIDTH( 12 ),
    .dout_WIDTH( 17 ))
myproject_urem_17ns_12ns_17_21_seq_1_U42(
    .clk(ap_clk),
    .reset(ap_rst),
    .start(grp_fu_348_ap_start),
    .done(grp_fu_348_ap_done),
    .din0(w_index9_reg_257),
    .din1(grp_fu_348_p1),
    .ce(1'b1),
    .dout(grp_fu_348_p2)
);

myproject_mul_mul_17ns_19ns_36_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 17 ),
    .din1_WIDTH( 19 ),
    .dout_WIDTH( 36 ))
myproject_mul_mul_17ns_19ns_36_1_1_U43(
    .din0(mul_fu_548_p0),
    .din1(mul_fu_548_p1),
    .dout(mul_fu_548_p2)
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
        grp_product_fu_278_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state28)) begin
            grp_product_fu_278_ap_start_reg <= 1'b1;
        end else if ((grp_product_fu_278_ap_ready == 1'b1)) begin
            grp_product_fu_278_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        iacc_reg_202 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        iacc_reg_202 <= iacc_1_reg_557;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_53_fu_499_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state31) & (tmp_49_reg_605 == 1'd1))) begin
        im_reg_236 <= im_1_reg_609;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        im_reg_236 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond8_fu_284_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        in_index_reg_224 <= 32'd0;
    end else if (((1'b1 == ap_CS_fsm_state31) & ((tmp_49_reg_605 == 1'd0) | (tmp_53_fu_499_p2 == 1'd1)))) begin
        in_index_reg_224 <= p_s_fu_523_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (exitcond_fu_310_p2 == 1'd1))) begin
        ires_reg_267 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        ires_reg_267 <= ires_1_reg_680;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_53_fu_499_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state31) & (tmp_49_reg_605 == 1'd1))) begin
        out_index9_reg_247 <= out_index_1_fu_505_p2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        out_index9_reg_247 <= out_index_cast_fu_332_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_53_fu_499_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state31) & (tmp_49_reg_605 == 1'd1))) begin
        w_index9_reg_257 <= w_index_1_fu_493_p2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        w_index9_reg_257 <= w_index_cast_reg_572;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond8_fu_284_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        w_index_reg_213 <= 11'd0;
    end else if (((1'b1 == ap_CS_fsm_state31) & ((tmp_49_reg_605 == 1'd0) | (tmp_53_fu_499_p2 == 1'd1)))) begin
        w_index_reg_213 <= ir_reg_580;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        acc_V_addr_2_reg_630 <= tmp_51_fu_425_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        brmerge1_reg_655 <= brmerge1_fu_487_p2;
        overflow_reg_647 <= overflow_fu_469_p2;
        underflow_reg_651 <= underflow_fu_481_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        data_V_load_reg_600 <= data_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        iacc_1_reg_557 <= iacc_1_fu_290_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        im_1_reg_609 <= im_1_fu_342_p2;
        tmp_49_reg_605 <= tmp_49_fu_336_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ir_reg_580 <= ir_fu_316_p2;
        w_index_cast_reg_572[10 : 0] <= w_index_cast_fu_306_p1[10 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        ires_1_reg_680 <= ires_1_fu_537_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        mul_reg_614 <= mul_fu_548_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state29) & (grp_product_fu_278_ap_done == 1'b1))) begin
        p_Val2_11_reg_635 <= grp_product_fu_278_ap_return;
        p_Val2_s_reg_641 <= acc_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        tmp_46_reg_625 <= tmp_46_fu_421_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_48_fu_531_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state32))) begin
        tmp_50_reg_685[6 : 0] <= tmp_50_fu_543_p1[6 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond8_fu_284_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_reg_562[6 : 0] <= tmp_fu_296_p1[6 : 0];
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        acc_V_address0 = tmp_50_fu_543_p1;
    end else if (((1'b1 == ap_CS_fsm_state30) | ((1'b1 == ap_CS_fsm_state31) & (brmerge1_reg_655 == 1'd1) & (overflow_reg_647 == 1'd1) & (tmp_49_reg_605 == 1'd1)) | ((overflow_reg_647 == 1'd0) & (1'b1 == ap_CS_fsm_state31) & (brmerge1_reg_655 == 1'd1) & (underflow_reg_651 == 1'd1) & (tmp_49_reg_605 == 1'd1)))) begin
        acc_V_address0 = acc_V_addr_2_reg_630;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        acc_V_address0 = tmp_51_fu_425_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        acc_V_address0 = tmp_reg_562;
    end else begin
        acc_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state28) | ((1'b1 == ap_CS_fsm_state31) & (brmerge1_reg_655 == 1'd1) & (overflow_reg_647 == 1'd1) & (tmp_49_reg_605 == 1'd1)) | ((overflow_reg_647 == 1'd0) & (1'b1 == ap_CS_fsm_state31) & (brmerge1_reg_655 == 1'd1) & (underflow_reg_651 == 1'd1) & (tmp_49_reg_605 == 1'd1)))) begin
        acc_V_ce0 = 1'b1;
    end else begin
        acc_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state31) & (brmerge1_reg_655 == 1'd1) & (overflow_reg_647 == 1'd1) & (tmp_49_reg_605 == 1'd1))) begin
        acc_V_d0 = 12'd2047;
    end else if (((overflow_reg_647 == 1'd0) & (1'b1 == ap_CS_fsm_state31) & (brmerge1_reg_655 == 1'd1) & (underflow_reg_651 == 1'd1) & (tmp_49_reg_605 == 1'd1))) begin
        acc_V_d0 = 12'd2048;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        acc_V_d0 = p_Val2_13_fu_450_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        acc_V_d0 = b11_V_load_cast_fu_301_p1;
    end else begin
        acc_V_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state30) | ((1'b1 == ap_CS_fsm_state31) & (brmerge1_reg_655 == 1'd1) & (overflow_reg_647 == 1'd1) & (tmp_49_reg_605 == 1'd1)) | ((overflow_reg_647 == 1'd0) & (1'b1 == ap_CS_fsm_state31) & (brmerge1_reg_655 == 1'd1) & (underflow_reg_651 == 1'd1) & (tmp_49_reg_605 == 1'd1)))) begin
        acc_V_we0 = 1'b1;
    end else begin
        acc_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state32) & (tmp_48_fu_531_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state32) & (tmp_48_fu_531_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        b11_V_ce0 = 1'b1;
    end else begin
        b11_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        data_V_ce0 = 1'b1;
    end else begin
        data_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (tmp_49_fu_336_p2 == 1'd1))) begin
        grp_fu_348_ap_start = 1'b1;
    end else begin
        grp_fu_348_ap_start = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        outidx5_ce0 = 1'b1;
    end else begin
        outidx5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        res_V_ce0 = 1'b1;
    end else begin
        res_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        res_V_we0 = 1'b1;
    end else begin
        res_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        w11_V_ce0 = 1'b1;
    end else begin
        w11_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((exitcond8_fu_284_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (exitcond_fu_310_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state32;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((tmp_49_fu_336_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state31;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            if (((1'b1 == ap_CS_fsm_state29) & (grp_product_fu_278_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state30;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state29;
            end
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            if (((1'b1 == ap_CS_fsm_state31) & ((tmp_49_reg_605 == 1'd0) | (tmp_53_fu_499_p2 == 1'd1)))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state32 : begin
            if (((1'b1 == ap_CS_fsm_state32) & (tmp_48_fu_531_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state33;
            end
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state26 = ap_CS_fsm[32'd25];

assign ap_CS_fsm_state27 = ap_CS_fsm[32'd26];

assign ap_CS_fsm_state28 = ap_CS_fsm[32'd27];

assign ap_CS_fsm_state29 = ap_CS_fsm[32'd28];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state30 = ap_CS_fsm[32'd29];

assign ap_CS_fsm_state31 = ap_CS_fsm[32'd30];

assign ap_CS_fsm_state32 = ap_CS_fsm[32'd31];

assign ap_CS_fsm_state33 = ap_CS_fsm[32'd32];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign b11_V_address0 = tmp_fu_296_p1;

assign b11_V_load_cast_fu_301_p1 = b11_V_q0;

assign brmerge1_fu_487_p2 = (p_Result_s_fu_442_p3 ^ p_Result_9_fu_455_p3);

assign data_V_address0 = tmp_47_fu_327_p1;

assign exitcond8_fu_284_p2 = ((iacc_reg_202 == 7'd120) ? 1'b1 : 1'b0);

assign exitcond_fu_310_p2 = ((w_index_reg_213 == 11'd1728) ? 1'b1 : 1'b0);

assign grp_fu_348_p1 = 17'd1728;

assign grp_product_fu_278_ap_start = grp_product_fu_278_ap_start_reg;

assign iacc_1_fu_290_p2 = (iacc_reg_202 + 7'd1);

assign im_1_fu_342_p2 = (im_reg_236 + 6'd1);

assign in_index_1_fu_511_p2 = ($signed(in_index_reg_224) + $signed(32'd1));

assign ir_fu_316_p2 = (w_index_reg_213 + 11'd1);

assign ires_1_fu_537_p2 = (ires_reg_267 + 7'd1);

assign lhs_V_fu_430_p1 = p_Val2_s_reg_641;

assign mul_fu_548_p0 = mul_fu_548_p00;

assign mul_fu_548_p00 = w_index9_reg_257;

assign mul_fu_548_p1 = 36'd155345;

assign out_index_1_fu_505_p2 = (out_index9_reg_247 + 7'd3);

assign out_index_cast_fu_332_p1 = outidx5_q0;

assign outidx5_address0 = tmp_s_fu_322_p1;

assign overflow_fu_469_p2 = (tmp_22_fu_463_p2 & p_Result_9_fu_455_p3);

assign p_Result_9_fu_455_p3 = p_Val2_13_fu_450_p2[32'd11];

assign p_Result_s_fu_442_p3 = ret_V_fu_436_p2[32'd12];

assign p_Val2_13_fu_450_p2 = ($signed(p_Val2_s_reg_641) + $signed(p_Val2_11_reg_635));

assign p_s_fu_523_p3 = ((tmp_54_fu_517_p2[0:0] === 1'b1) ? 32'd0 : in_index_1_fu_511_p2);

assign p_shl8_fu_385_p3 = {{tmp_4_fu_367_p4}, {2'd0}};

assign res_V_address0 = tmp_50_reg_685;

assign res_V_d0 = acc_V_q0;

assign ret_V_fu_436_p2 = ($signed(lhs_V_fu_430_p1) + $signed(rhs_V_fu_433_p1));

assign rhs_V_fu_433_p1 = p_Val2_11_reg_635;

assign tmp_22_fu_463_p2 = (p_Result_s_fu_442_p3 ^ 1'd1);

assign tmp_38_fu_376_p4 = {{mul_reg_614[32:28]}};

assign tmp_40_fu_393_p3 = {{tmp_38_fu_376_p4}, {4'd0}};

assign tmp_41_fu_358_p1 = grp_fu_348_p2;

assign tmp_42_fu_401_p1 = p_shl8_fu_385_p3;

assign tmp_43_fu_405_p2 = (tmp_40_fu_393_p3 - tmp_42_fu_401_p1);

assign tmp_44_fu_411_p1 = tmp_43_fu_405_p2;

assign tmp_45_fu_415_p2 = w11_V_load_cast_fu_363_p1 >> tmp_44_fu_411_p1;

assign tmp_46_fu_421_p1 = tmp_45_fu_415_p2[11:0];

assign tmp_47_fu_327_p1 = in_index_reg_224;

assign tmp_48_fu_531_p2 = ((ires_reg_267 == 7'd120) ? 1'b1 : 1'b0);

assign tmp_49_fu_336_p2 = ((im_reg_236 < 6'd40) ? 1'b1 : 1'b0);

assign tmp_4_fu_367_p4 = {{mul_reg_614[33:28]}};

assign tmp_50_fu_543_p1 = ires_reg_267;

assign tmp_51_fu_425_p1 = out_index9_reg_247;

assign tmp_52_fu_475_p2 = (p_Result_9_fu_455_p3 ^ 1'd1);

assign tmp_53_fu_499_p2 = ((w_index_1_fu_493_p2 > 17'd69119) ? 1'b1 : 1'b0);

assign tmp_54_fu_517_p2 = (($signed(in_index_1_fu_511_p2) > $signed(32'd575)) ? 1'b1 : 1'b0);

assign tmp_fu_296_p1 = iacc_reg_202;

assign tmp_s_fu_322_p1 = w_index_reg_213;

assign underflow_fu_481_p2 = (tmp_52_fu_475_p2 & p_Result_s_fu_442_p3);

assign w11_V_address0 = tmp_41_fu_358_p1;

assign w11_V_load_cast_fu_363_p1 = $signed(w11_V_q0);

assign w_index_1_fu_493_p2 = (w_index9_reg_257 + 17'd1728);

assign w_index_cast_fu_306_p1 = w_index_reg_213;

always @ (posedge ap_clk) begin
    tmp_reg_562[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    w_index_cast_reg_572[16:11] <= 6'b000000;
    tmp_50_reg_685[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
end

endmodule //dense_large_rf_gt_ni_4