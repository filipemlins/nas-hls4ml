// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dense_large_rf_gt_ni (
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

parameter    ap_ST_fsm_state1 = 16'd1;
parameter    ap_ST_fsm_state2 = 16'd2;
parameter    ap_ST_fsm_state3 = 16'd4;
parameter    ap_ST_fsm_state4 = 16'd8;
parameter    ap_ST_fsm_state5 = 16'd16;
parameter    ap_ST_fsm_state6 = 16'd32;
parameter    ap_ST_fsm_state7 = 16'd64;
parameter    ap_ST_fsm_state8 = 16'd128;
parameter    ap_ST_fsm_state9 = 16'd256;
parameter    ap_ST_fsm_state10 = 16'd512;
parameter    ap_ST_fsm_state11 = 16'd1024;
parameter    ap_ST_fsm_state12 = 16'd2048;
parameter    ap_ST_fsm_state13 = 16'd4096;
parameter    ap_ST_fsm_state14 = 16'd8192;
parameter    ap_ST_fsm_state15 = 16'd16384;
parameter    ap_ST_fsm_state16 = 16'd32768;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] data_V_address0;
output   data_V_ce0;
input  [13:0] data_V_q0;
output  [3:0] res_V_address0;
output   res_V_ce0;
output   res_V_we0;
output  [13:0] res_V_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg data_V_ce0;
reg res_V_ce0;
reg res_V_we0;

(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [7:0] outidx6_address0;
reg    outidx6_ce0;
wire   [2:0] outidx6_q0;
wire   [7:0] w7_V_address0;
reg    w7_V_ce0;
wire   [18:0] w7_V_q0;
wire   [13:0] acc_V_q0;
reg  signed [13:0] reg_269;
wire    ap_CS_fsm_state10;
wire    grp_product_fu_263_ap_ready;
wire    grp_product_fu_263_ap_done;
wire    ap_CS_fsm_state15;
wire   [4:0] iacc_1_fu_280_p2;
wire    ap_CS_fsm_state2;
wire   [9:0] w_index_cast_fu_291_p1;
reg   [9:0] w_index_cast_reg_546;
wire    ap_CS_fsm_state3;
wire   [8:0] ir_fu_301_p2;
reg   [8:0] ir_reg_554;
wire   [0:0] exitcond_fu_295_p2;
reg   [2:0] out_index_reg_564;
wire    ap_CS_fsm_state4;
wire   [4:0] out_index_cast_fu_317_p1;
wire    ap_CS_fsm_state5;
reg   [13:0] data_V_load_reg_579;
wire   [0:0] tmp_91_fu_320_p3;
reg   [0:0] tmp_91_reg_584;
wire    ap_CS_fsm_state6;
wire   [1:0] im_1_fu_328_p2;
reg   [1:0] im_1_reg_588;
reg   [18:0] w7_V_load_reg_598;
wire    ap_CS_fsm_state7;
wire   [4:0] tmp_96_fu_381_p2;
reg   [4:0] tmp_96_reg_603;
wire   [13:0] tmp_99_fu_399_p1;
reg   [13:0] tmp_99_reg_608;
wire    ap_CS_fsm_state8;
reg   [3:0] acc_V_addr_2_reg_613;
wire    ap_CS_fsm_state9;
wire   [13:0] grp_product_fu_263_ap_return;
reg  signed [13:0] p_Val2_5_reg_618;
wire   [0:0] overflow_fu_449_p2;
reg   [0:0] overflow_reg_624;
wire    ap_CS_fsm_state11;
wire   [0:0] underflow_fu_461_p2;
reg   [0:0] underflow_reg_628;
wire   [0:0] brmerge6_fu_467_p2;
reg   [0:0] brmerge6_reg_632;
wire   [9:0] w_index_1_fu_473_p2;
wire    ap_CS_fsm_state12;
wire   [4:0] out_index_1_fu_487_p2;
wire   [0:0] tmp_102_fu_479_p3;
wire   [31:0] in_index_1_fu_493_p2;
reg   [31:0] in_index_1_reg_649;
reg   [26:0] tmp_103_reg_654;
wire   [31:0] p_s_fu_514_p3;
wire    ap_CS_fsm_state13;
wire   [4:0] ires_1_fu_527_p2;
reg   [4:0] ires_1_reg_667;
wire    ap_CS_fsm_state14;
wire   [63:0] tmp_71_fu_533_p1;
reg   [63:0] tmp_71_reg_672;
wire   [0:0] tmp_69_fu_521_p2;
reg   [3:0] acc_V_address0;
reg    acc_V_ce0;
reg    acc_V_we0;
reg   [13:0] acc_V_d0;
wire    grp_product_fu_263_ap_start;
wire    grp_product_fu_263_ap_idle;
reg   [4:0] iacc_reg_187;
wire   [0:0] exitcond4_fu_274_p2;
reg   [8:0] w_index_reg_198;
reg  signed [31:0] in_index_reg_209;
reg   [1:0] im_reg_221;
reg   [4:0] out_index1_reg_232;
reg   [9:0] w_index1_reg_242;
reg   [4:0] ires_reg_252;
wire    ap_CS_fsm_state16;
reg    grp_product_fu_263_ap_start_reg;
wire   [63:0] tmp_fu_286_p1;
wire   [63:0] tmp_s_fu_307_p1;
wire  signed [63:0] tmp_68_fu_312_p1;
wire   [63:0] tmp_5_fu_338_p1;
wire   [63:0] tmp_72_fu_403_p1;
wire   [13:0] p_Val2_7_fu_429_p2;
wire   [7:0] tmp_92_fu_334_p1;
wire   [1:0] tmp_13_fu_343_p4;
wire   [0:0] tmp_93_fu_353_p3;
wire   [2:0] p_shl8_fu_361_p3;
wire   [4:0] tmp_94_fu_369_p3;
wire   [4:0] tmp_95_fu_377_p1;
wire  signed [27:0] w7_V_load_cast_fu_387_p1;
wire   [27:0] tmp_97_fu_390_p1;
wire   [27:0] tmp_98_fu_393_p2;
wire  signed [14:0] lhs_V_fu_408_p1;
wire  signed [14:0] rhs_V_fu_412_p1;
wire   [14:0] ret_V_fu_415_p2;
wire   [0:0] p_Result_s_fu_421_p3;
wire   [0:0] p_Result_13_fu_435_p3;
wire   [0:0] tmp_15_fu_443_p2;
wire   [0:0] tmp_73_fu_455_p2;
wire   [0:0] icmp_fu_509_p2;
reg   [15:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 16'd1;
#0 grp_product_fu_263_ap_start_reg = 1'b0;
end

dense_large_rf_gt_ni_outidx6 #(
    .DataWidth( 3 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
outidx6_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(outidx6_address0),
    .ce0(outidx6_ce0),
    .q0(outidx6_q0)
);

dense_large_rf_gt_ni_w7_V #(
    .DataWidth( 19 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
w7_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(w7_V_address0),
    .ce0(w7_V_ce0),
    .q0(w7_V_q0)
);

dense_large_rf_gt_ni_acc_V #(
    .DataWidth( 14 ),
    .AddressRange( 16 ),
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

product grp_product_fu_263(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_product_fu_263_ap_start),
    .ap_done(grp_product_fu_263_ap_done),
    .ap_idle(grp_product_fu_263_ap_idle),
    .ap_ready(grp_product_fu_263_ap_ready),
    .a_V(data_V_load_reg_579),
    .w_V(tmp_99_reg_608),
    .ap_return(grp_product_fu_263_ap_return)
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
        grp_product_fu_263_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_product_fu_263_ap_start_reg <= 1'b1;
        end else if ((grp_product_fu_263_ap_ready == 1'b1)) begin
            grp_product_fu_263_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        iacc_reg_187 <= 5'd0;
    end else if (((1'b1 == ap_CS_fsm_state2) & (exitcond4_fu_274_p2 == 1'd0))) begin
        iacc_reg_187 <= iacc_1_fu_280_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) & (tmp_102_fu_479_p3 == 1'd0) & (tmp_91_reg_584 == 1'd0))) begin
        im_reg_221 <= im_1_reg_588;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        im_reg_221 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond4_fu_274_p2 == 1'd1))) begin
        in_index_reg_209 <= 32'd0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        in_index_reg_209 <= p_s_fu_514_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_295_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        ires_reg_252 <= 5'd0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        ires_reg_252 <= ires_1_reg_667;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) & (tmp_102_fu_479_p3 == 1'd0) & (tmp_91_reg_584 == 1'd0))) begin
        out_index1_reg_232 <= out_index_1_fu_487_p2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        out_index1_reg_232 <= out_index_cast_fu_317_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) & (tmp_102_fu_479_p3 == 1'd0) & (tmp_91_reg_584 == 1'd0))) begin
        w_index1_reg_242 <= w_index_1_fu_473_p2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        w_index1_reg_242 <= w_index_cast_reg_546;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond4_fu_274_p2 == 1'd1))) begin
        w_index_reg_198 <= 9'd0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        w_index_reg_198 <= ir_reg_554;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        acc_V_addr_2_reg_613 <= tmp_72_fu_403_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        brmerge6_reg_632 <= brmerge6_fu_467_p2;
        overflow_reg_624 <= overflow_fu_449_p2;
        underflow_reg_628 <= underflow_fu_461_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        data_V_load_reg_579 <= data_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        im_1_reg_588 <= im_1_fu_328_p2;
        tmp_91_reg_584 <= im_reg_221[32'd1];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) & ((tmp_102_fu_479_p3 == 1'd1) | (tmp_91_reg_584 == 1'd1)))) begin
        in_index_1_reg_649 <= in_index_1_fu_493_p2;
        tmp_103_reg_654 <= {{in_index_1_fu_493_p2[31:5]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ir_reg_554 <= ir_fu_301_p2;
        w_index_cast_reg_546[8 : 0] <= w_index_cast_fu_291_p1[8 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        ires_1_reg_667 <= ires_1_fu_527_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        out_index_reg_564 <= outidx6_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_product_fu_263_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        p_Val2_5_reg_618 <= grp_product_fu_263_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) | ((grp_product_fu_263_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        reg_269 <= acc_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) & (tmp_69_fu_521_p2 == 1'd0))) begin
        tmp_71_reg_672[4 : 0] <= tmp_71_fu_533_p1[4 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_96_reg_603[4 : 1] <= tmp_96_fu_381_p2[4 : 1];
        w7_V_load_reg_598 <= w7_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        tmp_99_reg_608 <= tmp_99_fu_399_p1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        acc_V_address0 = tmp_71_fu_533_p1;
    end else if (((1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state12) & (brmerge6_reg_632 == 1'd1) & (overflow_reg_624 == 1'd1) & (tmp_91_reg_584 == 1'd0)) | ((1'b1 == ap_CS_fsm_state12) & (brmerge6_reg_632 == 1'd1) & (underflow_reg_628 == 1'd1) & (overflow_reg_624 == 1'd0) & (tmp_91_reg_584 == 1'd0)))) begin
        acc_V_address0 = acc_V_addr_2_reg_613;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        acc_V_address0 = tmp_72_fu_403_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        acc_V_address0 = tmp_fu_286_p1;
    end else begin
        acc_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | ((1'b1 == ap_CS_fsm_state12) & (brmerge6_reg_632 == 1'd1) & (overflow_reg_624 == 1'd1) & (tmp_91_reg_584 == 1'd0)) | ((1'b1 == ap_CS_fsm_state12) & (brmerge6_reg_632 == 1'd1) & (underflow_reg_628 == 1'd1) & (overflow_reg_624 == 1'd0) & (tmp_91_reg_584 == 1'd0)))) begin
        acc_V_ce0 = 1'b1;
    end else begin
        acc_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (brmerge6_reg_632 == 1'd1) & (overflow_reg_624 == 1'd1) & (tmp_91_reg_584 == 1'd0))) begin
        acc_V_d0 = 14'd8191;
    end else if (((1'b1 == ap_CS_fsm_state12) & (brmerge6_reg_632 == 1'd1) & (underflow_reg_628 == 1'd1) & (overflow_reg_624 == 1'd0) & (tmp_91_reg_584 == 1'd0))) begin
        acc_V_d0 = 14'd8192;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        acc_V_d0 = p_Val2_7_fu_429_p2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        acc_V_d0 = 14'd0;
    end else begin
        acc_V_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state2) & (exitcond4_fu_274_p2 == 1'd0)) | ((1'b1 == ap_CS_fsm_state12) & (brmerge6_reg_632 == 1'd1) & (overflow_reg_624 == 1'd1) & (tmp_91_reg_584 == 1'd0)) | ((1'b1 == ap_CS_fsm_state12) & (brmerge6_reg_632 == 1'd1) & (underflow_reg_628 == 1'd1) & (overflow_reg_624 == 1'd0) & (tmp_91_reg_584 == 1'd0)))) begin
        acc_V_we0 = 1'b1;
    end else begin
        acc_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state14) & (tmp_69_fu_521_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state14) & (tmp_69_fu_521_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
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
    if ((1'b1 == ap_CS_fsm_state3)) begin
        outidx6_ce0 = 1'b1;
    end else begin
        outidx6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        res_V_ce0 = 1'b1;
    end else begin
        res_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        res_V_we0 = 1'b1;
    end else begin
        res_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        w7_V_ce0 = 1'b1;
    end else begin
        w7_V_ce0 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond4_fu_274_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((exitcond_fu_295_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (tmp_91_fu_320_p3 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
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
            if (((grp_product_fu_263_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == ap_CS_fsm_state12) & (tmp_102_fu_479_p3 == 1'd0) & (tmp_91_reg_584 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state14 : begin
            if (((1'b1 == ap_CS_fsm_state14) & (tmp_69_fu_521_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
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

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign brmerge6_fu_467_p2 = (p_Result_s_fu_421_p3 ^ p_Result_13_fu_435_p3);

assign data_V_address0 = tmp_68_fu_312_p1;

assign exitcond4_fu_274_p2 = ((iacc_reg_187 == 5'd16) ? 1'b1 : 1'b0);

assign exitcond_fu_295_p2 = ((w_index_reg_198 == 9'd256) ? 1'b1 : 1'b0);

assign grp_product_fu_263_ap_start = grp_product_fu_263_ap_start_reg;

assign iacc_1_fu_280_p2 = (iacc_reg_187 + 5'd1);

assign icmp_fu_509_p2 = (($signed(tmp_103_reg_654) > $signed(27'd0)) ? 1'b1 : 1'b0);

assign im_1_fu_328_p2 = (im_reg_221 + 2'd1);

assign in_index_1_fu_493_p2 = ($signed(in_index_reg_209) + $signed(32'd1));

assign ir_fu_301_p2 = (w_index_reg_198 + 9'd1);

assign ires_1_fu_527_p2 = (ires_reg_252 + 5'd1);

assign lhs_V_fu_408_p1 = reg_269;

assign out_index_1_fu_487_p2 = (out_index1_reg_232 + 5'd8);

assign out_index_cast_fu_317_p1 = out_index_reg_564;

assign outidx6_address0 = tmp_s_fu_307_p1;

assign overflow_fu_449_p2 = (tmp_15_fu_443_p2 & p_Result_13_fu_435_p3);

assign p_Result_13_fu_435_p3 = p_Val2_7_fu_429_p2[32'd13];

assign p_Result_s_fu_421_p3 = ret_V_fu_415_p2[32'd14];

assign p_Val2_7_fu_429_p2 = ($signed(reg_269) + $signed(p_Val2_5_reg_618));

assign p_s_fu_514_p3 = ((icmp_fu_509_p2[0:0] === 1'b1) ? 32'd0 : in_index_1_reg_649);

assign p_shl8_fu_361_p3 = {{tmp_13_fu_343_p4}, {1'd0}};

assign res_V_address0 = tmp_71_reg_672;

assign res_V_d0 = reg_269;

assign ret_V_fu_415_p2 = ($signed(lhs_V_fu_408_p1) + $signed(rhs_V_fu_412_p1));

assign rhs_V_fu_412_p1 = p_Val2_5_reg_618;

assign tmp_102_fu_479_p3 = w_index_1_fu_473_p2[32'd9];

assign tmp_13_fu_343_p4 = {{w_index1_reg_242[9:8]}};

assign tmp_15_fu_443_p2 = (p_Result_s_fu_421_p3 ^ 1'd1);

assign tmp_5_fu_338_p1 = tmp_92_fu_334_p1;

assign tmp_68_fu_312_p1 = in_index_reg_209;

assign tmp_69_fu_521_p2 = ((ires_reg_252 == 5'd16) ? 1'b1 : 1'b0);

assign tmp_71_fu_533_p1 = ires_reg_252;

assign tmp_72_fu_403_p1 = out_index1_reg_232;

assign tmp_73_fu_455_p2 = (p_Result_13_fu_435_p3 ^ 1'd1);

assign tmp_91_fu_320_p3 = im_reg_221[32'd1];

assign tmp_92_fu_334_p1 = w_index1_reg_242[7:0];

assign tmp_93_fu_353_p3 = w_index1_reg_242[32'd8];

assign tmp_94_fu_369_p3 = {{tmp_93_fu_353_p3}, {4'd0}};

assign tmp_95_fu_377_p1 = p_shl8_fu_361_p3;

assign tmp_96_fu_381_p2 = (tmp_94_fu_369_p3 - tmp_95_fu_377_p1);

assign tmp_97_fu_390_p1 = tmp_96_reg_603;

assign tmp_98_fu_393_p2 = w7_V_load_cast_fu_387_p1 >> tmp_97_fu_390_p1;

assign tmp_99_fu_399_p1 = tmp_98_fu_393_p2[13:0];

assign tmp_fu_286_p1 = iacc_reg_187;

assign tmp_s_fu_307_p1 = w_index_reg_198;

assign underflow_fu_461_p2 = (tmp_73_fu_455_p2 & p_Result_s_fu_421_p3);

assign w7_V_address0 = tmp_5_fu_338_p1;

assign w7_V_load_cast_fu_387_p1 = $signed(w7_V_load_reg_598);

assign w_index_1_fu_473_p2 = (w_index1_reg_242 + 10'd256);

assign w_index_cast_fu_291_p1 = w_index_reg_198;

always @ (posedge ap_clk) begin
    w_index_cast_reg_546[9] <= 1'b0;
    tmp_96_reg_603[0] <= 1'b0;
    tmp_71_reg_672[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end

endmodule //dense_large_rf_gt_ni
