// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module reduce (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        x_0_V_read,
        x_1_V_read,
        x_2_V_read,
        x_3_V_read,
        x_4_V_read,
        x_5_V_read,
        x_6_V_read,
        x_7_V_read,
        ap_return
);

parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [17:0] x_0_V_read;
input  [17:0] x_1_V_read;
input  [17:0] x_2_V_read;
input  [17:0] x_3_V_read;
input  [17:0] x_4_V_read;
input  [17:0] x_5_V_read;
input  [17:0] x_6_V_read;
input  [17:0] x_7_V_read;
output  [17:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] i_3_fu_194_p2;
reg   [2:0] i_3_reg_369;
wire    ap_CS_fsm_state2;
wire   [1:0] tmp_fu_200_p1;
reg   [1:0] tmp_reg_374;
wire   [0:0] exitcond1_fu_188_p2;
wire   [2:0] i_4_fu_230_p2;
reg   [2:0] i_4_reg_405;
wire    ap_CS_fsm_state4;
wire   [1:0] tmp_22_fu_242_p1;
reg   [1:0] tmp_22_reg_413;
wire   [0:0] exitcond_fu_224_p2;
wire   [17:0] grp_reduce_1_fu_172_ap_return;
reg   [17:0] p_Val2_s_reg_457;
wire    ap_CS_fsm_state6;
wire    grp_reduce_1_fu_172_ap_ready;
wire    grp_reduce_1_fu_172_ap_done;
wire    grp_reduce_1_fu_180_ap_ready;
wire    grp_reduce_1_fu_180_ap_done;
reg    ap_block_state6_on_subcall_done;
wire   [17:0] grp_reduce_1_fu_180_ap_return;
reg   [17:0] p_Val2_7_reg_462;
wire    grp_reduce_1_fu_172_ap_start;
wire    grp_reduce_1_fu_172_ap_idle;
wire    grp_reduce_1_fu_180_ap_start;
wire    grp_reduce_1_fu_180_ap_idle;
wire   [2:0] ap_phi_mux_i_phi_fu_128_p4;
reg   [2:0] i_reg_124;
wire    ap_CS_fsm_state3;
reg   [17:0] left_0_V_reg_135;
reg   [2:0] i2_reg_148;
wire    ap_CS_fsm_state5;
reg   [17:0] right_0_V_reg_159;
wire   [2:0] tmp_20_t_fu_236_p2;
reg    grp_reduce_1_fu_172_ap_start_reg;
reg    grp_reduce_1_fu_180_ap_start_reg;
reg   [17:0] left_3_V_fu_44;
reg   [17:0] left_3_V_1_fu_48;
reg   [17:0] left_3_V_2_fu_52;
reg   [17:0] left_3_V_3_fu_56;
reg   [17:0] right_3_V_fu_60;
reg   [17:0] right_3_V_1_fu_64;
reg   [17:0] right_3_V_2_fu_68;
reg   [17:0] right_3_V_3_fu_72;
wire    ap_CS_fsm_state7;
reg   [6:0] ap_NS_fsm;
reg    ap_condition_285;
reg    ap_condition_290;

// power-on initialization
initial begin
#0 ap_CS_fsm = 7'd1;
#0 grp_reduce_1_fu_172_ap_start_reg = 1'b0;
#0 grp_reduce_1_fu_180_ap_start_reg = 1'b0;
end

reduce_1 grp_reduce_1_fu_172(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_reduce_1_fu_172_ap_start),
    .ap_done(grp_reduce_1_fu_172_ap_done),
    .ap_idle(grp_reduce_1_fu_172_ap_idle),
    .ap_ready(grp_reduce_1_fu_172_ap_ready),
    .x_0_V_read(left_3_V_fu_44),
    .x_1_V_read(left_3_V_1_fu_48),
    .x_2_V_read(left_3_V_2_fu_52),
    .x_3_V_read(left_3_V_3_fu_56),
    .ap_return(grp_reduce_1_fu_172_ap_return)
);

reduce_1 grp_reduce_1_fu_180(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_reduce_1_fu_180_ap_start),
    .ap_done(grp_reduce_1_fu_180_ap_done),
    .ap_idle(grp_reduce_1_fu_180_ap_idle),
    .ap_ready(grp_reduce_1_fu_180_ap_ready),
    .x_0_V_read(right_3_V_fu_60),
    .x_1_V_read(right_3_V_1_fu_64),
    .x_2_V_read(right_3_V_2_fu_68),
    .x_3_V_read(right_3_V_3_fu_72),
    .ap_return(grp_reduce_1_fu_180_ap_return)
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
        grp_reduce_1_fu_172_ap_start_reg <= 1'b0;
    end else begin
        if (((exitcond_fu_224_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
            grp_reduce_1_fu_172_ap_start_reg <= 1'b1;
        end else if ((grp_reduce_1_fu_172_ap_ready == 1'b1)) begin
            grp_reduce_1_fu_172_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_reduce_1_fu_180_ap_start_reg <= 1'b0;
    end else begin
        if (((exitcond_fu_224_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
            grp_reduce_1_fu_180_ap_start_reg <= 1'b1;
        end else if ((grp_reduce_1_fu_180_ap_ready == 1'b1)) begin
            grp_reduce_1_fu_180_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        i2_reg_148 <= i_4_reg_405;
    end else if (((exitcond1_fu_188_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i2_reg_148 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_reg_124 <= i_3_reg_369;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_124 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_188_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        if ((ap_phi_mux_i_phi_fu_128_p4 == 3'd0)) begin
            left_0_V_reg_135 <= x_0_V_read;
        end else if ((1'b1 == ap_condition_285)) begin
            left_0_V_reg_135 <= x_3_V_read;
        end else if ((ap_phi_mux_i_phi_fu_128_p4 == 3'd2)) begin
            left_0_V_reg_135 <= x_2_V_read;
        end else if ((ap_phi_mux_i_phi_fu_128_p4 == 3'd1)) begin
            left_0_V_reg_135 <= x_1_V_read;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_224_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        if ((tmp_20_t_fu_236_p2 == 3'd4)) begin
            right_0_V_reg_159 <= x_4_V_read;
        end else if ((1'b1 == ap_condition_290)) begin
            right_0_V_reg_159 <= x_7_V_read;
        end else if ((tmp_20_t_fu_236_p2 == 3'd6)) begin
            right_0_V_reg_159 <= x_6_V_read;
        end else if ((tmp_20_t_fu_236_p2 == 3'd5)) begin
            right_0_V_reg_159 <= x_5_V_read;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_3_reg_369 <= i_3_fu_194_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_4_reg_405 <= i_4_fu_230_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_reg_374 == 2'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        left_3_V_1_fu_48 <= left_0_V_reg_135;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_reg_374 == 2'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        left_3_V_2_fu_52 <= left_0_V_reg_135;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_reg_374 == 2'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        left_3_V_3_fu_56 <= left_0_V_reg_135;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_reg_374 == 2'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        left_3_V_fu_44 <= left_0_V_reg_135;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (1'b0 == ap_block_state6_on_subcall_done))) begin
        p_Val2_7_reg_462 <= grp_reduce_1_fu_180_ap_return;
        p_Val2_s_reg_457 <= grp_reduce_1_fu_172_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_22_reg_413 == 2'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        right_3_V_1_fu_64 <= right_0_V_reg_159;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_22_reg_413 == 2'd2) & (1'b1 == ap_CS_fsm_state5))) begin
        right_3_V_2_fu_68 <= right_0_V_reg_159;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_22_reg_413 == 2'd3) & (1'b1 == ap_CS_fsm_state5))) begin
        right_3_V_3_fu_72 <= right_0_V_reg_159;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_22_reg_413 == 2'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        right_3_V_fu_60 <= right_0_V_reg_159;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_224_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        tmp_22_reg_413 <= tmp_22_fu_242_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_188_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_reg_374 <= tmp_fu_200_p1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state7)) begin
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
            if (((exitcond1_fu_188_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state4 : begin
            if (((exitcond_fu_224_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (1'b0 == ap_block_state6_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
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

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

always @ (*) begin
    ap_block_state6_on_subcall_done = ((grp_reduce_1_fu_180_ap_done == 1'b0) | (grp_reduce_1_fu_172_ap_done == 1'b0));
end

always @ (*) begin
    ap_condition_285 = (~(ap_phi_mux_i_phi_fu_128_p4 == 3'd0) & ~(ap_phi_mux_i_phi_fu_128_p4 == 3'd2) & ~(ap_phi_mux_i_phi_fu_128_p4 == 3'd1));
end

always @ (*) begin
    ap_condition_290 = (~(tmp_20_t_fu_236_p2 == 3'd4) & ~(tmp_20_t_fu_236_p2 == 3'd6) & ~(tmp_20_t_fu_236_p2 == 3'd5));
end

assign ap_phi_mux_i_phi_fu_128_p4 = i_reg_124;

assign ap_return = (p_Val2_7_reg_462 + p_Val2_s_reg_457);

assign exitcond1_fu_188_p2 = ((i_reg_124 == 3'd4) ? 1'b1 : 1'b0);

assign exitcond_fu_224_p2 = ((i2_reg_148 == 3'd4) ? 1'b1 : 1'b0);

assign grp_reduce_1_fu_172_ap_start = grp_reduce_1_fu_172_ap_start_reg;

assign grp_reduce_1_fu_180_ap_start = grp_reduce_1_fu_180_ap_start_reg;

assign i_3_fu_194_p2 = (i_reg_124 + 3'd1);

assign i_4_fu_230_p2 = (i2_reg_148 + 3'd1);

assign tmp_20_t_fu_236_p2 = (i2_reg_148 ^ 3'd4);

assign tmp_22_fu_242_p1 = i2_reg_148[1:0];

assign tmp_fu_200_p1 = i_reg_124[1:0];

endmodule //reduce