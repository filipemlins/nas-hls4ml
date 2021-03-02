// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dense_large_rf_gt_ni_3 (
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

parameter    ap_ST_fsm_state1 = 29'd1;
parameter    ap_ST_fsm_state2 = 29'd2;
parameter    ap_ST_fsm_state3 = 29'd4;
parameter    ap_ST_fsm_state4 = 29'd8;
parameter    ap_ST_fsm_state5 = 29'd16;
parameter    ap_ST_fsm_state6 = 29'd32;
parameter    ap_ST_fsm_state7 = 29'd64;
parameter    ap_ST_fsm_state8 = 29'd128;
parameter    ap_ST_fsm_state9 = 29'd256;
parameter    ap_ST_fsm_state10 = 29'd512;
parameter    ap_ST_fsm_state11 = 29'd1024;
parameter    ap_ST_fsm_state12 = 29'd2048;
parameter    ap_ST_fsm_state13 = 29'd4096;
parameter    ap_ST_fsm_state14 = 29'd8192;
parameter    ap_ST_fsm_state15 = 29'd16384;
parameter    ap_ST_fsm_state16 = 29'd32768;
parameter    ap_ST_fsm_state17 = 29'd65536;
parameter    ap_ST_fsm_state18 = 29'd131072;
parameter    ap_ST_fsm_state19 = 29'd262144;
parameter    ap_ST_fsm_state20 = 29'd524288;
parameter    ap_ST_fsm_state21 = 29'd1048576;
parameter    ap_ST_fsm_state22 = 29'd2097152;
parameter    ap_ST_fsm_state23 = 29'd4194304;
parameter    ap_ST_fsm_state24 = 29'd8388608;
parameter    ap_ST_fsm_state25 = 29'd16777216;
parameter    ap_ST_fsm_state26 = 29'd33554432;
parameter    ap_ST_fsm_state27 = 29'd67108864;
parameter    ap_ST_fsm_state28 = 29'd134217728;
parameter    ap_ST_fsm_state29 = 29'd268435456;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] data_V_address0;
output   data_V_ce0;
input  [11:0] data_V_q0;
output  [6:0] res_V_address0;
output   res_V_ce0;
output   res_V_we0;
output  [12:0] res_V_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg data_V_ce0;
reg res_V_ce0;
reg res_V_we0;

(* fsm_encoding = "none" *) reg   [28:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [10:0] outidx4_address0;
reg    outidx4_ce0;
wire   [3:0] outidx4_q0;
wire   [10:0] w14_V_address0;
reg    w14_V_ce0;
wire   [66:0] w14_V_q0;
wire   [6:0] iacc_2_fu_276_p2;
wire    ap_CS_fsm_state2;
wire   [13:0] w_index_cast_fu_287_p1;
reg   [13:0] w_index_cast_reg_574;
wire    ap_CS_fsm_state3;
wire   [10:0] ir_fu_297_p2;
reg   [10:0] ir_reg_582;
wire   [0:0] exitcond_fu_291_p2;
wire   [6:0] out_index_cast9_fu_313_p1;
wire    ap_CS_fsm_state4;
wire   [12:0] extLd_fu_317_p1;
reg   [12:0] extLd_reg_602;
wire   [0:0] tmp_85_fu_321_p2;
reg   [0:0] tmp_85_reg_607;
wire    ap_CS_fsm_state5;
wire   [2:0] im_2_fu_327_p2;
reg   [2:0] im_2_reg_611;
wire   [29:0] mul_fu_560_p2;
reg   [29:0] mul_reg_616;
wire    ap_CS_fsm_state21;
wire    ap_CS_fsm_state22;
wire   [0:0] tmp_95_fu_381_p2;
reg   [0:0] tmp_95_reg_626;
wire   [6:0] tmp_96_fu_387_p1;
reg   [6:0] tmp_96_reg_632;
wire   [12:0] tmp_103_fu_433_p1;
reg   [12:0] tmp_103_reg_638;
wire    ap_CS_fsm_state23;
reg   [6:0] acc_V_addr_4_reg_643;
wire    ap_CS_fsm_state24;
wire   [12:0] grp_product_fu_264_ap_return;
reg  signed [12:0] p_Val2_17_reg_648;
wire    ap_CS_fsm_state25;
wire    grp_product_fu_264_ap_ready;
wire    grp_product_fu_264_ap_done;
wire   [12:0] acc_V_q0;
reg  signed [12:0] p_Val2_s_reg_654;
wire   [0:0] overflow_fu_481_p2;
reg   [0:0] overflow_reg_660;
wire    ap_CS_fsm_state26;
wire   [0:0] underflow_fu_493_p2;
reg   [0:0] underflow_reg_664;
wire   [0:0] brmerge9_fu_499_p2;
reg   [0:0] brmerge9_reg_668;
wire   [13:0] w_index_2_fu_505_p2;
wire    ap_CS_fsm_state27;
wire   [6:0] out_index_2_fu_517_p2;
wire   [0:0] tmp_89_fu_511_p2;
wire   [31:0] p_s_fu_535_p3;
wire   [6:0] ires_2_fu_549_p2;
reg   [6:0] ires_2_reg_693;
wire    ap_CS_fsm_state28;
wire   [63:0] tmp_86_fu_555_p1;
reg   [63:0] tmp_86_reg_698;
wire   [0:0] tmp_84_fu_543_p2;
reg   [6:0] acc_V_address0;
reg    acc_V_ce0;
reg    acc_V_we0;
reg   [12:0] acc_V_d0;
wire    grp_product_fu_264_ap_start;
wire    grp_product_fu_264_ap_idle;
reg   [6:0] iacc_reg_188;
wire   [0:0] exitcond7_fu_270_p2;
reg   [10:0] w_index_reg_199;
reg  signed [31:0] in_index_reg_210;
reg   [2:0] im_reg_222;
reg   [6:0] out_index7_reg_233;
reg   [13:0] w_index7_reg_243;
reg   [6:0] ires_reg_253;
wire    ap_CS_fsm_state29;
reg    grp_product_fu_264_ap_start_reg;
wire   [63:0] tmp_fu_282_p1;
wire   [63:0] tmp_s_fu_303_p1;
wire  signed [63:0] tmp_83_fu_308_p1;
wire   [63:0] tmp_61_fu_343_p1;
wire   [63:0] tmp_87_fu_437_p1;
wire   [12:0] p_Val2_19_fu_462_p2;
wire   [11:0] grp_fu_333_p1;
wire   [13:0] grp_fu_333_p2;
wire   [4:0] tmp_93_fu_348_p4;
wire  signed [4:0] tmp_63_fu_361_p1;
wire   [7:0] tmp_63_fu_361_p2;
wire   [6:0] tmp_94_fu_367_p1;
wire   [6:0] tmp_64_fu_371_p2;
wire   [7:0] tmp_64_cast_fu_377_p1;
wire  signed [77:0] w14_V_load_cast_fu_391_p1;
reg   [77:0] tmp_97_fu_395_p4;
wire   [6:0] tmp_98_fu_405_p2;
wire   [6:0] tmp_100_fu_417_p3;
wire   [77:0] tmp_99_fu_410_p3;
wire   [77:0] tmp_101_fu_423_p1;
wire   [77:0] tmp_102_fu_427_p2;
wire  signed [13:0] lhs_V_fu_442_p1;
wire  signed [13:0] rhs_V_fu_445_p1;
wire   [13:0] ret_V_fu_448_p2;
wire   [0:0] p_Result_s_fu_454_p3;
wire   [0:0] p_Result_24_fu_467_p3;
wire   [0:0] tmp_15_fu_475_p2;
wire   [0:0] tmp_88_fu_487_p2;
wire   [31:0] in_index_2_fu_523_p2;
wire   [0:0] tmp_90_fu_529_p2;
wire   [15:0] mul_fu_560_p0;
wire   [13:0] mul_fu_560_p1;
reg    grp_fu_333_ap_start;
wire    grp_fu_333_ap_done;
reg   [28:0] ap_NS_fsm;
wire   [29:0] mul_fu_560_p10;

// power-on initialization
initial begin
#0 ap_CS_fsm = 29'd1;
#0 grp_product_fu_264_ap_start_reg = 1'b0;
end

dense_large_rf_gt_ni_3_outidx4 #(
    .DataWidth( 4 ),
    .AddressRange( 1680 ),
    .AddressWidth( 11 ))
outidx4_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(outidx4_address0),
    .ce0(outidx4_ce0),
    .q0(outidx4_q0)
);

dense_large_rf_gt_ni_3_w14_V #(
    .DataWidth( 67 ),
    .AddressRange( 1680 ),
    .AddressWidth( 11 ))
w14_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(w14_V_address0),
    .ce0(w14_V_ce0),
    .q0(w14_V_q0)
);

dense_large_rf_gt_ni_3_acc_V #(
    .DataWidth( 13 ),
    .AddressRange( 84 ),
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

product grp_product_fu_264(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_product_fu_264_ap_start),
    .ap_done(grp_product_fu_264_ap_done),
    .ap_idle(grp_product_fu_264_ap_idle),
    .ap_ready(grp_product_fu_264_ap_ready),
    .a_V(extLd_reg_602),
    .w_V(tmp_103_reg_638),
    .ap_return(grp_product_fu_264_ap_return)
);

myproject_urem_14ns_12ns_14_18_seq_1 #(
    .ID( 1 ),
    .NUM_STAGE( 18 ),
    .din0_WIDTH( 14 ),
    .din1_WIDTH( 12 ),
    .dout_WIDTH( 14 ))
myproject_urem_14ns_12ns_14_18_seq_1_U53(
    .clk(ap_clk),
    .reset(ap_rst),
    .start(grp_fu_333_ap_start),
    .done(grp_fu_333_ap_done),
    .din0(w_index7_reg_243),
    .din1(grp_fu_333_p1),
    .ce(1'b1),
    .dout(grp_fu_333_p2)
);

myproject_mul_mul_16ns_14ns_30_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 14 ),
    .dout_WIDTH( 30 ))
myproject_mul_mul_16ns_14ns_30_1_1_U54(
    .din0(mul_fu_560_p0),
    .din1(mul_fu_560_p1),
    .dout(mul_fu_560_p2)
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
        grp_product_fu_264_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state24)) begin
            grp_product_fu_264_ap_start_reg <= 1'b1;
        end else if ((grp_product_fu_264_ap_ready == 1'b1)) begin
            grp_product_fu_264_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        iacc_reg_188 <= 7'd0;
    end else if (((exitcond7_fu_270_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        iacc_reg_188 <= iacc_2_fu_276_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_89_fu_511_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state27) & (tmp_85_reg_607 == 1'd1))) begin
        im_reg_222 <= im_2_reg_611;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        im_reg_222 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond7_fu_270_p2 == 1'd1))) begin
        in_index_reg_210 <= 32'd0;
    end else if (((1'b1 == ap_CS_fsm_state27) & ((tmp_85_reg_607 == 1'd0) | (tmp_89_fu_511_p2 == 1'd1)))) begin
        in_index_reg_210 <= p_s_fu_535_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_291_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        ires_reg_253 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        ires_reg_253 <= ires_2_reg_693;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_89_fu_511_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state27) & (tmp_85_reg_607 == 1'd1))) begin
        out_index7_reg_233 <= out_index_2_fu_517_p2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        out_index7_reg_233 <= out_index_cast9_fu_313_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_89_fu_511_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state27) & (tmp_85_reg_607 == 1'd1))) begin
        w_index7_reg_243 <= w_index_2_fu_505_p2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        w_index7_reg_243 <= w_index_cast_reg_574;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond7_fu_270_p2 == 1'd1))) begin
        w_index_reg_199 <= 11'd0;
    end else if (((1'b1 == ap_CS_fsm_state27) & ((tmp_85_reg_607 == 1'd0) | (tmp_89_fu_511_p2 == 1'd1)))) begin
        w_index_reg_199 <= ir_reg_582;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        acc_V_addr_4_reg_643 <= tmp_87_fu_437_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        brmerge9_reg_668 <= brmerge9_fu_499_p2;
        overflow_reg_660 <= overflow_fu_481_p2;
        underflow_reg_664 <= underflow_fu_493_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        extLd_reg_602[11 : 0] <= extLd_fu_317_p1[11 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        im_2_reg_611 <= im_2_fu_327_p2;
        tmp_85_reg_607 <= tmp_85_fu_321_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ir_reg_582 <= ir_fu_297_p2;
        w_index_cast_reg_574[10 : 0] <= w_index_cast_fu_287_p1[10 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        ires_2_reg_693 <= ires_2_fu_549_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        mul_reg_616 <= mul_fu_560_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state25) & (grp_product_fu_264_ap_done == 1'b1))) begin
        p_Val2_17_reg_648 <= grp_product_fu_264_ap_return;
        p_Val2_s_reg_654 <= acc_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        tmp_103_reg_638 <= tmp_103_fu_433_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_84_fu_543_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state28))) begin
        tmp_86_reg_698[6 : 0] <= tmp_86_fu_555_p1[6 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        tmp_95_reg_626 <= tmp_95_fu_381_p2;
        tmp_96_reg_632 <= tmp_96_fu_387_p1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        acc_V_address0 = tmp_86_fu_555_p1;
    end else if (((1'b1 == ap_CS_fsm_state26) | ((1'b1 == ap_CS_fsm_state27) & (brmerge9_reg_668 == 1'd1) & (overflow_reg_660 == 1'd1) & (tmp_85_reg_607 == 1'd1)) | ((overflow_reg_660 == 1'd0) & (1'b1 == ap_CS_fsm_state27) & (brmerge9_reg_668 == 1'd1) & (underflow_reg_664 == 1'd1) & (tmp_85_reg_607 == 1'd1)))) begin
        acc_V_address0 = acc_V_addr_4_reg_643;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        acc_V_address0 = tmp_87_fu_437_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        acc_V_address0 = tmp_fu_282_p1;
    end else begin
        acc_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state24) | ((1'b1 == ap_CS_fsm_state27) & (brmerge9_reg_668 == 1'd1) & (overflow_reg_660 == 1'd1) & (tmp_85_reg_607 == 1'd1)) | ((overflow_reg_660 == 1'd0) & (1'b1 == ap_CS_fsm_state27) & (brmerge9_reg_668 == 1'd1) & (underflow_reg_664 == 1'd1) & (tmp_85_reg_607 == 1'd1)))) begin
        acc_V_ce0 = 1'b1;
    end else begin
        acc_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (brmerge9_reg_668 == 1'd1) & (overflow_reg_660 == 1'd1) & (tmp_85_reg_607 == 1'd1))) begin
        acc_V_d0 = 13'd4095;
    end else if (((overflow_reg_660 == 1'd0) & (1'b1 == ap_CS_fsm_state27) & (brmerge9_reg_668 == 1'd1) & (underflow_reg_664 == 1'd1) & (tmp_85_reg_607 == 1'd1))) begin
        acc_V_d0 = 13'd4096;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        acc_V_d0 = p_Val2_19_fu_462_p2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        acc_V_d0 = 13'd0;
    end else begin
        acc_V_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state26) | ((exitcond7_fu_270_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state27) & (brmerge9_reg_668 == 1'd1) & (overflow_reg_660 == 1'd1) & (tmp_85_reg_607 == 1'd1)) | ((overflow_reg_660 == 1'd0) & (1'b1 == ap_CS_fsm_state27) & (brmerge9_reg_668 == 1'd1) & (underflow_reg_664 == 1'd1) & (tmp_85_reg_607 == 1'd1)))) begin
        acc_V_we0 = 1'b1;
    end else begin
        acc_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state28) & (tmp_84_fu_543_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state28) & (tmp_84_fu_543_p2 == 1'd1))) begin
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
    if (((1'b1 == ap_CS_fsm_state5) & (tmp_85_fu_321_p2 == 1'd1))) begin
        grp_fu_333_ap_start = 1'b1;
    end else begin
        grp_fu_333_ap_start = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        outidx4_ce0 = 1'b1;
    end else begin
        outidx4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state29)) begin
        res_V_ce0 = 1'b1;
    end else begin
        res_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state29)) begin
        res_V_we0 = 1'b1;
    end else begin
        res_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        w14_V_ce0 = 1'b1;
    end else begin
        w14_V_ce0 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond7_fu_270_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((exitcond_fu_291_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((tmp_85_fu_321_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state27;
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
            if (((1'b1 == ap_CS_fsm_state25) & (grp_product_fu_264_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state25;
            end
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            if (((1'b1 == ap_CS_fsm_state27) & ((tmp_85_reg_607 == 1'd0) | (tmp_89_fu_511_p2 == 1'd1)))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state28 : begin
            if (((1'b1 == ap_CS_fsm_state28) & (tmp_84_fu_543_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state29;
            end
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];

assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];

assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];

assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];

assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];

assign ap_CS_fsm_state26 = ap_CS_fsm[32'd25];

assign ap_CS_fsm_state27 = ap_CS_fsm[32'd26];

assign ap_CS_fsm_state28 = ap_CS_fsm[32'd27];

assign ap_CS_fsm_state29 = ap_CS_fsm[32'd28];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign brmerge9_fu_499_p2 = (p_Result_s_fu_454_p3 ^ p_Result_24_fu_467_p3);

assign data_V_address0 = tmp_83_fu_308_p1;

assign exitcond7_fu_270_p2 = ((iacc_reg_188 == 7'd84) ? 1'b1 : 1'b0);

assign exitcond_fu_291_p2 = ((w_index_reg_199 == 11'd1680) ? 1'b1 : 1'b0);

assign extLd_fu_317_p1 = data_V_q0;

assign grp_fu_333_p1 = 14'd1680;

assign grp_product_fu_264_ap_start = grp_product_fu_264_ap_start_reg;

assign iacc_2_fu_276_p2 = (iacc_reg_188 + 7'd1);

assign im_2_fu_327_p2 = (im_reg_222 + 3'd1);

assign in_index_2_fu_523_p2 = ($signed(in_index_reg_210) + $signed(32'd1));

assign ir_fu_297_p2 = (w_index_reg_199 + 11'd1);

assign ires_2_fu_549_p2 = (ires_reg_253 + 7'd1);

assign lhs_V_fu_442_p1 = p_Val2_s_reg_654;

assign mul_fu_560_p0 = 30'd19973;

assign mul_fu_560_p1 = mul_fu_560_p10;

assign mul_fu_560_p10 = w_index7_reg_243;

assign out_index_2_fu_517_p2 = (out_index7_reg_233 + 7'd14);

assign out_index_cast9_fu_313_p1 = outidx4_q0;

assign outidx4_address0 = tmp_s_fu_303_p1;

assign overflow_fu_481_p2 = (tmp_15_fu_475_p2 & p_Result_24_fu_467_p3);

assign p_Result_24_fu_467_p3 = p_Val2_19_fu_462_p2[32'd12];

assign p_Result_s_fu_454_p3 = ret_V_fu_448_p2[32'd13];

assign p_Val2_19_fu_462_p2 = ($signed(p_Val2_17_reg_648) + $signed(p_Val2_s_reg_654));

assign p_s_fu_535_p3 = ((tmp_90_fu_529_p2[0:0] === 1'b1) ? 32'd0 : in_index_2_fu_523_p2);

assign res_V_address0 = tmp_86_reg_698;

assign res_V_d0 = acc_V_q0;

assign ret_V_fu_448_p2 = ($signed(lhs_V_fu_442_p1) + $signed(rhs_V_fu_445_p1));

assign rhs_V_fu_445_p1 = p_Val2_17_reg_648;

assign tmp_100_fu_417_p3 = ((tmp_95_reg_626[0:0] === 1'b1) ? tmp_98_fu_405_p2 : tmp_96_reg_632);

assign tmp_101_fu_423_p1 = tmp_100_fu_417_p3;

assign tmp_102_fu_427_p2 = tmp_99_fu_410_p3 >> tmp_101_fu_423_p1;

assign tmp_103_fu_433_p1 = tmp_102_fu_427_p2[12:0];

assign tmp_15_fu_475_p2 = (p_Result_s_fu_454_p3 ^ 1'd1);

assign tmp_61_fu_343_p1 = grp_fu_333_p2;

assign tmp_63_fu_361_p1 = tmp_93_fu_348_p4;

assign tmp_63_fu_361_p2 = ($signed({{1'b0}, {8'd13}}) * $signed(tmp_63_fu_361_p1));

assign tmp_64_cast_fu_377_p1 = tmp_64_fu_371_p2;

assign tmp_64_fu_371_p2 = (7'd12 + tmp_94_fu_367_p1);

assign tmp_83_fu_308_p1 = in_index_reg_210;

assign tmp_84_fu_543_p2 = ((ires_reg_253 == 7'd84) ? 1'b1 : 1'b0);

assign tmp_85_fu_321_p2 = ((im_reg_222 < 3'd6) ? 1'b1 : 1'b0);

assign tmp_86_fu_555_p1 = ires_reg_253;

assign tmp_87_fu_437_p1 = out_index7_reg_233;

assign tmp_88_fu_487_p2 = (p_Result_24_fu_467_p3 ^ 1'd1);

assign tmp_89_fu_511_p2 = ((w_index_2_fu_505_p2 > 14'd10079) ? 1'b1 : 1'b0);

assign tmp_90_fu_529_p2 = (($signed(in_index_2_fu_523_p2) > $signed(32'd119)) ? 1'b1 : 1'b0);

assign tmp_93_fu_348_p4 = {{mul_reg_616[29:25]}};

assign tmp_94_fu_367_p1 = tmp_63_fu_361_p2[6:0];

assign tmp_95_fu_381_p2 = ((tmp_63_fu_361_p2 > tmp_64_cast_fu_377_p1) ? 1'b1 : 1'b0);

assign tmp_96_fu_387_p1 = tmp_63_fu_361_p2[6:0];

integer ap_tvar_int_0;

always @ (w14_V_load_cast_fu_391_p1) begin
    for (ap_tvar_int_0 = 78 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 77 - 0) begin
            tmp_97_fu_395_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            tmp_97_fu_395_p4[ap_tvar_int_0] = w14_V_load_cast_fu_391_p1[77 - ap_tvar_int_0];
        end
    end
end

assign tmp_98_fu_405_p2 = ($signed(7'd77) - $signed(tmp_96_reg_632));

assign tmp_99_fu_410_p3 = ((tmp_95_reg_626[0:0] === 1'b1) ? tmp_97_fu_395_p4 : w14_V_load_cast_fu_391_p1);

assign tmp_fu_282_p1 = iacc_reg_188;

assign tmp_s_fu_303_p1 = w_index_reg_199;

assign underflow_fu_493_p2 = (tmp_88_fu_487_p2 & p_Result_s_fu_454_p3);

assign w14_V_address0 = tmp_61_fu_343_p1;

assign w14_V_load_cast_fu_391_p1 = $signed(w14_V_q0);

assign w_index_2_fu_505_p2 = (w_index7_reg_243 + 14'd1680);

assign w_index_cast_fu_287_p1 = w_index_reg_199;

always @ (posedge ap_clk) begin
    w_index_cast_reg_574[13:11] <= 3'b000;
    extLd_reg_602[12] <= 1'b0;
    tmp_86_reg_698[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
end

endmodule //dense_large_rf_gt_ni_3
