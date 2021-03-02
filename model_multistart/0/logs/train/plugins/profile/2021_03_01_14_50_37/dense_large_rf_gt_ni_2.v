// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dense_large_rf_gt_ni_2 (
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

parameter    ap_ST_fsm_state1 = 26'd1;
parameter    ap_ST_fsm_state2 = 26'd2;
parameter    ap_ST_fsm_state3 = 26'd4;
parameter    ap_ST_fsm_state4 = 26'd8;
parameter    ap_ST_fsm_state5 = 26'd16;
parameter    ap_ST_fsm_state6 = 26'd32;
parameter    ap_ST_fsm_state7 = 26'd64;
parameter    ap_ST_fsm_state8 = 26'd128;
parameter    ap_ST_fsm_state9 = 26'd256;
parameter    ap_ST_fsm_state10 = 26'd512;
parameter    ap_ST_fsm_state11 = 26'd1024;
parameter    ap_ST_fsm_state12 = 26'd2048;
parameter    ap_ST_fsm_state13 = 26'd4096;
parameter    ap_ST_fsm_state14 = 26'd8192;
parameter    ap_ST_fsm_state15 = 26'd16384;
parameter    ap_ST_fsm_state16 = 26'd32768;
parameter    ap_ST_fsm_state17 = 26'd65536;
parameter    ap_ST_fsm_state18 = 26'd131072;
parameter    ap_ST_fsm_state19 = 26'd262144;
parameter    ap_ST_fsm_state20 = 26'd524288;
parameter    ap_ST_fsm_state21 = 26'd1048576;
parameter    ap_ST_fsm_state22 = 26'd2097152;
parameter    ap_ST_fsm_state23 = 26'd4194304;
parameter    ap_ST_fsm_state24 = 26'd8388608;
parameter    ap_ST_fsm_state25 = 26'd16777216;
parameter    ap_ST_fsm_state26 = 26'd33554432;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] data_V_address0;
output   data_V_ce0;
input  [11:0] data_V_q0;
output  [3:0] res_V_address0;
output   res_V_ce0;
output   res_V_we0;
output  [12:0] res_V_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg data_V_ce0;
reg res_V_ce0;
reg res_V_we0;

(* fsm_encoding = "none" *) reg   [25:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [8:0] outidx_address0;
reg    outidx_ce0;
wire   [2:0] outidx_q0;
wire   [8:0] w17_V_address0;
reg    w17_V_ce0;
wire   [14:0] w17_V_q0;
wire   [3:0] iacc_3_fu_266_p2;
wire    ap_CS_fsm_state2;
wire   [10:0] w_index_cast_fu_277_p1;
reg   [10:0] w_index_cast_reg_516;
wire    ap_CS_fsm_state3;
wire   [8:0] ir_fu_287_p2;
reg   [8:0] ir_reg_524;
wire   [0:0] exitcond_fu_281_p2;
wire   [3:0] out_index_cast_fu_303_p1;
wire    ap_CS_fsm_state4;
wire   [12:0] extLd_fu_307_p1;
reg   [12:0] extLd_reg_544;
wire   [0:0] tmp_106_fu_311_p3;
reg   [0:0] tmp_106_reg_549;
wire    ap_CS_fsm_state5;
wire   [1:0] im_3_fu_319_p2;
reg   [1:0] im_3_reg_553;
wire   [23:0] mul_fu_502_p2;
reg   [23:0] mul_reg_558;
wire    ap_CS_fsm_state19;
wire   [12:0] tmp_110_fu_373_p1;
reg   [12:0] tmp_110_reg_568;
wire    ap_CS_fsm_state20;
wire   [12:0] grp_product_fu_254_ap_return;
reg  signed [12:0] p_Val2_20_reg_573;
wire    ap_CS_fsm_state22;
wire    grp_product_fu_254_ap_ready;
wire    grp_product_fu_254_ap_done;
reg   [3:0] acc_V_addr_6_reg_579;
wire   [0:0] overflow_fu_423_p2;
reg   [0:0] overflow_reg_584;
wire    ap_CS_fsm_state23;
wire   [0:0] underflow_fu_435_p2;
reg   [0:0] underflow_reg_588;
wire   [0:0] brmerge8_fu_441_p2;
reg   [0:0] brmerge8_reg_592;
wire   [10:0] w_index_3_fu_447_p2;
wire    ap_CS_fsm_state24;
wire   [3:0] out_index_3_fu_459_p2;
wire   [0:0] tmp_96_fu_453_p2;
wire   [31:0] p_s_fu_477_p3;
wire   [3:0] ires_3_fu_491_p2;
reg   [3:0] ires_3_reg_617;
wire    ap_CS_fsm_state25;
wire   [63:0] tmp_93_fu_497_p1;
reg   [63:0] tmp_93_reg_622;
wire   [0:0] tmp_92_fu_485_p2;
reg   [3:0] acc_V_address0;
reg    acc_V_ce0;
reg    acc_V_we0;
reg   [12:0] acc_V_d0;
wire   [12:0] acc_V_q0;
wire    grp_product_fu_254_ap_start;
wire    grp_product_fu_254_ap_idle;
reg   [3:0] iacc_reg_178;
wire   [0:0] exitcond6_fu_260_p2;
reg   [8:0] w_index_reg_189;
reg  signed [31:0] in_index_reg_200;
reg   [1:0] im_reg_212;
reg   [3:0] out_index5_reg_223;
reg   [10:0] w_index5_reg_233;
reg   [3:0] ires_reg_243;
wire    ap_CS_fsm_state26;
reg    grp_product_fu_254_ap_start_reg;
wire    ap_CS_fsm_state21;
wire   [63:0] tmp_fu_272_p1;
wire   [63:0] tmp_s_fu_293_p1;
wire  signed [63:0] tmp_91_fu_298_p1;
wire   [63:0] tmp_52_fu_335_p1;
wire   [63:0] tmp_94_fu_377_p1;
wire   [12:0] p_Val2_22_fu_403_p2;
wire   [9:0] grp_fu_325_p1;
wire   [10:0] grp_fu_325_p2;
wire   [3:0] tmp_107_fu_344_p4;
wire  signed [3:0] tmp_54_fu_357_p1;
wire   [4:0] tmp_54_fu_357_p2;
wire  signed [25:0] w17_V_load_cast_fu_340_p1;
wire   [25:0] tmp_108_fu_363_p1;
wire   [25:0] tmp_109_fu_367_p2;
wire  signed [12:0] lhs_V_fu_382_p0;
wire  signed [13:0] lhs_V_fu_382_p1;
wire  signed [13:0] rhs_V_fu_386_p1;
wire   [13:0] ret_V_fu_389_p2;
wire  signed [12:0] p_Val2_22_fu_403_p1;
wire   [0:0] p_Result_s_fu_395_p3;
wire   [0:0] p_Result_25_fu_409_p3;
wire   [0:0] tmp_14_fu_417_p2;
wire   [0:0] tmp_95_fu_429_p2;
wire   [31:0] in_index_3_fu_465_p2;
wire   [0:0] tmp_97_fu_471_p2;
wire   [12:0] mul_fu_502_p0;
wire   [10:0] mul_fu_502_p1;
reg    grp_fu_325_ap_start;
wire    grp_fu_325_ap_done;
reg   [25:0] ap_NS_fsm;
wire   [23:0] mul_fu_502_p10;

// power-on initialization
initial begin
#0 ap_CS_fsm = 26'd1;
#0 grp_product_fu_254_ap_start_reg = 1'b0;
end

dense_large_rf_gt_ni_2_outidx #(
    .DataWidth( 3 ),
    .AddressRange( 420 ),
    .AddressWidth( 9 ))
outidx_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(outidx_address0),
    .ce0(outidx_ce0),
    .q0(outidx_q0)
);

dense_large_rf_gt_ni_2_w17_V #(
    .DataWidth( 15 ),
    .AddressRange( 420 ),
    .AddressWidth( 9 ))
w17_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(w17_V_address0),
    .ce0(w17_V_ce0),
    .q0(w17_V_q0)
);

dense_large_rf_gt_ni_2_acc_V #(
    .DataWidth( 13 ),
    .AddressRange( 10 ),
    .AddressWidth( 4 ))
acc_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(acc_V_address0),
    .ce0(acc_V_ce0),
    .we0(acc_V_we0),
    .d0(acc_V_d0),
    .q0(acc_V_q0)
);

product grp_product_fu_254(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_product_fu_254_ap_start),
    .ap_done(grp_product_fu_254_ap_done),
    .ap_idle(grp_product_fu_254_ap_idle),
    .ap_ready(grp_product_fu_254_ap_ready),
    .a_V(extLd_reg_544),
    .w_V(tmp_110_reg_568),
    .ap_return(grp_product_fu_254_ap_return)
);

myproject_urem_11ns_10ns_11_15_seq_1 #(
    .ID( 1 ),
    .NUM_STAGE( 15 ),
    .din0_WIDTH( 11 ),
    .din1_WIDTH( 10 ),
    .dout_WIDTH( 11 ))
myproject_urem_11ns_10ns_11_15_seq_1_U66(
    .clk(ap_clk),
    .reset(ap_rst),
    .start(grp_fu_325_ap_start),
    .done(grp_fu_325_ap_done),
    .din0(w_index5_reg_233),
    .din1(grp_fu_325_p1),
    .ce(1'b1),
    .dout(grp_fu_325_p2)
);

myproject_mul_mul_13ns_11ns_24_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 13 ),
    .din1_WIDTH( 11 ),
    .dout_WIDTH( 24 ))
myproject_mul_mul_13ns_11ns_24_1_1_U67(
    .din0(mul_fu_502_p0),
    .din1(mul_fu_502_p1),
    .dout(mul_fu_502_p2)
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
        grp_product_fu_254_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state21)) begin
            grp_product_fu_254_ap_start_reg <= 1'b1;
        end else if ((grp_product_fu_254_ap_ready == 1'b1)) begin
            grp_product_fu_254_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        iacc_reg_178 <= 4'd0;
    end else if (((exitcond6_fu_260_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        iacc_reg_178 <= iacc_3_fu_266_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_96_fu_453_p2 == 1'd0) & (tmp_106_reg_549 == 1'd0) & (1'b1 == ap_CS_fsm_state24))) begin
        im_reg_212 <= im_3_reg_553;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        im_reg_212 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond6_fu_260_p2 == 1'd1))) begin
        in_index_reg_200 <= 32'd0;
    end else if (((1'b1 == ap_CS_fsm_state24) & ((tmp_96_fu_453_p2 == 1'd1) | (tmp_106_reg_549 == 1'd1)))) begin
        in_index_reg_200 <= p_s_fu_477_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_281_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        ires_reg_243 <= 4'd0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        ires_reg_243 <= ires_3_reg_617;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_96_fu_453_p2 == 1'd0) & (tmp_106_reg_549 == 1'd0) & (1'b1 == ap_CS_fsm_state24))) begin
        out_index5_reg_223 <= out_index_3_fu_459_p2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        out_index5_reg_223 <= out_index_cast_fu_303_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_96_fu_453_p2 == 1'd0) & (tmp_106_reg_549 == 1'd0) & (1'b1 == ap_CS_fsm_state24))) begin
        w_index5_reg_233 <= w_index_3_fu_447_p2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        w_index5_reg_233 <= w_index_cast_reg_516;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond6_fu_260_p2 == 1'd1))) begin
        w_index_reg_189 <= 9'd0;
    end else if (((1'b1 == ap_CS_fsm_state24) & ((tmp_96_fu_453_p2 == 1'd1) | (tmp_106_reg_549 == 1'd1)))) begin
        w_index_reg_189 <= ir_reg_524;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state22) & (grp_product_fu_254_ap_done == 1'b1))) begin
        acc_V_addr_6_reg_579 <= tmp_94_fu_377_p1;
        p_Val2_20_reg_573 <= grp_product_fu_254_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        brmerge8_reg_592 <= brmerge8_fu_441_p2;
        overflow_reg_584 <= overflow_fu_423_p2;
        underflow_reg_588 <= underflow_fu_435_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        extLd_reg_544[11 : 0] <= extLd_fu_307_p1[11 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        im_3_reg_553 <= im_3_fu_319_p2;
        tmp_106_reg_549 <= im_reg_212[32'd1];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ir_reg_524 <= ir_fu_287_p2;
        w_index_cast_reg_516[8 : 0] <= w_index_cast_fu_277_p1[8 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        ires_3_reg_617 <= ires_3_fu_491_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        mul_reg_558 <= mul_fu_502_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        tmp_110_reg_568 <= tmp_110_fu_373_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_92_fu_485_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state25))) begin
        tmp_93_reg_622[3 : 0] <= tmp_93_fu_497_p1[3 : 0];
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        acc_V_address0 = tmp_93_fu_497_p1;
    end else if (((1'b1 == ap_CS_fsm_state23) | ((tmp_106_reg_549 == 1'd0) & (1'b1 == ap_CS_fsm_state24) & (brmerge8_reg_592 == 1'd1) & (overflow_reg_584 == 1'd1)) | ((overflow_reg_584 == 1'd0) & (tmp_106_reg_549 == 1'd0) & (1'b1 == ap_CS_fsm_state24) & (brmerge8_reg_592 == 1'd1) & (underflow_reg_588 == 1'd1)))) begin
        acc_V_address0 = acc_V_addr_6_reg_579;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        acc_V_address0 = tmp_94_fu_377_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        acc_V_address0 = tmp_fu_272_p1;
    end else begin
        acc_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state23) | ((tmp_106_reg_549 == 1'd0) & (1'b1 == ap_CS_fsm_state24) & (brmerge8_reg_592 == 1'd1) & (overflow_reg_584 == 1'd1)) | ((overflow_reg_584 == 1'd0) & (tmp_106_reg_549 == 1'd0) & (1'b1 == ap_CS_fsm_state24) & (brmerge8_reg_592 == 1'd1) & (underflow_reg_588 == 1'd1)) | ((1'b1 == ap_CS_fsm_state22) & (grp_product_fu_254_ap_done == 1'b1)))) begin
        acc_V_ce0 = 1'b1;
    end else begin
        acc_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_106_reg_549 == 1'd0) & (1'b1 == ap_CS_fsm_state24) & (brmerge8_reg_592 == 1'd1) & (overflow_reg_584 == 1'd1))) begin
        acc_V_d0 = 13'd4095;
    end else if (((overflow_reg_584 == 1'd0) & (tmp_106_reg_549 == 1'd0) & (1'b1 == ap_CS_fsm_state24) & (brmerge8_reg_592 == 1'd1) & (underflow_reg_588 == 1'd1))) begin
        acc_V_d0 = 13'd4096;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        acc_V_d0 = p_Val2_22_fu_403_p2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        acc_V_d0 = 13'd0;
    end else begin
        acc_V_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | ((exitcond6_fu_260_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((tmp_106_reg_549 == 1'd0) & (1'b1 == ap_CS_fsm_state24) & (brmerge8_reg_592 == 1'd1) & (overflow_reg_584 == 1'd1)) | ((overflow_reg_584 == 1'd0) & (tmp_106_reg_549 == 1'd0) & (1'b1 == ap_CS_fsm_state24) & (brmerge8_reg_592 == 1'd1) & (underflow_reg_588 == 1'd1)))) begin
        acc_V_we0 = 1'b1;
    end else begin
        acc_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state25) & (tmp_92_fu_485_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state25) & (tmp_92_fu_485_p2 == 1'd1))) begin
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
    if (((tmp_106_fu_311_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_325_ap_start = 1'b1;
    end else begin
        grp_fu_325_ap_start = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        outidx_ce0 = 1'b1;
    end else begin
        outidx_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        res_V_ce0 = 1'b1;
    end else begin
        res_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        res_V_we0 = 1'b1;
    end else begin
        res_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        w17_V_ce0 = 1'b1;
    end else begin
        w17_V_ce0 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond6_fu_260_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((exitcond_fu_281_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (tmp_106_fu_311_p3 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state24;
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
            if (((1'b1 == ap_CS_fsm_state22) & (grp_product_fu_254_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            if (((1'b1 == ap_CS_fsm_state24) & ((tmp_96_fu_453_p2 == 1'd1) | (tmp_106_reg_549 == 1'd1)))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state25 : begin
            if (((1'b1 == ap_CS_fsm_state25) & (tmp_92_fu_485_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state26;
            end
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];

assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];

assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];

assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];

assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];

assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];

assign ap_CS_fsm_state26 = ap_CS_fsm[32'd25];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign brmerge8_fu_441_p2 = (p_Result_s_fu_395_p3 ^ p_Result_25_fu_409_p3);

assign data_V_address0 = tmp_91_fu_298_p1;

assign exitcond6_fu_260_p2 = ((iacc_reg_178 == 4'd10) ? 1'b1 : 1'b0);

assign exitcond_fu_281_p2 = ((w_index_reg_189 == 9'd420) ? 1'b1 : 1'b0);

assign extLd_fu_307_p1 = data_V_q0;

assign grp_fu_325_p1 = 11'd420;

assign grp_product_fu_254_ap_start = grp_product_fu_254_ap_start_reg;

assign iacc_3_fu_266_p2 = (iacc_reg_178 + 4'd1);

assign im_3_fu_319_p2 = (im_reg_212 + 2'd1);

assign in_index_3_fu_465_p2 = ($signed(in_index_reg_200) + $signed(32'd1));

assign ir_fu_287_p2 = (w_index_reg_189 + 9'd1);

assign ires_3_fu_491_p2 = (ires_reg_243 + 4'd1);

assign lhs_V_fu_382_p0 = acc_V_q0;

assign lhs_V_fu_382_p1 = lhs_V_fu_382_p0;

assign mul_fu_502_p0 = 24'd2497;

assign mul_fu_502_p1 = mul_fu_502_p10;

assign mul_fu_502_p10 = w_index5_reg_233;

assign out_index_3_fu_459_p2 = (out_index5_reg_223 + 4'd5);

assign out_index_cast_fu_303_p1 = outidx_q0;

assign outidx_address0 = tmp_s_fu_293_p1;

assign overflow_fu_423_p2 = (tmp_14_fu_417_p2 & p_Result_25_fu_409_p3);

assign p_Result_25_fu_409_p3 = p_Val2_22_fu_403_p2[32'd12];

assign p_Result_s_fu_395_p3 = ret_V_fu_389_p2[32'd13];

assign p_Val2_22_fu_403_p1 = acc_V_q0;

assign p_Val2_22_fu_403_p2 = ($signed(p_Val2_20_reg_573) + $signed(p_Val2_22_fu_403_p1));

assign p_s_fu_477_p3 = ((tmp_97_fu_471_p2[0:0] === 1'b1) ? 32'd0 : in_index_3_fu_465_p2);

assign res_V_address0 = tmp_93_reg_622;

assign res_V_d0 = acc_V_q0;

assign ret_V_fu_389_p2 = ($signed(lhs_V_fu_382_p1) + $signed(rhs_V_fu_386_p1));

assign rhs_V_fu_386_p1 = p_Val2_20_reg_573;

assign tmp_106_fu_311_p3 = im_reg_212[32'd1];

assign tmp_107_fu_344_p4 = {{mul_reg_558[23:20]}};

assign tmp_108_fu_363_p1 = tmp_54_fu_357_p2;

assign tmp_109_fu_367_p2 = w17_V_load_cast_fu_340_p1 >> tmp_108_fu_363_p1;

assign tmp_110_fu_373_p1 = tmp_109_fu_367_p2[12:0];

assign tmp_14_fu_417_p2 = (p_Result_s_fu_395_p3 ^ 1'd1);

assign tmp_52_fu_335_p1 = grp_fu_325_p2;

assign tmp_54_fu_357_p1 = tmp_107_fu_344_p4;

assign tmp_54_fu_357_p2 = ($signed({{1'b0}, {5'd13}}) * $signed(tmp_54_fu_357_p1));

assign tmp_91_fu_298_p1 = in_index_reg_200;

assign tmp_92_fu_485_p2 = ((ires_reg_243 == 4'd10) ? 1'b1 : 1'b0);

assign tmp_93_fu_497_p1 = ires_reg_243;

assign tmp_94_fu_377_p1 = out_index5_reg_223;

assign tmp_95_fu_429_p2 = (p_Result_25_fu_409_p3 ^ 1'd1);

assign tmp_96_fu_453_p2 = ((w_index_3_fu_447_p2 > 11'd839) ? 1'b1 : 1'b0);

assign tmp_97_fu_471_p2 = (($signed(in_index_3_fu_465_p2) > $signed(32'd83)) ? 1'b1 : 1'b0);

assign tmp_fu_272_p1 = iacc_reg_178;

assign tmp_s_fu_293_p1 = w_index_reg_189;

assign underflow_fu_435_p2 = (tmp_95_fu_429_p2 & p_Result_s_fu_395_p3);

assign w17_V_address0 = tmp_52_fu_335_p1;

assign w17_V_load_cast_fu_340_p1 = $signed(w17_V_q0);

assign w_index_3_fu_447_p2 = (w_index5_reg_233 + 11'd420);

assign w_index_cast_fu_277_p1 = w_index_reg_189;

always @ (posedge ap_clk) begin
    w_index_cast_reg_516[10:9] <= 2'b00;
    extLd_reg_544[12] <= 1'b0;
    tmp_93_reg_622[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end

endmodule //dense_large_rf_gt_ni_2