// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dense_large_1 (
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

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [6:0] data_V_address0;
output   data_V_ce0;
input  [10:0] data_V_q0;
output  [6:0] res_V_address0;
output   res_V_ce0;
output   res_V_we0;
output  [11:0] res_V_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    grp_dense_large_rf_gt_ni_3_fu_12_ap_start;
wire    grp_dense_large_rf_gt_ni_3_fu_12_ap_done;
wire    grp_dense_large_rf_gt_ni_3_fu_12_ap_idle;
wire    grp_dense_large_rf_gt_ni_3_fu_12_ap_ready;
wire   [6:0] grp_dense_large_rf_gt_ni_3_fu_12_data_V_address0;
wire    grp_dense_large_rf_gt_ni_3_fu_12_data_V_ce0;
wire   [6:0] grp_dense_large_rf_gt_ni_3_fu_12_res_V_address0;
wire    grp_dense_large_rf_gt_ni_3_fu_12_res_V_ce0;
wire    grp_dense_large_rf_gt_ni_3_fu_12_res_V_we0;
wire   [11:0] grp_dense_large_rf_gt_ni_3_fu_12_res_V_d0;
reg    grp_dense_large_rf_gt_ni_3_fu_12_ap_start_reg;
reg    ap_block_state1_ignore_call0;
wire    ap_CS_fsm_state2;
reg   [1:0] ap_NS_fsm;
reg    ap_block_state1;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 grp_dense_large_rf_gt_ni_3_fu_12_ap_start_reg = 1'b0;
end

dense_large_rf_gt_ni_3 grp_dense_large_rf_gt_ni_3_fu_12(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_dense_large_rf_gt_ni_3_fu_12_ap_start),
    .ap_done(grp_dense_large_rf_gt_ni_3_fu_12_ap_done),
    .ap_idle(grp_dense_large_rf_gt_ni_3_fu_12_ap_idle),
    .ap_ready(grp_dense_large_rf_gt_ni_3_fu_12_ap_ready),
    .data_V_address0(grp_dense_large_rf_gt_ni_3_fu_12_data_V_address0),
    .data_V_ce0(grp_dense_large_rf_gt_ni_3_fu_12_data_V_ce0),
    .data_V_q0(data_V_q0),
    .res_V_address0(grp_dense_large_rf_gt_ni_3_fu_12_res_V_address0),
    .res_V_ce0(grp_dense_large_rf_gt_ni_3_fu_12_res_V_ce0),
    .res_V_we0(grp_dense_large_rf_gt_ni_3_fu_12_res_V_we0),
    .res_V_d0(grp_dense_large_rf_gt_ni_3_fu_12_res_V_d0)
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
        end else if (((grp_dense_large_rf_gt_ni_3_fu_12_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dense_large_rf_gt_ni_3_fu_12_ap_start_reg <= 1'b0;
    end else begin
        if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_dense_large_rf_gt_ni_3_fu_12_ap_start_reg <= 1'b1;
        end else if ((grp_dense_large_rf_gt_ni_3_fu_12_ap_ready == 1'b1)) begin
            grp_dense_large_rf_gt_ni_3_fu_12_ap_start_reg <= 1'b0;
        end
    end
end

always @ (*) begin
    if (((grp_dense_large_rf_gt_ni_3_fu_12_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((grp_dense_large_rf_gt_ni_3_fu_12_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
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
            if (((grp_dense_large_rf_gt_ni_3_fu_12_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state1_ignore_call0 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign data_V_address0 = grp_dense_large_rf_gt_ni_3_fu_12_data_V_address0;

assign data_V_ce0 = grp_dense_large_rf_gt_ni_3_fu_12_data_V_ce0;

assign grp_dense_large_rf_gt_ni_3_fu_12_ap_start = grp_dense_large_rf_gt_ni_3_fu_12_ap_start_reg;

assign res_V_address0 = grp_dense_large_rf_gt_ni_3_fu_12_res_V_address0;

assign res_V_ce0 = grp_dense_large_rf_gt_ni_3_fu_12_res_V_ce0;

assign res_V_d0 = grp_dense_large_rf_gt_ni_3_fu_12_res_V_d0;

assign res_V_we0 = grp_dense_large_rf_gt_ni_3_fu_12_res_V_we0;

endmodule //dense_large_1
