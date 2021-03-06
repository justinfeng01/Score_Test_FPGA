// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module hs2axis (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        in_V_V_dout,
        in_V_V_empty_n,
        in_V_V_read,
        out_r_TDATA,
        out_r_TVALID,
        out_r_TREADY,
        out_r_TLAST,
        ch_div_K,
        height_out,
        width_out
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state5 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [127:0] in_V_V_dout;
input   in_V_V_empty_n;
output   in_V_V_read;
output  [127:0] out_r_TDATA;
output   out_r_TVALID;
input   out_r_TREADY;
output   out_r_TLAST;
input  [31:0] ch_div_K;
input  [31:0] height_out;
input  [31:0] width_out;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg in_V_V_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [127:0] out_V_data_V_1_data_out;
reg    out_V_data_V_1_vld_in;
wire    out_V_data_V_1_vld_out;
wire    out_V_data_V_1_ack_in;
wire    out_V_data_V_1_ack_out;
reg   [127:0] out_V_data_V_1_payload_A;
reg   [127:0] out_V_data_V_1_payload_B;
reg    out_V_data_V_1_sel_rd;
reg    out_V_data_V_1_sel_wr;
wire    out_V_data_V_1_sel;
wire    out_V_data_V_1_load_A;
wire    out_V_data_V_1_load_B;
reg   [1:0] out_V_data_V_1_state;
wire    out_V_data_V_1_state_cmp_full;
reg    out_V_last_1_data_out;
reg    out_V_last_1_vld_in;
wire    out_V_last_1_vld_out;
wire    out_V_last_1_ack_in;
wire    out_V_last_1_ack_out;
reg    out_V_last_1_payload_A;
reg    out_V_last_1_payload_B;
reg    out_V_last_1_sel_rd;
reg    out_V_last_1_sel_wr;
wire    out_V_last_1_sel;
wire    out_V_last_1_load_A;
wire    out_V_last_1_load_B;
reg   [1:0] out_V_last_1_state;
wire    out_V_last_1_state_cmp_full;
reg    in_V_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] tmp_16_reg_162;
reg    out_r_TDATA_blk_n;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] tmp_16_reg_162_pp0_iter1_reg;
reg   [30:0] i_reg_103;
wire   [31:0] tmp_s_fu_120_p2;
reg    ap_block_state1;
wire   [31:0] tmp_15_fu_126_p2;
wire   [0:0] tmp_16_fu_136_p2;
wire    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_state3_io;
wire    ap_block_state4_pp0_stage0_iter2;
reg    ap_block_state4_io;
reg    ap_block_pp0_stage0_11001;
wire   [30:0] i_2_fu_141_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] tmp_last_fu_147_p2;
reg   [0:0] tmp_last_reg_171;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_block_pp0_stage0_01001;
wire  signed [31:0] tmp1_fu_114_p0;
wire  signed [31:0] tmp1_fu_114_p1;
wire  signed [31:0] tmp1_fu_114_p2;
wire  signed [31:0] tmp_s_fu_120_p1;
wire   [31:0] i_cast_fu_132_p1;
wire    ap_CS_fsm_state5;
reg    ap_block_state5;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 out_V_data_V_1_sel_rd = 1'b0;
#0 out_V_data_V_1_sel_wr = 1'b0;
#0 out_V_data_V_1_state = 2'd0;
#0 out_V_last_1_sel_rd = 1'b0;
#0 out_V_last_1_sel_wr = 1'b0;
#0 out_V_last_1_state = 2'd0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

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
        end else if ((~((out_V_data_V_1_ack_in == 1'b0) | (out_V_last_1_ack_in == 1'b0)) & (1'b1 == ap_CS_fsm_state5))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        out_V_data_V_1_sel_rd <= 1'b0;
    end else begin
        if (((out_V_data_V_1_ack_out == 1'b1) & (out_V_data_V_1_vld_out == 1'b1))) begin
            out_V_data_V_1_sel_rd <= ~out_V_data_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        out_V_data_V_1_sel_wr <= 1'b0;
    end else begin
        if (((out_V_data_V_1_ack_in == 1'b1) & (out_V_data_V_1_vld_in == 1'b1))) begin
            out_V_data_V_1_sel_wr <= ~out_V_data_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        out_V_data_V_1_state <= 2'd0;
    end else begin
        if ((((out_V_data_V_1_state == 2'd2) & (out_V_data_V_1_vld_in == 1'b0)) | ((out_V_data_V_1_state == 2'd3) & (out_V_data_V_1_vld_in == 1'b0) & (out_V_data_V_1_ack_out == 1'b1)))) begin
            out_V_data_V_1_state <= 2'd2;
        end else if ((((out_V_data_V_1_state == 2'd1) & (out_V_data_V_1_ack_out == 1'b0)) | ((out_V_data_V_1_state == 2'd3) & (out_V_data_V_1_ack_out == 1'b0) & (out_V_data_V_1_vld_in == 1'b1)))) begin
            out_V_data_V_1_state <= 2'd1;
        end else if (((~((out_V_data_V_1_vld_in == 1'b0) & (out_V_data_V_1_ack_out == 1'b1)) & ~((out_V_data_V_1_ack_out == 1'b0) & (out_V_data_V_1_vld_in == 1'b1)) & (out_V_data_V_1_state == 2'd3)) | ((out_V_data_V_1_state == 2'd1) & (out_V_data_V_1_ack_out == 1'b1)) | ((out_V_data_V_1_state == 2'd2) & (out_V_data_V_1_vld_in == 1'b1)))) begin
            out_V_data_V_1_state <= 2'd3;
        end else begin
            out_V_data_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        out_V_last_1_sel_rd <= 1'b0;
    end else begin
        if (((out_V_last_1_ack_out == 1'b1) & (out_V_last_1_vld_out == 1'b1))) begin
            out_V_last_1_sel_rd <= ~out_V_last_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        out_V_last_1_sel_wr <= 1'b0;
    end else begin
        if (((out_V_last_1_ack_in == 1'b1) & (out_V_last_1_vld_in == 1'b1))) begin
            out_V_last_1_sel_wr <= ~out_V_last_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        out_V_last_1_state <= 2'd0;
    end else begin
        if ((((out_V_last_1_state == 2'd2) & (out_V_last_1_vld_in == 1'b0)) | ((out_V_last_1_state == 2'd3) & (out_V_last_1_vld_in == 1'b0) & (out_V_last_1_ack_out == 1'b1)))) begin
            out_V_last_1_state <= 2'd2;
        end else if ((((out_V_last_1_state == 2'd1) & (out_V_last_1_ack_out == 1'b0)) | ((out_V_last_1_state == 2'd3) & (out_V_last_1_ack_out == 1'b0) & (out_V_last_1_vld_in == 1'b1)))) begin
            out_V_last_1_state <= 2'd1;
        end else if (((~((out_V_last_1_vld_in == 1'b0) & (out_V_last_1_ack_out == 1'b1)) & ~((out_V_last_1_ack_out == 1'b0) & (out_V_last_1_vld_in == 1'b1)) & (out_V_last_1_state == 2'd3)) | ((out_V_last_1_state == 2'd1) & (out_V_last_1_ack_out == 1'b1)) | ((out_V_last_1_state == 2'd2) & (out_V_last_1_vld_in == 1'b1)))) begin
            out_V_last_1_state <= 2'd3;
        end else begin
            out_V_last_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_16_fu_136_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_reg_103 <= i_2_fu_141_p2;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_103 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((out_V_data_V_1_load_A == 1'b1)) begin
        out_V_data_V_1_payload_A <= in_V_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((out_V_data_V_1_load_B == 1'b1)) begin
        out_V_data_V_1_payload_B <= in_V_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((out_V_last_1_load_A == 1'b1)) begin
        out_V_last_1_payload_A <= tmp_last_reg_171;
    end
end

always @ (posedge ap_clk) begin
    if ((out_V_last_1_load_B == 1'b1)) begin
        out_V_last_1_payload_B <= tmp_last_reg_171;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_16_reg_162 <= tmp_16_fu_136_p2;
        tmp_16_reg_162_pp0_iter1_reg <= tmp_16_reg_162;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_16_fu_136_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_last_reg_171 <= tmp_last_fu_147_p2;
    end
end

always @ (*) begin
    if ((tmp_16_fu_136_p2 == 1'd0)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((~((out_V_data_V_1_ack_in == 1'b0) | (out_V_last_1_ack_in == 1'b0)) & (1'b1 == ap_CS_fsm_state5))) begin
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
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((out_V_data_V_1_ack_in == 1'b0) | (out_V_last_1_ack_in == 1'b0)) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_16_reg_162 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        in_V_V_blk_n = in_V_V_empty_n;
    end else begin
        in_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_16_reg_162 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in_V_V_read = 1'b1;
    end else begin
        in_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((out_V_data_V_1_sel == 1'b1)) begin
        out_V_data_V_1_data_out = out_V_data_V_1_payload_B;
    end else begin
        out_V_data_V_1_data_out = out_V_data_V_1_payload_A;
    end
end

always @ (*) begin
    if (((tmp_16_reg_162 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_V_data_V_1_vld_in = 1'b1;
    end else begin
        out_V_data_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((out_V_last_1_sel == 1'b1)) begin
        out_V_last_1_data_out = out_V_last_1_payload_B;
    end else begin
        out_V_last_1_data_out = out_V_last_1_payload_A;
    end
end

always @ (*) begin
    if (((tmp_16_reg_162 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_V_last_1_vld_in = 1'b1;
    end else begin
        out_V_last_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((((tmp_16_reg_162_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((tmp_16_reg_162 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        out_r_TDATA_blk_n = out_V_data_V_1_state[1'd1];
    end else begin
        out_r_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((tmp_16_fu_136_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)) & ~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((tmp_16_fu_136_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            if ((~((out_V_data_V_1_ack_in == 1'b0) | (out_V_last_1_ack_in == 1'b0)) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((tmp_16_reg_162 == 1'd1) & (in_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((1'b1 == ap_block_state4_io) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state3_io) | ((tmp_16_reg_162 == 1'd1) & (in_V_V_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((1'b1 == ap_block_state4_io) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state3_io) | ((tmp_16_reg_162 == 1'd1) & (in_V_V_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_io = ((tmp_16_reg_162 == 1'd1) & (out_V_data_V_1_ack_in == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((tmp_16_reg_162 == 1'd1) & (in_V_V_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state4_io = ((tmp_16_reg_162_pp0_iter1_reg == 1'd1) & (out_V_data_V_1_ack_in == 1'b0));
end

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state5 = ((out_V_data_V_1_ack_in == 1'b0) | (out_V_last_1_ack_in == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign i_2_fu_141_p2 = (i_reg_103 + 31'd1);

assign i_cast_fu_132_p1 = i_reg_103;

assign out_V_data_V_1_ack_in = out_V_data_V_1_state[1'd1];

assign out_V_data_V_1_ack_out = out_r_TREADY;

assign out_V_data_V_1_load_A = (out_V_data_V_1_state_cmp_full & ~out_V_data_V_1_sel_wr);

assign out_V_data_V_1_load_B = (out_V_data_V_1_state_cmp_full & out_V_data_V_1_sel_wr);

assign out_V_data_V_1_sel = out_V_data_V_1_sel_rd;

assign out_V_data_V_1_state_cmp_full = ((out_V_data_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign out_V_data_V_1_vld_out = out_V_data_V_1_state[1'd0];

assign out_V_last_1_ack_in = out_V_last_1_state[1'd1];

assign out_V_last_1_ack_out = out_r_TREADY;

assign out_V_last_1_load_A = (out_V_last_1_state_cmp_full & ~out_V_last_1_sel_wr);

assign out_V_last_1_load_B = (out_V_last_1_state_cmp_full & out_V_last_1_sel_wr);

assign out_V_last_1_sel = out_V_last_1_sel_rd;

assign out_V_last_1_state_cmp_full = ((out_V_last_1_state != 2'd1) ? 1'b1 : 1'b0);

assign out_V_last_1_vld_out = out_V_last_1_state[1'd0];

assign out_r_TDATA = out_V_data_V_1_data_out;

assign out_r_TLAST = out_V_last_1_data_out;

assign out_r_TVALID = out_V_last_1_state[1'd0];

assign tmp1_fu_114_p0 = ch_div_K;

assign tmp1_fu_114_p1 = width_out;

assign tmp1_fu_114_p2 = ($signed(tmp1_fu_114_p0) * $signed(tmp1_fu_114_p1));

assign tmp_15_fu_126_p2 = ($signed(tmp_s_fu_120_p2) + $signed(32'd4294967295));

assign tmp_16_fu_136_p2 = (($signed(i_cast_fu_132_p1) < $signed(tmp_s_fu_120_p2)) ? 1'b1 : 1'b0);

assign tmp_last_fu_147_p2 = ((i_cast_fu_132_p1 == tmp_15_fu_126_p2) ? 1'b1 : 1'b0);

assign tmp_s_fu_120_p1 = height_out;

assign tmp_s_fu_120_p2 = ($signed(tmp1_fu_114_p2) * $signed(tmp_s_fu_120_p1));

endmodule //hs2axis
