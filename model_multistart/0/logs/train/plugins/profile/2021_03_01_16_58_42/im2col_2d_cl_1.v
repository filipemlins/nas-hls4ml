// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module im2col_2d_cl_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        data_V_address0,
        data_V_ce0,
        data_V_q0,
        data_col_V_address0,
        data_col_V_ce0,
        data_col_V_we0,
        data_col_V_d0,
        row,
        col
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] data_V_address0;
output   data_V_ce0;
input  [11:0] data_V_q0;
output  [3:0] data_col_V_address0;
output   data_col_V_ce0;
output   data_col_V_we0;
output  [11:0] data_col_V_d0;
input  [4:0] row;
input  [4:0] col;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg data_V_ce0;
reg[3:0] data_col_V_address0;
reg data_col_V_ce0;
reg data_col_V_we0;
reg[11:0] data_col_V_d0;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [5:0] row_cast_fu_137_p1;
reg   [5:0] row_cast_reg_247;
wire   [5:0] col_cast_fu_141_p1;
reg   [5:0] col_cast_reg_252;
wire   [2:0] kernel_row_2_fu_155_p2;
reg   [2:0] kernel_row_2_reg_260;
wire    ap_CS_fsm_state2;
wire   [4:0] tmp_31_fu_166_p2;
reg   [4:0] tmp_31_reg_265;
wire   [0:0] tmp_s_fu_149_p2;
reg   [0:0] tmp_reg_270;
wire   [10:0] tmp_32_fu_180_p3;
reg   [10:0] tmp_32_reg_274;
wire   [2:0] kernel_col_2_fu_198_p2;
reg   [2:0] kernel_col_2_reg_282;
wire    ap_CS_fsm_state3;
wire   [0:0] tmp_35_fu_213_p3;
reg   [0:0] tmp_35_reg_287;
wire   [0:0] tmp_33_fu_192_p2;
wire   [63:0] tmp_36_fu_221_p1;
reg   [63:0] tmp_36_reg_291;
wire   [4:0] index_4_fu_241_p2;
wire    ap_CS_fsm_state4;
reg   [4:0] index_1_reg_92;
reg   [2:0] kernel_row_reg_104;
reg   [4:0] index_2_reg_115;
reg   [2:0] kernel_col_reg_126;
wire   [63:0] tmp_38_fu_231_p1;
wire   [63:0] tmp_34_fu_236_p1;
wire   [5:0] kernel_row_cast_fu_145_p1;
wire   [5:0] input_row_fu_161_p2;
wire   [5:0] kernel_col_cast_fu_188_p1;
wire   [5:0] input_col_fu_204_p2;
wire   [10:0] input_col_cast_cast_fu_209_p1;
wire   [10:0] tmp_37_fu_226_p2;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_33_fu_192_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        index_1_reg_92 <= tmp_31_reg_265;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        index_1_reg_92 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        index_2_reg_115 <= index_4_fu_241_p2;
    end else if (((tmp_s_fu_149_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        index_2_reg_115 <= index_1_reg_92;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        kernel_col_reg_126 <= kernel_col_2_reg_282;
    end else if (((tmp_s_fu_149_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        kernel_col_reg_126 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_33_fu_192_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        kernel_row_reg_104 <= kernel_row_2_reg_260;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        kernel_row_reg_104 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        col_cast_reg_252[4 : 0] <= col_cast_fu_141_p1[4 : 0];
        row_cast_reg_247[4 : 0] <= row_cast_fu_137_p1[4 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        kernel_col_2_reg_282 <= kernel_col_2_fu_198_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        kernel_row_2_reg_260 <= kernel_row_2_fu_155_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_s_fu_149_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_31_reg_265 <= tmp_31_fu_166_p2;
        tmp_32_reg_274[10 : 5] <= tmp_32_fu_180_p3[10 : 5];
        tmp_reg_270 <= input_row_fu_161_p2[32'd5];
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_33_fu_192_p2 == 1'd0) & (tmp_reg_270 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp_35_reg_287 <= input_col_fu_204_p2[32'd5];
        tmp_36_reg_291[4 : 0] <= tmp_36_fu_221_p1[4 : 0];
    end
end

always @ (*) begin
    if ((((tmp_s_fu_149_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((tmp_s_fu_149_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
        data_col_V_address0 = tmp_36_reg_291;
    end else if (((tmp_reg_270 == 1'd1) & (tmp_33_fu_192_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        data_col_V_address0 = tmp_34_fu_236_p1;
    end else if (((tmp_35_fu_213_p3 == 1'd1) & (tmp_33_fu_192_p2 == 1'd0) & (tmp_reg_270 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        data_col_V_address0 = tmp_36_fu_221_p1;
    end else begin
        data_col_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((tmp_35_fu_213_p3 == 1'd1) & (tmp_33_fu_192_p2 == 1'd0) & (tmp_reg_270 == 1'd0) & (1'b1 == ap_CS_fsm_state3)) | ((tmp_reg_270 == 1'd1) & (tmp_33_fu_192_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)))) begin
        data_col_V_ce0 = 1'b1;
    end else begin
        data_col_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        data_col_V_d0 = data_V_q0;
    end else if ((((tmp_35_fu_213_p3 == 1'd1) & (tmp_33_fu_192_p2 == 1'd0) & (tmp_reg_270 == 1'd0) & (1'b1 == ap_CS_fsm_state3)) | ((tmp_reg_270 == 1'd1) & (tmp_33_fu_192_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)))) begin
        data_col_V_d0 = 12'd0;
    end else begin
        data_col_V_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((tmp_35_reg_287 == 1'd0) & (tmp_reg_270 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | ((tmp_35_fu_213_p3 == 1'd1) & (tmp_33_fu_192_p2 == 1'd0) & (tmp_reg_270 == 1'd0) & (1'b1 == ap_CS_fsm_state3)) | ((tmp_reg_270 == 1'd1) & (tmp_33_fu_192_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)))) begin
        data_col_V_we0 = 1'b1;
    end else begin
        data_col_V_we0 = 1'b0;
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
            if (((tmp_s_fu_149_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((tmp_33_fu_192_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
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

assign col_cast_fu_141_p1 = col;

assign data_V_address0 = tmp_38_fu_231_p1;

assign index_4_fu_241_p2 = (index_2_reg_115 + 5'd1);

assign input_col_cast_cast_fu_209_p1 = input_col_fu_204_p2;

assign input_col_fu_204_p2 = (col_cast_reg_252 + kernel_col_cast_fu_188_p1);

assign input_row_fu_161_p2 = (kernel_row_cast_fu_145_p1 + row_cast_reg_247);

assign kernel_col_2_fu_198_p2 = (kernel_col_reg_126 + 3'd1);

assign kernel_col_cast_fu_188_p1 = kernel_col_reg_126;

assign kernel_row_2_fu_155_p2 = (kernel_row_reg_104 + 3'd1);

assign kernel_row_cast_fu_145_p1 = kernel_row_reg_104;

assign row_cast_fu_137_p1 = row;

assign tmp_31_fu_166_p2 = (index_1_reg_92 + 5'd4);

assign tmp_32_fu_180_p3 = {{input_row_fu_161_p2}, {5'd0}};

assign tmp_33_fu_192_p2 = ((kernel_col_reg_126 == 3'd4) ? 1'b1 : 1'b0);

assign tmp_34_fu_236_p1 = index_2_reg_115;

assign tmp_35_fu_213_p3 = input_col_fu_204_p2[32'd5];

assign tmp_36_fu_221_p1 = index_2_reg_115;

assign tmp_37_fu_226_p2 = (tmp_32_reg_274 + input_col_cast_cast_fu_209_p1);

assign tmp_38_fu_231_p1 = tmp_37_fu_226_p2;

assign tmp_s_fu_149_p2 = ((kernel_row_reg_104 == 3'd4) ? 1'b1 : 1'b0);

always @ (posedge ap_clk) begin
    row_cast_reg_247[5] <= 1'b0;
    col_cast_reg_252[5] <= 1'b0;
    tmp_32_reg_274[4:0] <= 5'b00000;
    tmp_36_reg_291[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end

endmodule //im2col_2d_cl_1
