// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_signature_1_Pipeline_VITIS_LOOP_180_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        i_17,
        mat_address0,
        mat_ce0,
        mat_q0,
        z_vec_coeffs_address0,
        z_vec_coeffs_ce0,
        z_vec_coeffs_q0,
        zext_ln181_3,
        w1_vec_coeffs_address0,
        w1_vec_coeffs_ce0,
        w1_vec_coeffs_we0,
        w1_vec_coeffs_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [1:0] i_17;
output  [11:0] mat_address0;
output   mat_ce0;
input  [22:0] mat_q0;
output  [9:0] z_vec_coeffs_address0;
output   z_vec_coeffs_ce0;
input  [31:0] z_vec_coeffs_q0;
input  [9:0] zext_ln181_3;
output  [9:0] w1_vec_coeffs_address0;
output   w1_vec_coeffs_ce0;
output   w1_vec_coeffs_we0;
output  [31:0] w1_vec_coeffs_d0;

reg ap_idle;
reg mat_ce0;
reg z_vec_coeffs_ce0;
reg w1_vec_coeffs_ce0;
reg w1_vec_coeffs_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln180_fu_117_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [9:0] add_ln181_fu_153_p2;
reg   [9:0] add_ln181_reg_251;
wire   [63:0] zext_ln181_4_fu_148_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] i_19_cast_fu_129_p1;
wire   [63:0] zext_ln181_8_fu_164_p1;
reg   [8:0] i_19_fu_54;
wire   [8:0] add_ln180_fu_123_p2;
wire    ap_loop_init;
reg   [8:0] ap_sig_allocacmp_i;
wire   [11:0] tmp_s_fu_138_p4;
wire   [9:0] zext_ln181_7_fu_134_p1;
wire   [22:0] mul_ln181_fu_176_p1;
wire  signed [54:0] mul_ln181_fu_176_p2;
wire  signed [31:0] t_fu_190_p0;
wire   [26:0] t_fu_190_p1;
wire  signed [31:0] t_fu_190_p2;
wire  signed [23:0] mul_ln19_fu_200_p1;
wire   [54:0] mul_ln19_fu_200_p2;
wire  signed [55:0] sext_ln19_10_fu_206_p1;
wire  signed [55:0] sext_ln15_fu_182_p1;
wire   [55:0] add_ln19_fu_210_p2;
wire   [23:0] t_17_fu_216_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire   [54:0] mul_ln181_fu_176_p10;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end

pqcrystals_dilithium2_ref_mul_32s_23ns_55_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 23 ),
    .dout_WIDTH( 55 ))
mul_32s_23ns_55_1_1_U193(
    .din0(z_vec_coeffs_q0),
    .din1(mul_ln181_fu_176_p1),
    .dout(mul_ln181_fu_176_p2)
);

pqcrystals_dilithium2_ref_mul_32s_27ns_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 27 ),
    .dout_WIDTH( 32 ))
mul_32s_27ns_32_1_1_U194(
    .din0(t_fu_190_p0),
    .din1(t_fu_190_p1),
    .dout(t_fu_190_p2)
);

pqcrystals_dilithium2_ref_mul_32s_24s_55_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 24 ),
    .dout_WIDTH( 55 ))
mul_32s_24s_55_1_1_U195(
    .din0(t_fu_190_p2),
    .din1(mul_ln19_fu_200_p1),
    .dout(mul_ln19_fu_200_p2)
);

pqcrystals_dilithium2_ref_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln180_fu_117_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_19_fu_54 <= add_ln180_fu_123_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_19_fu_54 <= 9'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln180_fu_117_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln181_reg_251 <= add_ln181_fu_153_p2;
    end
end

always @ (*) begin
    if (((icmp_ln180_fu_117_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i = 9'd0;
    end else begin
        ap_sig_allocacmp_i = i_19_fu_54;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mat_ce0 = 1'b1;
    end else begin
        mat_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        w1_vec_coeffs_ce0 = 1'b1;
    end else begin
        w1_vec_coeffs_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        w1_vec_coeffs_we0 = 1'b1;
    end else begin
        w1_vec_coeffs_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        z_vec_coeffs_ce0 = 1'b1;
    end else begin
        z_vec_coeffs_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln180_fu_123_p2 = (ap_sig_allocacmp_i + 9'd1);

assign add_ln181_fu_153_p2 = (zext_ln181_3 + zext_ln181_7_fu_134_p1);

assign add_ln19_fu_210_p2 = ($signed(sext_ln19_10_fu_206_p1) + $signed(sext_ln15_fu_182_p1));

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign i_19_cast_fu_129_p1 = ap_sig_allocacmp_i;

assign icmp_ln180_fu_117_p2 = ((ap_sig_allocacmp_i == 9'd256) ? 1'b1 : 1'b0);

assign mat_address0 = zext_ln181_4_fu_148_p1;

assign mul_ln181_fu_176_p1 = mul_ln181_fu_176_p10;

assign mul_ln181_fu_176_p10 = mat_q0;

assign mul_ln19_fu_200_p1 = 55'd36028797010583551;

assign sext_ln15_fu_182_p1 = mul_ln181_fu_176_p2;

assign sext_ln19_10_fu_206_p1 = $signed(mul_ln19_fu_200_p2);

assign t_17_fu_216_p4 = {{add_ln19_fu_210_p2[55:32]}};

assign t_fu_190_p0 = mul_ln181_fu_176_p2[31:0];

assign t_fu_190_p1 = 32'd58728449;

assign tmp_s_fu_138_p4 = {{{i_17}, {1'd0}}, {ap_sig_allocacmp_i}};

assign w1_vec_coeffs_address0 = zext_ln181_8_fu_164_p1;

assign w1_vec_coeffs_d0 = $signed(t_17_fu_216_p4);

assign z_vec_coeffs_address0 = i_19_cast_fu_129_p1;

assign zext_ln181_4_fu_148_p1 = tmp_s_fu_138_p4;

assign zext_ln181_7_fu_134_p1 = ap_sig_allocacmp_i;

assign zext_ln181_8_fu_164_p1 = add_ln181_reg_251;

endmodule //pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_signature_1_Pipeline_VITIS_LOOP_180_1
