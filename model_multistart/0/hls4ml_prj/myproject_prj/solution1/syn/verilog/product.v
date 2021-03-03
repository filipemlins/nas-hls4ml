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

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [13:0] a_V;
input  [13:0] w_V;
output  [13:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire  signed [27:0] grp_fu_270_p2;
reg  signed [27:0] r_V_2_reg_288;
wire    ap_CS_fsm_state3;
reg   [0:0] p_Result_s_reg_297;
reg   [0:0] tmp_25_reg_303;
wire   [13:0] p_Val2_4_fu_89_p2;
reg   [13:0] p_Val2_4_reg_308;
wire    ap_CS_fsm_state4;
wire   [0:0] carry_2_fu_109_p2;
reg   [0:0] carry_2_reg_314;
wire   [0:0] p_Result_8_fu_115_p3;
reg   [0:0] p_Result_8_reg_319;
wire   [0:0] Range1_all_ones_fu_139_p2;
reg   [0:0] Range1_all_ones_reg_324;
wire   [0:0] Range1_all_zeros_fu_145_p2;
reg   [0:0] Range1_all_zeros_reg_329;
wire   [0:0] phitmp_demorgan_fu_178_p2;
reg   [0:0] phitmp_demorgan_reg_334;
wire   [0:0] brmerge114_demorgan_fu_184_p2;
reg   [0:0] brmerge114_demorgan_reg_340;
wire   [13:0] tmp_23_cast_fu_86_p1;
wire   [13:0] p_Val2_3_fu_70_p4;
wire   [0:0] tmp_26_fu_95_p3;
wire   [0:0] p_Result_7_fu_79_p3;
wire   [0:0] rev_fu_103_p2;
wire   [1:0] p_Result_s_31_fu_130_p4;
wire   [0:0] tmp_29_fu_151_p3;
wire   [0:0] Range2_all_ones_fu_123_p3;
wire   [0:0] rev2_fu_158_p2;
wire   [0:0] p_s_fu_164_p2;
wire   [0:0] deleted_ones_fu_170_p3;
wire    ap_CS_fsm_state5;
wire   [0:0] deleted_zeros_fu_190_p3;
wire   [0:0] p_not_fu_195_p2;
wire   [0:0] brmerge_fu_201_p2;
wire   [0:0] tmp_8_fu_206_p2;
wire   [0:0] tmp1_demorgan_fu_217_p2;
wire   [0:0] tmp1_fu_221_p2;
wire   [0:0] underflow_fu_227_p2;
wire   [0:0] overflow_fu_211_p2;
wire   [0:0] tmp2_fu_238_p2;
wire   [0:0] brmerge5_fu_232_p2;
wire   [0:0] underflow_not_fu_243_p2;
wire   [13:0] p_Val2_6_mux_fu_248_p3;
wire   [13:0] p_Val2_6_fu_255_p3;
reg   [4:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
end

myproject_mul_mul_14s_14s_28_3_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 14 ),
    .din1_WIDTH( 14 ),
    .dout_WIDTH( 28 ))
myproject_mul_mul_14s_14s_28_3_1_U7(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(a_V),
    .din1(w_V),
    .ce(1'b1),
    .dout(grp_fu_270_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        Range1_all_ones_reg_324 <= Range1_all_ones_fu_139_p2;
        Range1_all_zeros_reg_329 <= Range1_all_zeros_fu_145_p2;
        brmerge114_demorgan_reg_340 <= brmerge114_demorgan_fu_184_p2;
        carry_2_reg_314 <= carry_2_fu_109_p2;
        p_Result_8_reg_319 <= p_Val2_4_fu_89_p2[32'd13];
        p_Val2_4_reg_308 <= p_Val2_4_fu_89_p2;
        phitmp_demorgan_reg_334 <= phitmp_demorgan_fu_178_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        p_Result_s_reg_297 <= grp_fu_270_p2[32'd27];
        r_V_2_reg_288 <= grp_fu_270_p2;
        tmp_25_reg_303 <= grp_fu_270_p2[32'd11];
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Range1_all_ones_fu_139_p2 = ((p_Result_s_31_fu_130_p4 == 2'd3) ? 1'b1 : 1'b0);

assign Range1_all_zeros_fu_145_p2 = ((p_Result_s_31_fu_130_p4 == 2'd0) ? 1'b1 : 1'b0);

assign Range2_all_ones_fu_123_p3 = r_V_2_reg_288[32'd27];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_return = ((underflow_not_fu_243_p2[0:0] === 1'b1) ? p_Val2_6_mux_fu_248_p3 : p_Val2_6_fu_255_p3);

assign brmerge114_demorgan_fu_184_p2 = (p_Result_8_fu_115_p3 & deleted_ones_fu_170_p3);

assign brmerge5_fu_232_p2 = (underflow_fu_227_p2 | overflow_fu_211_p2);

assign brmerge_fu_201_p2 = (p_not_fu_195_p2 | p_Result_8_reg_319);

assign carry_2_fu_109_p2 = (rev_fu_103_p2 & p_Result_7_fu_79_p3);

assign deleted_ones_fu_170_p3 = ((carry_2_fu_109_p2[0:0] === 1'b1) ? p_s_fu_164_p2 : Range1_all_ones_fu_139_p2);

assign deleted_zeros_fu_190_p3 = ((carry_2_reg_314[0:0] === 1'b1) ? Range1_all_ones_reg_324 : Range1_all_zeros_reg_329);

assign overflow_fu_211_p2 = (tmp_8_fu_206_p2 & brmerge_fu_201_p2);

assign p_Result_7_fu_79_p3 = r_V_2_reg_288[32'd25];

assign p_Result_8_fu_115_p3 = p_Val2_4_fu_89_p2[32'd13];

assign p_Result_s_31_fu_130_p4 = {{r_V_2_reg_288[27:26]}};

assign p_Val2_3_fu_70_p4 = {{r_V_2_reg_288[25:12]}};

assign p_Val2_4_fu_89_p2 = (tmp_23_cast_fu_86_p1 + p_Val2_3_fu_70_p4);

assign p_Val2_6_fu_255_p3 = ((underflow_fu_227_p2[0:0] === 1'b1) ? 14'd8192 : p_Val2_4_reg_308);

assign p_Val2_6_mux_fu_248_p3 = ((brmerge5_fu_232_p2[0:0] === 1'b1) ? 14'd8191 : p_Val2_4_reg_308);

assign p_not_fu_195_p2 = (deleted_zeros_fu_190_p3 ^ 1'd1);

assign p_s_fu_164_p2 = (rev2_fu_158_p2 & Range2_all_ones_fu_123_p3);

assign phitmp_demorgan_fu_178_p2 = (carry_2_fu_109_p2 & Range1_all_ones_fu_139_p2);

assign rev2_fu_158_p2 = (tmp_29_fu_151_p3 ^ 1'd1);

assign rev_fu_103_p2 = (tmp_26_fu_95_p3 ^ 1'd1);

assign tmp1_demorgan_fu_217_p2 = (phitmp_demorgan_reg_334 | brmerge114_demorgan_reg_340);

assign tmp1_fu_221_p2 = (tmp1_demorgan_fu_217_p2 ^ 1'd1);

assign tmp2_fu_238_p2 = (tmp_8_fu_206_p2 | brmerge114_demorgan_reg_340);

assign tmp_23_cast_fu_86_p1 = tmp_25_reg_303;

assign tmp_26_fu_95_p3 = p_Val2_4_fu_89_p2[32'd13];

assign tmp_29_fu_151_p3 = r_V_2_reg_288[32'd26];

assign tmp_8_fu_206_p2 = (p_Result_s_reg_297 ^ 1'd1);

assign underflow_fu_227_p2 = (tmp1_fu_221_p2 & p_Result_s_reg_297);

assign underflow_not_fu_243_p2 = (tmp2_fu_238_p2 | phitmp_demorgan_reg_334);

endmodule //product