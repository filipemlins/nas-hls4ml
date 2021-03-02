// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module product (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        a_V,
        w_V,
        ap_return
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [11:0] a_V;
input  [11:0] w_V;
output  [11:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire  signed [23:0] r_V_2_fu_294_p2;
reg  signed [23:0] r_V_2_reg_302;
reg   [0:0] p_Result_s_reg_311;
reg   [0:0] tmp_25_reg_317;
wire    ap_CS_fsm_state2;
wire   [11:0] tmp_23_cast_fu_92_p1;
wire   [11:0] p_Val2_3_fu_76_p4;
wire   [11:0] p_Val2_4_fu_95_p2;
wire   [0:0] tmp_26_fu_101_p3;
wire   [0:0] p_Result_7_fu_85_p3;
wire   [0:0] rev_fu_109_p2;
wire   [4:0] p_Result_s_25_fu_129_p4;
wire   [5:0] p_Result_1_fu_144_p4;
wire   [0:0] carry_2_fu_115_p2;
wire   [0:0] Range1_all_ones_fu_153_p2;
wire   [0:0] Range1_all_zeros_fu_159_p2;
wire   [0:0] tmp_28_fu_173_p3;
wire   [0:0] Range2_all_ones_fu_138_p2;
wire   [0:0] rev2_fu_180_p2;
wire   [0:0] p_s_fu_186_p2;
wire   [0:0] deleted_zeros_fu_165_p3;
wire   [0:0] p_Result_8_fu_121_p3;
wire   [0:0] p_not_fu_206_p2;
wire   [0:0] brmerge_fu_212_p2;
wire   [0:0] tmp_9_fu_218_p2;
wire   [0:0] deleted_ones_fu_192_p3;
wire   [0:0] phitmp_demorgan_fu_200_p2;
wire   [0:0] brmerge114_demorgan_fu_229_p2;
wire   [0:0] tmp1_demorgan_fu_235_p2;
wire   [0:0] tmp1_fu_241_p2;
wire   [0:0] underflow_fu_247_p2;
wire   [0:0] overflow_fu_223_p2;
wire   [0:0] tmp2_fu_258_p2;
wire   [0:0] brmerge5_fu_252_p2;
wire   [0:0] underflow_not_fu_264_p2;
wire   [11:0] p_Val2_6_mux_fu_270_p3;
wire   [11:0] p_Val2_6_fu_278_p3;
reg   [1:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
end

myproject_mul_mul_12s_12s_24_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 12 ),
    .din1_WIDTH( 12 ),
    .dout_WIDTH( 24 ))
myproject_mul_mul_12s_12s_24_1_1_U7(
    .din0(a_V),
    .din1(w_V),
    .dout(r_V_2_fu_294_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_Result_s_reg_311 <= r_V_2_fu_294_p2[32'd23];
        r_V_2_reg_302 <= r_V_2_fu_294_p2;
        tmp_25_reg_317 <= r_V_2_fu_294_p2[32'd5];
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Range1_all_ones_fu_153_p2 = ((p_Result_1_fu_144_p4 == 6'd63) ? 1'b1 : 1'b0);

assign Range1_all_zeros_fu_159_p2 = ((p_Result_1_fu_144_p4 == 6'd0) ? 1'b1 : 1'b0);

assign Range2_all_ones_fu_138_p2 = ((p_Result_s_25_fu_129_p4 == 5'd31) ? 1'b1 : 1'b0);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_return = ((underflow_not_fu_264_p2[0:0] === 1'b1) ? p_Val2_6_mux_fu_270_p3 : p_Val2_6_fu_278_p3);

assign brmerge114_demorgan_fu_229_p2 = (p_Result_8_fu_121_p3 & deleted_ones_fu_192_p3);

assign brmerge5_fu_252_p2 = (underflow_fu_247_p2 | overflow_fu_223_p2);

assign brmerge_fu_212_p2 = (p_not_fu_206_p2 | p_Result_8_fu_121_p3);

assign carry_2_fu_115_p2 = (rev_fu_109_p2 & p_Result_7_fu_85_p3);

assign deleted_ones_fu_192_p3 = ((carry_2_fu_115_p2[0:0] === 1'b1) ? p_s_fu_186_p2 : Range1_all_ones_fu_153_p2);

assign deleted_zeros_fu_165_p3 = ((carry_2_fu_115_p2[0:0] === 1'b1) ? Range1_all_ones_fu_153_p2 : Range1_all_zeros_fu_159_p2);

assign overflow_fu_223_p2 = (tmp_9_fu_218_p2 & brmerge_fu_212_p2);

assign p_Result_1_fu_144_p4 = {{r_V_2_reg_302[23:18]}};

assign p_Result_7_fu_85_p3 = r_V_2_reg_302[32'd17];

assign p_Result_8_fu_121_p3 = p_Val2_4_fu_95_p2[32'd11];

assign p_Result_s_25_fu_129_p4 = {{r_V_2_reg_302[23:19]}};

assign p_Val2_3_fu_76_p4 = {{r_V_2_reg_302[17:6]}};

assign p_Val2_4_fu_95_p2 = (tmp_23_cast_fu_92_p1 + p_Val2_3_fu_76_p4);

assign p_Val2_6_fu_278_p3 = ((underflow_fu_247_p2[0:0] === 1'b1) ? 12'd2048 : p_Val2_4_fu_95_p2);

assign p_Val2_6_mux_fu_270_p3 = ((brmerge5_fu_252_p2[0:0] === 1'b1) ? 12'd2047 : p_Val2_4_fu_95_p2);

assign p_not_fu_206_p2 = (deleted_zeros_fu_165_p3 ^ 1'd1);

assign p_s_fu_186_p2 = (rev2_fu_180_p2 & Range2_all_ones_fu_138_p2);

assign phitmp_demorgan_fu_200_p2 = (carry_2_fu_115_p2 & Range1_all_ones_fu_153_p2);

assign rev2_fu_180_p2 = (tmp_28_fu_173_p3 ^ 1'd1);

assign rev_fu_109_p2 = (tmp_26_fu_101_p3 ^ 1'd1);

assign tmp1_demorgan_fu_235_p2 = (phitmp_demorgan_fu_200_p2 | brmerge114_demorgan_fu_229_p2);

assign tmp1_fu_241_p2 = (tmp1_demorgan_fu_235_p2 ^ 1'd1);

assign tmp2_fu_258_p2 = (tmp_9_fu_218_p2 | brmerge114_demorgan_fu_229_p2);

assign tmp_23_cast_fu_92_p1 = tmp_25_reg_317;

assign tmp_26_fu_101_p3 = p_Val2_4_fu_95_p2[32'd11];

assign tmp_28_fu_173_p3 = r_V_2_reg_302[32'd18];

assign tmp_9_fu_218_p2 = (p_Result_s_reg_311 ^ 1'd1);

assign underflow_fu_247_p2 = (tmp1_fu_241_p2 & p_Result_s_reg_311);

assign underflow_not_fu_264_p2 = (tmp2_fu_258_p2 | phitmp_demorgan_fu_200_p2);

endmodule //product