// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module pqcrystals_dilithium2_ref_keccak_absorb_Pipeline_VITIS_LOOP_400_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        select_ln31_1,
        select_ln31,
        zext_ln400,
        s_address0,
        s_ce0,
        s_we0,
        s_d0,
        s_address1,
        s_ce1,
        s_q1
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] select_ln31_1;
input  [7:0] select_ln31;
input  [2:0] zext_ln400;
output  [4:0] s_address0;
output   s_ce0;
output   s_we0;
output  [63:0] s_d0;
output  [4:0] s_address1;
output   s_ce1;
input  [63:0] s_q1;

reg ap_idle;
reg s_ce0;
reg s_we0;
reg s_ce1;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_subdone;
reg   [0:0] ap_phi_mux_i_phi_fu_85_p4;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] i_reg_81;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] xor_ln400_fu_107_p2;
reg   [0:0] xor_ln400_reg_206;
reg   [4:0] s_addr_reg_211;
wire   [0:0] addr_cmp_fu_126_p2;
reg   [0:0] addr_cmp_reg_217;
wire    ap_block_pp0_stage0;
wire    ap_loop_init;
wire   [63:0] zext_ln401_fu_118_p1;
reg   [63:0] reuse_addr_reg_fu_38;
reg   [63:0] reuse_reg_fu_42;
wire   [63:0] xor_ln401_fu_159_p2;
wire   [2:0] i_89_cast_fu_103_p1;
wire   [2:0] add_ln401_fu_113_p2;
wire   [63:0] reuse_select_fu_152_p3;
wire   [63:0] r_13_7_fu_137_p9;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
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
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_reg_81 <= 1'd0;
    end else if (((i_reg_81 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        i_reg_81 <= xor_ln400_reg_206;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            reuse_addr_reg_fu_38 <= 64'd18446744073709551615;
        end else if (((ap_phi_mux_i_phi_fu_85_p4 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            reuse_addr_reg_fu_38 <= zext_ln401_fu_118_p1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            reuse_reg_fu_42 <= 64'd0;
        end else if (((i_reg_81 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            reuse_reg_fu_42 <= xor_ln401_fu_159_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_phi_mux_i_phi_fu_85_p4 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        addr_cmp_reg_217 <= addr_cmp_fu_126_p2;
        s_addr_reg_211[2 : 0] <= zext_ln401_fu_118_p1[2 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xor_ln400_reg_206 <= xor_ln400_fu_107_p2;
    end
end

always @ (*) begin
    if (((ap_phi_mux_i_phi_fu_85_p4 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((i_reg_81 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_i_phi_fu_85_p4 = xor_ln400_reg_206;
    end else begin
        ap_phi_mux_i_phi_fu_85_p4 = i_reg_81;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        s_ce0 = 1'b1;
    end else begin
        s_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_ce1 = 1'b1;
    end else begin
        s_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((i_reg_81 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        s_we0 = 1'b1;
    end else begin
        s_we0 = 1'b0;
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

assign add_ln401_fu_113_p2 = (i_89_cast_fu_103_p1 + zext_ln400);

assign addr_cmp_fu_126_p2 = ((reuse_addr_reg_fu_38 == zext_ln401_fu_118_p1) ? 1'b1 : 1'b0);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

assign i_89_cast_fu_103_p1 = ap_phi_mux_i_phi_fu_85_p4;

assign r_13_7_fu_137_p9 = {{{{{{{{select_ln31_1}, {select_ln31}}, {select_ln31_1}}, {select_ln31}}, {select_ln31_1}}, {select_ln31}}, {select_ln31_1}}, {select_ln31}};

assign reuse_select_fu_152_p3 = ((addr_cmp_reg_217[0:0] == 1'b1) ? reuse_reg_fu_42 : s_q1);

assign s_address0 = s_addr_reg_211;

assign s_address1 = zext_ln401_fu_118_p1;

assign s_d0 = (reuse_select_fu_152_p3 ^ r_13_7_fu_137_p9);

assign xor_ln400_fu_107_p2 = (ap_phi_mux_i_phi_fu_85_p4 ^ 1'd1);

assign xor_ln401_fu_159_p2 = (reuse_select_fu_152_p3 ^ r_13_7_fu_137_p9);

assign zext_ln401_fu_118_p1 = add_ln401_fu_113_p2;

always @ (posedge ap_clk) begin
    s_addr_reg_211[4:3] <= 2'b00;
end

endmodule //pqcrystals_dilithium2_ref_keccak_absorb_Pipeline_VITIS_LOOP_400_2
