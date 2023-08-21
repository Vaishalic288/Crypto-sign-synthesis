// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_poly_uniform_Pipeline_VITIS_LOOP_416_5 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        seed_address0,
        seed_ce0,
        seed_q0,
        seed_address1,
        seed_ce1,
        seed_q1,
        state_s_address0,
        state_s_ce0,
        state_s_we0,
        state_s_d0,
        state_s_address1,
        state_s_ce1,
        state_s_q1
);

parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] seed_address0;
output   seed_ce0;
input  [7:0] seed_q0;
output  [7:0] seed_address1;
output   seed_ce1;
input  [7:0] seed_q1;
output  [4:0] state_s_address0;
output   state_s_ce0;
output   state_s_we0;
output  [63:0] state_s_d0;
output  [4:0] state_s_address1;
output   state_s_ce1;
input  [63:0] state_s_q1;

reg ap_idle;
reg[7:0] seed_address0;
reg seed_ce0;
reg[7:0] seed_address1;
reg seed_ce1;
reg state_s_ce0;
reg state_s_we0;
reg state_s_ce1;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state5_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln416_fu_150_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_state4_pp0_stage3_iter0;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln416_reg_287;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] shl_ln_fu_171_p3;
reg   [4:0] shl_ln_reg_291;
reg   [4:0] state_s_addr_reg_311;
reg   [7:0] seed_load_reg_317;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_pp0_stage1_11001;
reg   [7:0] seed_load_8_reg_322;
reg   [63:0] state_s_load_reg_337;
reg   [7:0] seed_load_9_reg_342;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_state3_pp0_stage2_iter0;
wire    ap_block_pp0_stage2_11001;
reg   [7:0] seed_load_10_reg_347;
reg   [7:0] seed_load_11_reg_362;
wire    ap_block_pp0_stage3_11001;
reg   [7:0] seed_load_12_reg_367;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln417_fu_179_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln31_fu_190_p1;
wire   [63:0] zext_ln416_fu_162_p1;
wire   [63:0] zext_ln31_31_fu_205_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln31_32_fu_215_p1;
wire   [63:0] zext_ln31_33_fu_225_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln31_34_fu_235_p1;
wire   [63:0] zext_ln31_35_fu_245_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln31_36_fu_255_p1;
reg   [2:0] i_fu_48;
wire   [2:0] i_39_fu_156_p2;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_i_38;
wire   [1:0] trunc_ln417_fu_167_p1;
wire   [4:0] or_ln31_fu_184_p2;
wire   [4:0] or_ln31_13_fu_200_p2;
wire   [4:0] or_ln31_14_fu_210_p2;
wire   [4:0] or_ln31_15_fu_220_p2;
wire   [4:0] or_ln31_16_fu_230_p2;
wire   [4:0] or_ln31_17_fu_240_p2;
wire   [4:0] or_ln31_18_fu_250_p2;
wire   [63:0] r_15_7_i_fu_260_p9;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 ap_done_reg = 1'b0;
end

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
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln416_fu_150_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_48 <= i_39_fu_156_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_48 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln416_reg_287 <= icmp_ln416_fu_150_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln416_reg_287 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        seed_load_10_reg_347 <= seed_q0;
        seed_load_9_reg_342 <= seed_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln416_reg_287 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        seed_load_11_reg_362 <= seed_q1;
        seed_load_12_reg_367 <= seed_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln416_reg_287 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        seed_load_8_reg_322 <= seed_q0;
        seed_load_reg_317 <= seed_q1;
        state_s_load_reg_337 <= state_s_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln416_fu_150_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        shl_ln_reg_291[4 : 3] <= shl_ln_fu_171_p3[4 : 3];
        state_s_addr_reg_311[2 : 0] <= zext_ln416_fu_162_p1[2 : 0];
    end
end

always @ (*) begin
    if (((icmp_ln416_fu_150_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_38 = 3'd0;
    end else begin
        ap_sig_allocacmp_i_38 = i_fu_48;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            seed_address0 = zext_ln31_36_fu_255_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            seed_address0 = zext_ln31_34_fu_235_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            seed_address0 = zext_ln31_32_fu_215_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            seed_address0 = zext_ln31_fu_190_p1;
        end else begin
            seed_address0 = 'bx;
        end
    end else begin
        seed_address0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            seed_address1 = zext_ln31_35_fu_245_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            seed_address1 = zext_ln31_33_fu_225_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            seed_address1 = zext_ln31_31_fu_205_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            seed_address1 = zext_ln417_fu_179_p1;
        end else begin
            seed_address1 = 'bx;
        end
    end else begin
        seed_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        seed_ce0 = 1'b1;
    end else begin
        seed_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        seed_ce1 = 1'b1;
    end else begin
        seed_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        state_s_ce0 = 1'b1;
    end else begin
        state_s_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        state_s_ce1 = 1'b1;
    end else begin
        state_s_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        state_s_we0 = 1'b1;
    end else begin
        state_s_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage3_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign i_39_fu_156_p2 = (ap_sig_allocacmp_i_38 + 3'd1);

assign icmp_ln416_fu_150_p2 = ((ap_sig_allocacmp_i_38 == 3'd4) ? 1'b1 : 1'b0);

assign or_ln31_13_fu_200_p2 = (shl_ln_reg_291 | 5'd2);

assign or_ln31_14_fu_210_p2 = (shl_ln_reg_291 | 5'd3);

assign or_ln31_15_fu_220_p2 = (shl_ln_reg_291 | 5'd4);

assign or_ln31_16_fu_230_p2 = (shl_ln_reg_291 | 5'd5);

assign or_ln31_17_fu_240_p2 = (shl_ln_reg_291 | 5'd6);

assign or_ln31_18_fu_250_p2 = (shl_ln_reg_291 | 5'd7);

assign or_ln31_fu_184_p2 = (shl_ln_fu_171_p3 | 5'd1);

assign r_15_7_i_fu_260_p9 = {{{{{{{{seed_q0}, {seed_q1}}, {seed_load_12_reg_367}}, {seed_load_11_reg_362}}, {seed_load_10_reg_347}}, {seed_load_9_reg_342}}, {seed_load_8_reg_322}}, {seed_load_reg_317}};

assign shl_ln_fu_171_p3 = {{trunc_ln417_fu_167_p1}, {3'd0}};

assign state_s_address0 = state_s_addr_reg_311;

assign state_s_address1 = zext_ln416_fu_162_p1;

assign state_s_d0 = (state_s_load_reg_337 ^ r_15_7_i_fu_260_p9);

assign trunc_ln417_fu_167_p1 = ap_sig_allocacmp_i_38[1:0];

assign zext_ln31_31_fu_205_p1 = or_ln31_13_fu_200_p2;

assign zext_ln31_32_fu_215_p1 = or_ln31_14_fu_210_p2;

assign zext_ln31_33_fu_225_p1 = or_ln31_15_fu_220_p2;

assign zext_ln31_34_fu_235_p1 = or_ln31_16_fu_230_p2;

assign zext_ln31_35_fu_245_p1 = or_ln31_17_fu_240_p2;

assign zext_ln31_36_fu_255_p1 = or_ln31_18_fu_250_p2;

assign zext_ln31_fu_190_p1 = or_ln31_fu_184_p2;

assign zext_ln416_fu_162_p1 = ap_sig_allocacmp_i_38;

assign zext_ln417_fu_179_p1 = shl_ln_fu_171_p3;

always @ (posedge ap_clk) begin
    shl_ln_reg_291[2:0] <= 3'b000;
    state_s_addr_reg_311[4:3] <= 2'b00;
end

endmodule //pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_poly_uniform_Pipeline_VITIS_LOOP_416_5
