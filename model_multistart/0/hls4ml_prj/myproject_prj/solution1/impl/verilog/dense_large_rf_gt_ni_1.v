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
output  [3:0] data_V_address0;
output   data_V_ce0;
input  [13:0] data_V_q0;
output  [2:0] res_V_address0;
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
wire   [5:0] outidx7_address0;
reg    outidx7_ce0;
wire   [1:0] outidx7_q0;
wire   [5:0] w3_V_address0;
reg    w3_V_ce0;
wire   [17:0] w3_V_q0;
wire   [13:0] acc_V_q0;
reg  signed [13:0] reg_267;
wire    ap_CS_fsm_state10;
wire    grp_product_fu_261_ap_ready;
wire    grp_product_fu_261_ap_done;
wire    ap_CS_fsm_state15;
wire   [3:0] iacc_2_fu_278_p2;
wire    ap_CS_fsm_state2;
wire   [7:0] w_index_cast_fu_289_p1;
reg   [7:0] w_index_cast_reg_544;
wire    ap_CS_fsm_state3;
wire   [6:0] ir_fu_299_p2;
reg   [6:0] ir_reg_552;
wire   [0:0] exitcond_fu_293_p2;
reg   [1:0] out_index_reg_562;
wire    ap_CS_fsm_state4;
wire   [3:0] out_index_cast_fu_315_p1;
wire    ap_CS_fsm_state5;
reg   [13:0] data_V_load_reg_577;
wire   [0:0] tmp_78_fu_318_p3;
reg   [0:0] tmp_78_reg_582;
wire    ap_CS_fsm_state6;
wire   [1:0] im_2_fu_326_p2;
reg   [1:0] im_2_reg_586;
reg   [17:0] w3_V_load_reg_596;
wire    ap_CS_fsm_state7;
wire   [4:0] tmp_83_fu_379_p2;
reg   [4:0] tmp_83_reg_601;
wire   [13:0] tmp_86_fu_397_p1;
reg   [13:0] tmp_86_reg_606;
wire    ap_CS_fsm_state8;
reg   [2:0] acc_V_addr_4_reg_611;
wire    ap_CS_fsm_state9;
wire   [13:0] grp_product_fu_261_ap_return;
reg  signed [13:0] p_Val2_8_reg_616;
wire   [0:0] overflow_fu_447_p2;
reg   [0:0] overflow_reg_622;
wire    ap_CS_fsm_state11;
wire   [0:0] underflow_fu_459_p2;
reg   [0:0] underflow_reg_626;
wire   [0:0] brmerge7_fu_465_p2;
reg   [0:0] brmerge7_reg_630;
wire   [7:0] w_index_2_fu_471_p2;
wire    ap_CS_fsm_state12;
wire   [3:0] out_index_2_fu_485_p2;
wire   [0:0] tmp_89_fu_477_p3;
wire   [31:0] in_index_2_fu_491_p2;
reg   [31:0] in_index_2_reg_647;
reg   [27:0] tmp_90_reg_652;
wire   [31:0] p_s_fu_512_p3;
wire    ap_CS_fsm_state13;
wire   [3:0] ires_2_fu_525_p2;
reg   [3:0] ires_2_reg_665;
wire    ap_CS_fsm_state14;
wire   [63:0] tmp_74_fu_531_p1;
reg   [63:0] tmp_74_reg_670;
wire   [0:0] tmp_73_fu_519_p2;
reg   [2:0] acc_V_address0;
reg    acc_V_ce0;
reg    acc_V_we0;
reg   [13:0] acc_V_d0;
wire    grp_product_fu_261_ap_start;
wire    grp_product_fu_261_ap_idle;
reg   [3:0] iacc_reg_185;
wire   [0:0] exitcond5_fu_272_p2;
reg   [6:0] w_index_reg_196;
reg  signed [31:0] in_index_reg_207;
reg   [1:0] im_reg_219;
reg   [3:0] out_index3_reg_230;
reg   [7:0] w_index3_reg_240;
reg   [3:0] ires_reg_250;
wire    ap_CS_fsm_state16;
reg    grp_product_fu_261_ap_start_reg;
wire   [63:0] tmp_fu_284_p1;
wire   [63:0] tmp_s_fu_305_p1;
wire  signed [63:0] tmp_72_fu_310_p1;
wire   [63:0] tmp_14_fu_336_p1;
wire   [63:0] tmp_75_fu_401_p1;
wire   [13:0] p_Val2_21_fu_427_p2;
wire   [5:0] tmp_79_fu_332_p1;
wire   [1:0] tmp_11_fu_341_p4;
wire   [0:0] tmp_80_fu_351_p3;
wire   [2:0] p_shl8_fu_359_p3;
wire   [4:0] tmp_81_fu_367_p3;
wire   [4:0] tmp_82_fu_375_p1;
wire  signed [27:0] w3_V_load_cast_fu_385_p1;
wire   [27:0] tmp_84_fu_388_p1;
wire   [27:0] tmp_85_fu_391_p2;
wire  signed [14:0] lhs_V_fu_406_p1;
wire  signed [14:0] rhs_V_fu_410_p1;
wire   [14:0] ret_V_fu_413_p2;
wire   [0:0] p_Result_s_fu_419_p3;
wire   [0:0] p_Result_12_fu_433_p3;
wire   [0:0] tmp_19_fu_441_p2;
wire   [0:0] tmp_76_fu_453_p2;
wire   [0:0] icmp_fu_507_p2;
reg   [15:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 16'd1;
#0 grp_product_fu_261_ap_start_reg = 1'b0;
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
    .DataWidth( 18 ),
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
    .DataWidth( 14 ),
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

product grp_product_fu_261(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_product_fu_261_ap_start),
    .ap_done(grp_product_fu_261_ap_done),
    .ap_idle(grp_product_fu_261_ap_idle),
    .ap_ready(grp_product_fu_261_ap_ready),
    .a_V(data_V_load_reg_577),
    .w_V(tmp_86_reg_606),
    .ap_return(grp_product_fu_261_ap_return)
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
        grp_product_fu_261_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_product_fu_261_ap_start_reg <= 1'b1;
        end else if ((grp_product_fu_261_ap_ready == 1'b1)) begin
            grp_product_fu_261_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        iacc_reg_185 <= 4'd0;
    end else if (((1'b1 == ap_CS_fsm_state2) & (exitcond5_fu_272_p2 == 1'd0))) begin
        iacc_reg_185 <= iacc_2_fu_278_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) & (tmp_89_fu_477_p3 == 1'd0) & (tmp_78_reg_582 == 1'd0))) begin
        im_reg_219 <= im_2_reg_586;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        im_reg_219 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond5_fu_272_p2 == 1'd1))) begin
        in_index_reg_207 <= 32'd0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        in_index_reg_207 <= p_s_fu_512_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_293_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        ires_reg_250 <= 4'd0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        ires_reg_250 <= ires_2_reg_665;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) & (tmp_89_fu_477_p3 == 1'd0) & (tmp_78_reg_582 == 1'd0))) begin
        out_index3_reg_230 <= out_index_2_fu_485_p2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        out_index3_reg_230 <= out_index_cast_fu_315_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) & (tmp_89_fu_477_p3 == 1'd0) & (tmp_78_reg_582 == 1'd0))) begin
        w_index3_reg_240 <= w_index_2_fu_471_p2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        w_index3_reg_240 <= w_index_cast_reg_544;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond5_fu_272_p2 == 1'd1))) begin
        w_index_reg_196 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        w_index_reg_196 <= ir_reg_552;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        acc_V_addr_4_reg_611 <= tmp_75_fu_401_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        brmerge7_reg_630 <= brmerge7_fu_465_p2;
        overflow_reg_622 <= overflow_fu_447_p2;
        underflow_reg_626 <= underflow_fu_459_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        data_V_load_reg_577 <= data_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        im_2_reg_586 <= im_2_fu_326_p2;
        tmp_78_reg_582 <= im_reg_219[32'd1];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) & ((tmp_89_fu_477_p3 == 1'd1) | (tmp_78_reg_582 == 1'd1)))) begin
        in_index_2_reg_647 <= in_index_2_fu_491_p2;
        tmp_90_reg_652 <= {{in_index_2_fu_491_p2[31:4]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ir_reg_552 <= ir_fu_299_p2;
        w_index_cast_reg_544[6 : 0] <= w_index_cast_fu_289_p1[6 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        ires_2_reg_665 <= ires_2_fu_525_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        out_index_reg_562 <= outidx7_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_product_fu_261_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        p_Val2_8_reg_616 <= grp_product_fu_261_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) | ((grp_product_fu_261_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        reg_267 <= acc_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) & (tmp_73_fu_519_p2 == 1'd0))) begin
        tmp_74_reg_670[3 : 0] <= tmp_74_fu_531_p1[3 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_83_reg_601[4 : 1] <= tmp_83_fu_379_p2[4 : 1];
        w3_V_load_reg_596 <= w3_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        tmp_86_reg_606 <= tmp_86_fu_397_p1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        acc_V_address0 = tmp_74_fu_531_p1;
    end else if (((1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state12) & (brmerge7_reg_630 == 1'd1) & (overflow_reg_622 == 1'd1) & (tmp_78_reg_582 == 1'd0)) | ((1'b1 == ap_CS_fsm_state12) & (brmerge7_reg_630 == 1'd1) & (underflow_reg_626 == 1'd1) & (overflow_reg_622 == 1'd0) & (tmp_78_reg_582 == 1'd0)))) begin
        acc_V_address0 = acc_V_addr_4_reg_611;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        acc_V_address0 = tmp_75_fu_401_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        acc_V_address0 = tmp_fu_284_p1;
    end else begin
        acc_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | ((1'b1 == ap_CS_fsm_state12) & (brmerge7_reg_630 == 1'd1) & (overflow_reg_622 == 1'd1) & (tmp_78_reg_582 == 1'd0)) | ((1'b1 == ap_CS_fsm_state12) & (brmerge7_reg_630 == 1'd1) & (underflow_reg_626 == 1'd1) & (overflow_reg_622 == 1'd0) & (tmp_78_reg_582 == 1'd0)))) begin
        acc_V_ce0 = 1'b1;
    end else begin
        acc_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (brmerge7_reg_630 == 1'd1) & (overflow_reg_622 == 1'd1) & (tmp_78_reg_582 == 1'd0))) begin
        acc_V_d0 = 14'd8191;
    end else if (((1'b1 == ap_CS_fsm_state12) & (brmerge7_reg_630 == 1'd1) & (underflow_reg_626 == 1'd1) & (overflow_reg_622 == 1'd0) & (tmp_78_reg_582 == 1'd0))) begin
        acc_V_d0 = 14'd8192;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        acc_V_d0 = p_Val2_21_fu_427_p2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        acc_V_d0 = 14'd0;
    end else begin
        acc_V_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state2) & (exitcond5_fu_272_p2 == 1'd0)) | ((1'b1 == ap_CS_fsm_state12) & (brmerge7_reg_630 == 1'd1) & (overflow_reg_622 == 1'd1) & (tmp_78_reg_582 == 1'd0)) | ((1'b1 == ap_CS_fsm_state12) & (brmerge7_reg_630 == 1'd1) & (underflow_reg_626 == 1'd1) & (overflow_reg_622 == 1'd0) & (tmp_78_reg_582 == 1'd0)))) begin
        acc_V_we0 = 1'b1;
    end else begin
        acc_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state14) & (tmp_73_fu_519_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state14) & (tmp_73_fu_519_p2 == 1'd1))) begin
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
        outidx7_ce0 = 1'b1;
    end else begin
        outidx7_ce0 = 1'b0;
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
        w3_V_ce0 = 1'b1;
    end else begin
        w3_V_ce0 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond5_fu_272_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((exitcond_fu_293_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((1'b1 == ap_CS_fsm_state6) & (tmp_78_fu_318_p3 == 1'd1))) begin
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
            if (((grp_product_fu_261_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == ap_CS_fsm_state12) & (tmp_89_fu_477_p3 == 1'd0) & (tmp_78_reg_582 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state14 : begin
            if (((1'b1 == ap_CS_fsm_state14) & (tmp_73_fu_519_p2 == 1'd1))) begin
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

assign brmerge7_fu_465_p2 = (p_Result_s_fu_419_p3 ^ p_Result_12_fu_433_p3);

assign data_V_address0 = tmp_72_fu_310_p1;

assign exitcond5_fu_272_p2 = ((iacc_reg_185 == 4'd8) ? 1'b1 : 1'b0);

assign exitcond_fu_293_p2 = ((w_index_reg_196 == 7'd64) ? 1'b1 : 1'b0);

assign grp_product_fu_261_ap_start = grp_product_fu_261_ap_start_reg;

assign iacc_2_fu_278_p2 = (iacc_reg_185 + 4'd1);

assign icmp_fu_507_p2 = (($signed(tmp_90_reg_652) > $signed(28'd0)) ? 1'b1 : 1'b0);

assign im_2_fu_326_p2 = (im_reg_219 + 2'd1);

assign in_index_2_fu_491_p2 = ($signed(in_index_reg_207) + $signed(32'd1));

assign ir_fu_299_p2 = (w_index_reg_196 + 7'd1);

assign ires_2_fu_525_p2 = (ires_reg_250 + 4'd1);

assign lhs_V_fu_406_p1 = reg_267;

assign out_index_2_fu_485_p2 = (out_index3_reg_230 + 4'd4);

assign out_index_cast_fu_315_p1 = out_index_reg_562;

assign outidx7_address0 = tmp_s_fu_305_p1;

assign overflow_fu_447_p2 = (tmp_19_fu_441_p2 & p_Result_12_fu_433_p3);

assign p_Result_12_fu_433_p3 = p_Val2_21_fu_427_p2[32'd13];

assign p_Result_s_fu_419_p3 = ret_V_fu_413_p2[32'd14];

assign p_Val2_21_fu_427_p2 = ($signed(reg_267) + $signed(p_Val2_8_reg_616));

assign p_s_fu_512_p3 = ((icmp_fu_507_p2[0:0] === 1'b1) ? 32'd0 : in_index_2_reg_647);

assign p_shl8_fu_359_p3 = {{tmp_11_fu_341_p4}, {1'd0}};

assign res_V_address0 = tmp_74_reg_670;

assign res_V_d0 = reg_267;

assign ret_V_fu_413_p2 = ($signed(lhs_V_fu_406_p1) + $signed(rhs_V_fu_410_p1));

assign rhs_V_fu_410_p1 = p_Val2_8_reg_616;

assign tmp_11_fu_341_p4 = {{w_index3_reg_240[7:6]}};

assign tmp_14_fu_336_p1 = tmp_79_fu_332_p1;

assign tmp_19_fu_441_p2 = (p_Result_s_fu_419_p3 ^ 1'd1);

assign tmp_72_fu_310_p1 = in_index_reg_207;

assign tmp_73_fu_519_p2 = ((ires_reg_250 == 4'd8) ? 1'b1 : 1'b0);

assign tmp_74_fu_531_p1 = ires_reg_250;

assign tmp_75_fu_401_p1 = out_index3_reg_230;

assign tmp_76_fu_453_p2 = (p_Result_12_fu_433_p3 ^ 1'd1);

assign tmp_78_fu_318_p3 = im_reg_219[32'd1];

assign tmp_79_fu_332_p1 = w_index3_reg_240[5:0];

assign tmp_80_fu_351_p3 = w_index3_reg_240[32'd6];

assign tmp_81_fu_367_p3 = {{tmp_80_fu_351_p3}, {4'd0}};

assign tmp_82_fu_375_p1 = p_shl8_fu_359_p3;

assign tmp_83_fu_379_p2 = (tmp_81_fu_367_p3 - tmp_82_fu_375_p1);

assign tmp_84_fu_388_p1 = tmp_83_reg_601;

assign tmp_85_fu_391_p2 = w3_V_load_cast_fu_385_p1 >> tmp_84_fu_388_p1;

assign tmp_86_fu_397_p1 = tmp_85_fu_391_p2[13:0];

assign tmp_89_fu_477_p3 = w_index_2_fu_471_p2[32'd7];

assign tmp_fu_284_p1 = iacc_reg_185;

assign tmp_s_fu_305_p1 = w_index_reg_196;

assign underflow_fu_459_p2 = (tmp_76_fu_453_p2 & p_Result_s_fu_419_p3);

assign w3_V_address0 = tmp_14_fu_336_p1;

assign w3_V_load_cast_fu_385_p1 = $signed(w3_V_load_reg_596);

assign w_index_2_fu_471_p2 = (w_index3_reg_240 + 8'd64);

assign w_index_cast_fu_289_p1 = w_index_reg_196;

always @ (posedge ap_clk) begin
    w_index_cast_reg_544[7] <= 1'b0;
    tmp_83_reg_601[0] <= 1'b0;
    tmp_74_reg_670[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end

endmodule //dense_large_rf_gt_ni_1
