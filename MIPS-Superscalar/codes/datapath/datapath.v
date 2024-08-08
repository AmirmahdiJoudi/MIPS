module datapath (

    input clk,
    input rst,
    input PC_stall,
    input NOP_p1,
    input NOP_p2,
    input IF_ID_en_p1,
    input IF_ID_en_p2,
    input IF_flush_p1_inst,
    input IF_flush_p1_pc,
    input IF_flush_p2,
    input ID_flush_p1,
    input ID_flush_p2,
    input PC_src,
    input immSgn_p1,
    input immSgn_p2,
    input swp,
    input bp11,
    input bp12,
    input bp13,
    input bp21,
    input bp22,
    input bp23,
    input [1:0] jal_en,
    input[1:0] jump,
    input[1:0] forwardSrc1_p1, 
    input[1:0] forwardSrc2_p1,
    input[1:0] forwardSrc1_p2, 
    input[1:0] forwardSrc2_p2,
    input[10:0] control_signals_p1,
    input[10:0] control_signals_p2,
    input[63:0] inst, 
    input[31:0] data_in_p2,
    
    output are_equal, 
    output isBub,
    output zero_p1, 
    output zero_p2, 
    output IF_ID_memread_p2,
    output ID_EX_memread_p2, 
    output IF_ID_reg_write_p1,
    output IF_ID_reg_write_p2,
    output ID_EX_reg_write_p1, 
    output ID_EX_reg_write_p2, 
    output EX_MEM_reg_write_p1, 
    output EX_MEM_reg_write_p2, 
    output MEM_WB_reg_write_p1, 
    output MEM_WB_reg_write_p2, 
    output mem_read_p2, 
    output mem_write_p2,
    output[5:0] opcode_p1, 
    output[5:0] opcode_p2, 
    output[5:0] func_p1,
    output[5:0] func_p2,
    output[4:0] ID_EX_rs_p1,
    output[4:0] ID_EX_rt_p1,
    output[4:0] ID_EX_rs_p2,
    output[4:0] ID_EX_rt_p2,
    output[4:0] ID_EX_rw_p1,
    output[4:0] IF_ID_rs_p1,
    output[4:0] IF_ID_rt_p1,
    output[4:0] IF_ID_rw_p1,
    output[4:0] IF_ID_rw_p2,
    output[4:0] ID_EX_rw_p2,
    output[4:0] IF_ID_rs_p2,
    output[4:0] IF_ID_rt_p2,
    output[4:0] EX_MEM_rd_p1,
    output[4:0] EX_MEM_rd_p2,
    output[4:0] MEM_WB_rd_p1,
    output[4:0] MEM_WB_rd_p2,
    output[31:0] inst_adr, 
    output[31:0] data_adr, 
    output[31:0] data_out

);
    
    wire MEM_WB_rf_write_en_p1;
    wire MEM_WB_rf_write_en_p2;
    wire ALU_src_OP2_p1;
    wire ALU_src_OP2_p2;
    wire EX_MEM_mem_to_reg_p1;
    wire EX_MEM_mem_to_reg_p2;
    wire shft_p1;
    wire shft_p2;
    wire [3:0] ID_EX_memory_signals_p1;
    wire [3:0] ID_EX_memory_signals_p2;
    wire [3:0] ALU_OPERATION_p1;
    wire [3:0] ALU_OPERATION_p2;
    wire [4:0] ID_rf_src1_p1;
    wire [4:0] ID_rf_src2_p1;
    wire [4:0] ID_rf_src1_p2;
    wire [4:0] ID_rf_src2_p2;
    wire [4:0] p1_ID_rf_src1;
    wire [4:0] p1_ID_rf_src2;
    wire [4:0] p2_ID_rf_src1;
    wire [4:0] p2_ID_rf_src2;
    wire [4:0] ID_rf_rd_p1;
    wire [4:0] ID_rf_rd_p2;
    wire [4:0] p1_ID_rf_rd;
    wire [4:0] ID_rd_final_p1;
    wire [4:0] ID_rd_final_p2;
    wire [4:0] p1_ID_rd_final;
    wire [4:0] p2_ID_rd_final;
    wire [4:0] shamnt_p1;
    wire [4:0] shamnt_p2;
    wire [4:0] ID_EX_rd_final_p1;
    wire [4:0] ID_EX_rd_final_p2;
    wire [4:0] ID_EX_rd_p1;
    wire [4:0] RF_WR_Src_p1;
    wire [4:0] MEM_WB_rf_rw_p1;
    wire [4:0] MEM_WB_rf_rw_p2;
    wire [10:0] p1_control_signals;
    wire [10:0] p2_control_signals;
    wire [10:0] control_signals_nop_p1;
    wire [10:0] control_signals_nop_p2;
    wire [15:0] Inst4SgnExt_p1;
    wire [15:0] Inst4SgnExt_p2;
    wire [25:0] jump_immediate_p1;
    wire [25:0] jump_immediate_p2;
    wire [25:0] p1_jump_immediate;
    wire [27:0] jump_immediate_00;
    wire [31:0] IF_PC_In;
    wire [31:0] IF_PC_Out;
    wire [31:0] ID_PCplus8_p1;
    wire [31:0] ID_EX_rf_src2_data_p2;
    wire [31:0] MEM_WB_rf_data_p1;
    wire [31:0] MEM_WB_rf_data_p2;
    wire [31:0] p1_MEM_WB_rf_data;
    wire [31:0] p2_MEM_WB_rf_data;
    wire [31:0] jump_address;
    wire [31:0] ALU_OP1_p1;
    wire [31:0] ALU_OP2_p1;
    wire [31:0] ALU_OP1_p2;
    wire [31:0] ALU_OP2_p2;
    wire [31:0] ID_ALU_Src1_L1_p1;
    wire [31:0] ID_ALU_Src1_L1_p2;
    wire [31:0] ID_ALU_Src2_L1_p1;
    wire [31:0] ID_ALU_Src2_L1_p2;
    wire [31:0] ID_ALU_Src1_p1;
    wire [31:0] ID_ALU_Src1_p2;
    wire [31:0] ID_ALU_Src2_p1;
    wire [31:0] ID_ALU_Src2_p2;
    wire [31:0] RF_src1_data_p1;
    wire [31:0] RF_src2_data_p1;
    wire [31:0] RF_src1_data_p2;
    wire [31:0] RF_src2_data_p2;
    wire [31:0] p1_src1;
    wire [31:0] p1_src2;
    wire [31:0] p2_src1;
    wire [31:0] p2_src2;
    wire [31:0] PCplus8;
    wire [31:0] ID_PCplus4;
    wire [31:0] BEQ_address_p1;
    wire [31:0] alu_out_p1;
    wire [31:0] alu_out_p2;
    wire [31:0] p1_alu_out;
    wire [31:0] p2_alu_out;
    wire [31:0] MEM_rf_data_p1;
    wire [31:0] MEM_rf_data_p2;
    wire [31:0] p2_MEM_rf_data;
    wire [31:0] sgn_ext_out_p1;
    wire [31:0] sgn_ext_out_p2;
    wire [31:0] p1_sgn_ext_out;
    wire [31:0] p2_sgn_ext_out;
    wire [31:0] sgn_ext_out_00_p1;
    wire [31:0] EX_MEM_ALU_Out_p1;
    wire [31:0] EX_MEM_ALU_Out_p2;
    wire [31:0] RF_WR_Data_p1;
    wire [31:0] PC2RF;
    wire [95:0] IF_ID_out; 
    wire [75:0] MEM_WB_out; 
    wire [115:0] EX_MEM_out;
    wire [189:0] ID_EX_out;
    
    //////////////////////////////////////////////////////// IF
    register #(
        .size(32)
    ) PC (
        .clk(clk),
        .rst(rst),
        .clr(1'b0),
        .ld(PC_stall),
        .d_in(IF_PC_In),
        .d_out(IF_PC_Out)
    );

    adder #(
        .size(32)
    ) PCC_ADDER (
        .a(IF_PC_Out),
        .b(32'd8),
        .cin(1'b0),
        .cout(),
        .sum(PCplus8)
    );

    mux2to1 #(
        .size(32)
    ) PC_Input_Src_MUX (
        .i0(PCplus8), 
        .i1(jump_address),
        .sel(PC_src),
        .y(IF_PC_In)
    );

    mux4to1 #(
        .size(32)
    ) JUMP_ADDRESS_MUX (
        .i0(BEQ_address_p1), 
        .i1({IF_ID_out[63:60], jump_immediate_00}),
        .i2(ID_ALU_Src1_L1_p1),
        .i3(sgn_ext_out_00_p1),
        .sel(jump),
        .y(jump_address)
    );

    register #(
        .size(32)
    ) IF_ID_reg_p0 (
        .clk(clk),
        .rst(rst),
        .clr(IF_flush_p1_pc),
        .ld(IF_ID_en_p1),
        .d_in({PCplus8}),
        .d_out(IF_ID_out[95:64])
    );

    register #(
        .size(32)
    ) IF_ID_reg_p1 (
        .clk(clk),
        .rst(rst),
        .clr(IF_flush_p1_inst),
        .ld(IF_ID_en_p1),
        .d_in({inst[31:0]}),
        .d_out(IF_ID_out[63:32])
    );

    register #(
        .size(32)
    ) IF_ID_reg_p2 (
        .clk(clk),
        .rst(rst),
        .clr(IF_flush_p2),
        .ld(IF_ID_en_p2),
        .d_in({inst[63:32]}),
        .d_out(IF_ID_out[31:0])
    );
        
    //////////////////////////////////////////////////////// ID
    assign isBub = (IF_ID_out[63:32] == 32'b0) ? 1'b1 : 1'b0;
    assign func_p1 = IF_ID_out[37:32];
    assign Inst4SgnExt_p1 = IF_ID_out[47:32];
    assign jump_immediate_p1 = IF_ID_out[57:32];
    assign shamnt_p1 = IF_ID_out[42:38];
    assign ID_rf_rd_p1 = IF_ID_out[47:43];
    assign ID_rf_src2_p1 = IF_ID_out[52:48];
    assign ID_rf_src1_p1 = IF_ID_out[57:53];
    assign opcode_p1 = IF_ID_out[63:58];
    
    assign ID_PCplus8_p1 = IF_ID_out[95:64];
    assign IF_ID_rs_p1 = p1_ID_rf_src1;
    assign IF_ID_rt_p1 = p1_ID_rf_src2;
    assign IF_ID_rw_p1 = p1_ID_rd_final;
    assign IF_ID_reg_write_p1 = control_signals_p1[8];
    assign ID_EX_rw_p1 = ID_EX_rd_final_p1;
    assign IF_ID_memread_p2 = control_signals_p2[6];
    assign shft_p1 = control_signals_nop_p1[10];
    assign inst_adr = IF_PC_Out;
    assign ALU_src_OP2_p1 = control_signals_nop_p1[5];
    assign are_equal = (ID_ALU_Src1_p1 == ID_ALU_Src2_p1) ? 1'b1 : 1'b0;


    assign func_p2 = IF_ID_out[5:0];
    assign Inst4SgnExt_p2 = IF_ID_out[15:0];
    assign jump_immediate_p2 = IF_ID_out[25:0];
    assign shamnt_p2 = IF_ID_out[10:6];
    assign ID_rf_rd_p2 = IF_ID_out[15:11];
    assign ID_rf_src2_p2 = IF_ID_out[20:16];
    assign ID_rf_src1_p2 = IF_ID_out[25:21];
    assign opcode_p2 = IF_ID_out[31:26];
    assign IF_ID_rs_p2 = p2_ID_rf_src1;
    assign IF_ID_rt_p2 = p2_ID_rf_src2;
    assign IF_ID_rw_p2 = p2_ID_rd_final;
    assign IF_ID_reg_write_p2 = control_signals_p2[8];
    assign ID_EX_rw_p2 = ID_EX_rd_final_p2;
    assign shft_p2 = control_signals_nop_p2[10];
    assign ALU_src_OP2_p2 = control_signals_nop_p2[5];

    reg_file RF (
        .clk(clk),
        .rst(rst),
        .reg_write_p1(MEM_WB_rf_write_en_p1),  
        .rd_reg1_p1(ID_rf_src1_p1), 
        .rd_reg2_p1(ID_rf_src2_p1), 
        .wr_reg_p1(RF_WR_Src_p1),
        .wr_data_p1(RF_WR_Data_p1),
        .reg_write_p2(MEM_WB_rf_write_en_p2),  
        .rd_reg1_p2(ID_rf_src1_p2), 
        .rd_reg2_p2(ID_rf_src2_p2), 
        .wr_reg_p2(MEM_WB_rf_rw_p2),
        .wr_data_p2(MEM_WB_rf_data_p2),
        .rd_data1_p1(RF_src1_data_p1), 
        .rd_data2_p1(RF_src2_data_p1),
        .rd_data1_p2(RF_src1_data_p2), 
        .rd_data2_p2(RF_src2_data_p2)
    );

    mux2to1 #(
        .size(32)
    ) reg1_p1_mux_swp (
        .i0(RF_src1_data_p1), 
        .i1(RF_src1_data_p2),
        .sel(swp),
        .y(p1_src1)
    );

    mux2to1 #(
        .size(32)
    ) reg2_p1_mux_swp (
        .i0(RF_src2_data_p1), 
        .i1(RF_src2_data_p2),
        .sel(swp),
        .y(p1_src2)
    );

    mux2to1 #(
        .size(32)
    ) reg1_p2_mux_swp (
        .i0(RF_src1_data_p2), 
        .i1(RF_src1_data_p1),
        .sel(swp),
        .y(p2_src1)
    );

    mux2to1 #(
        .size(32)
    ) reg2_p2_mux_swp (
        .i0(RF_src2_data_p2), 
        .i1(RF_src2_data_p1),
        .sel(swp),
        .y(p2_src2)
    );

    mux2to1 #(
        .size(32)
    ) RF_WR_DATA_MUX_L1_p1 (
        .i0(ID_PCplus4), 
        .i1(ID_PCplus8_p1),
        .sel(swp),
        .y(PC2RF)
    );
    
    mux2to1 #(
        .size(32)
    ) RF_WR_DATA_MUX_p1 (
        .i0(MEM_WB_rf_data_p1), 
        .i1(ID_PCplus8_p1),
        .sel(jal_en[1]|jal_en[0]),
        .y(RF_WR_Data_p1)
    );

    mux2to1 #(
        .size(5)
    ) rd_p1_mux (
        .i0(ID_rf_rd_p1), 
        .i1(ID_rf_rd_p2),
        .sel(swp),
        .y(p1_ID_rf_rd)
    );

    mux4to1 #(
        .size(5)
    ) RF_WR_SRC_MUX (
        .i0(MEM_WB_rf_rw_p1), 
        .i1(5'b11111),
        .i2(p1_ID_rf_rd),
        .i3(),
        .sel(jal_en),
        .y(RF_WR_Src_p1)
    );

    sign_ext SGN_EXT_P1 (
        .sgn(immSgn_p1),
        .d_in(Inst4SgnExt_p1),
        .d_out(sgn_ext_out_p1)
    );

    mux2to1 #(
        .size(32)
    ) sgn_ext_p1_mux_swp (
        .i0(sgn_ext_out_p1), 
        .i1(sgn_ext_out_p2),
        .sel(swp),
        .y(p1_sgn_ext_out)
    );

    mux2to1 #(
        .size(32)
    ) sgn_ext_p1_mux_sp (
        .i0(sgn_ext_out_p1), 
        .i1(sgn_ext_out_p2),
        .sel(swp),
        .y(p1_sgn_ext_out)
    );

    assign sgn_ext_out_00_p1 = {p1_sgn_ext_out[29:0], 2'b00};

    mux2to1 #(
        .size(26)
    ) jump_immediate_p1_mux_swp (
        .i0(jump_immediate_p1), 
        .i1(jump_immediate_p2),
        .sel(swp),
        .y(p1_jump_immediate)
    );

    assign jump_immediate_00 = {p1_jump_immediate, 2'b00};

    adder #(
        .size(32)
    ) BEQ_ADDRESS_ADDER_p1 (
        .a(PC2RF),
        .b(sgn_ext_out_00_p1),
        .cin(1'b0),
        .cout(),
        .sum(BEQ_address_p1)
    );

    adder #(
        .size(32)
    ) PCC_ADDER_4 (
        .a(ID_PCplus8_p1),
        .b(-32'd4),
        .cin(1'b0),
        .cout(),
        .sum(ID_PCplus4)
    );

    mux2to1 #(
        .size(11)
    ) cntrl_p1_mux_swp (
        .i0(control_signals_p1), 
        .i1(control_signals_p2),
        .sel(swp),
        .y(p1_control_signals)
    );

    mux2to1 #(
        .size(11)
    ) STALL_MUX_p1 (
        .i0(p1_control_signals), 
        .i1(11'b0),
        .sel(NOP_p1),
        .y(control_signals_nop_p1)
    );

    mux2to1 #(
        .size(5)
    ) MUX_rd_final_p1 (
        .i0(ID_rf_src2_p1), 
        .i1(ID_rf_rd_p1),
        .sel(control_signals_nop_p1[0]),
        .y(ID_rd_final_p1)
    );

    mux2to1 #(
        .size(5)
    ) rd_p1_mux_swp (
        .i0(ID_rd_final_p1), 
        .i1(ID_rd_final_p2),
        .sel(swp),
        .y(p1_ID_rd_final)
    );

    mux2to1 #(
        .size(32)
    ) alu_p1_bypass (
        .i0(alu_out_p1), 
        .i1(alu_out_p2),
        .sel(bp11),
        .y(p1_alu_out)
    );

    mux2to1 #(
        .size(32)
    ) mem_rf_data_p1_bypass (
        .i0(EX_MEM_ALU_Out_p1), 
        .i1(MEM_rf_data_p2),
        .sel(bp12),
        .y(MEM_rf_data_p1)
    );

    mux2to1 #(
        .size(32)
    ) wb_rf_data_p1_bypass (
        .i0(MEM_WB_rf_data_p1), 
        .i1(MEM_WB_rf_data_p2),
        .sel(bp13),
        .y(p1_MEM_WB_rf_data)
    );

    mux4to1 #(
        .size(32)
    ) MUX_ALU_Src1_L1_p1 (
        .i0(p1_src1), 
        .i1(p1_alu_out),
        .i2(MEM_rf_data_p1),
        .i3(p1_MEM_WB_rf_data),
        .sel(forwardSrc1_p1),
        .y(ID_ALU_Src1_L1_p1)
    );

    mux2to1 #(
        .size(32)
    ) MUX_ALU_Src1_p1 (
        .i0(ID_ALU_Src1_L1_p1), 
        .i1({27'b0, shamnt_p1}),
        .sel(shft_p1),
        .y(ID_ALU_Src1_p1)
    );

    mux4to1 #(
        .size(32)
    ) MUX_ALU_Src2_L1_p1 (
        .i0(p1_src2), 
        .i1(p1_alu_out),
        .i2(MEM_rf_data_p1),
        .i3(p1_MEM_WB_rf_data),
        .sel(forwardSrc2_p1),
        .y(ID_ALU_Src2_L1_p1)
    );

    mux2to1 #(
        .size(32)
    ) MUX_ALU_Src2_p1 (
        .i0(ID_ALU_Src2_L1_p1), 
        .i1(p1_sgn_ext_out),
        .sel(ALU_src_OP2_p1),
        .y(ID_ALU_Src2_p1)
    );

    mux2to1 #(
        .size(5)
    ) bypass_regs1_mux_swp_p1 (
        .i0(ID_rf_src1_p1), 
        .i1(ID_rf_src1_p2),
        .sel(swp),
        .y(p1_ID_rf_src1)
    );

    mux2to1 #(
        .size(5)
    ) bypass_regs2_mux_swp_p1 (
        .i0(ID_rf_src2_p1), 
        .i1(ID_rf_src2_p2),
        .sel(swp),
        .y(p1_ID_rf_src2)
    );

    sign_ext SGN_EXT_P2 (
        .sgn(immSgn_p2),
        .d_in(Inst4SgnExt_p2),
        .d_out(sgn_ext_out_p2)
    );

    mux2to1 #(
        .size(32)
    ) sgn_ext_p2_mux_sep (
        .i0(sgn_ext_out_p2), 
        .i1(sgn_ext_out_p1),
        .sel(swp),
        .y(p2_sgn_ext_out)
    );

    mux2to1 #(
        .size(11)
    ) cntrl_p2_mux_swp (
        .i0(control_signals_p2), 
        .i1(control_signals_p1),
        .sel(swp),
        .y(p2_control_signals)
    );

    mux2to1 #(
        .size(11)
    ) STALL_MUX_p2 (
        .i0(p2_control_signals), 
        .i1(11'b0),
        .sel(NOP_p2),
        .y(control_signals_nop_p2)
    );

    mux2to1 #(
        .size(5)
    ) MUX_rd_final_p2 (
        .i0(ID_rf_src2_p2), 
        .i1(ID_rf_rd_p2),
        .sel(control_signals_nop_p2[0]),
        .y(ID_rd_final_p2)
    );

    mux2to1 #(
        .size(5)
    ) rd_p2_mux_swp (
        .i0(ID_rd_final_p2), 
        .i1(ID_rd_final_p1),
        .sel(swp),
        .y(p2_ID_rd_final)
    );

    mux2to1 #(
        .size(32)
    ) alu_p2_bypass (
        .i0(alu_out_p2), 
        .i1(alu_out_p1),
        .sel(bp21),
        .y(p2_alu_out)
    );

    mux2to1 #(
        .size(32)
    ) mem_rf_data_p2_bypass (
        .i0(MEM_rf_data_p2),
        .i1(EX_MEM_ALU_Out_p1), 
        .sel(bp22),
        .y(p2_MEM_rf_data)
    );

    mux2to1 #(
        .size(32)
    ) wb_rf_data_p2_bypass (
        .i0(MEM_WB_rf_data_p2), 
        .i1(MEM_WB_rf_data_p1),
        .sel(bp23),
        .y(p2_MEM_WB_rf_data)
    );

    mux4to1 #(
        .size(32)
    ) MUX_ALU_Src1_L1_p2 (
        .i0(p2_src1), 
        .i1(p2_alu_out),
        .i2(p2_MEM_rf_data),
        .i3(p2_MEM_WB_rf_data),
        .sel(forwardSrc1_p2),
        .y(ID_ALU_Src1_L1_p2)
    );

    mux2to1 #(
        .size(32)
    ) MUX_ALU_Src1_p2 (
        .i0(ID_ALU_Src1_L1_p2), 
        .i1({27'b0, shamnt_p2}),
        .sel(shft_p2),
        .y(ID_ALU_Src1_p2)
    );

    mux4to1 #(
        .size(32)
    ) MUX_ALU_Src2_L1_p2 (
        .i0(p2_src2), 
        .i1(p2_alu_out),
        .i2(p2_MEM_rf_data),
        .i3(p2_MEM_WB_rf_data),
        .sel(forwardSrc2_p2),
        .y(ID_ALU_Src2_L1_p2)
    );

    mux2to1 #(
        .size(32)
    ) MUX_ALU_Src2_p2 (
        .i0(ID_ALU_Src2_L1_p2), 
        .i1(p2_sgn_ext_out),
        .sel(ALU_src_OP2_p2),
        .y(ID_ALU_Src2_p2)
    );

    mux2to1 #(
        .size(5)
    ) bypass_regs1_mux_swp_p2 (
        .i0(ID_rf_src1_p2), 
        .i1(ID_rf_src1_p1),
        .sel(swp),
        .y(p2_ID_rf_src1)
    );

    mux2to1 #(
        .size(5)
    ) bypass_regs2_mux_swp_p2 (
        .i0(ID_rf_src2_p2), 
        .i1(ID_rf_src2_p1),
        .sel(swp),
        .y(p2_ID_rf_src2)
    );

    register #(
        .size(79)
    ) ID_EX_reg_p1 (
        .clk(clk),
        .rst(rst),
        .clr(ID_flush_p1),
        .ld(1'b1),
        .d_in({p1_ID_rd_final, control_signals_nop_p1[10:1], ID_ALU_Src2_p1, ID_ALU_Src1_p1}),
        .d_out(ID_EX_out[78:0])
    );

    register #(
        .size(111)
    ) ID_EX_reg_p2 (
        .clk(clk),
        .rst(rst),
        .clr(ID_flush_p2),
        .ld(1'b1),
        .d_in({p2_ID_rd_final, ID_ALU_Src2_L1_p2, control_signals_nop_p2[10:1], ID_ALU_Src2_p2, ID_ALU_Src1_p2}),
        .d_out(ID_EX_out[189:79])
    );

    //////////////////////////////////////////////////////// EX  
    assign ALU_OP1_p1 = ID_EX_out[31:0];
    assign ALU_OP2_p1 = ID_EX_out[63:32];
    assign ALU_OPERATION_p1 = ID_EX_out[67:64];
    assign ID_EX_memory_signals_p1 = ID_EX_out[72:69];
    assign ID_EX_rd_final_p1 = ID_EX_out[78:74];
    assign ID_EX_rt_p1 = ID_EX_rd_final_p1;
    assign ID_EX_reg_write_p1 = ID_EX_out[72];


    assign ALU_OP1_p2 = ID_EX_out[110:79];
    assign ALU_OP2_p2 = ID_EX_out[142:111];
    assign ALU_OPERATION_p2 = ID_EX_out[146:143];
    assign ID_EX_memory_signals_p2 = ID_EX_out[151:148];
    assign ID_EX_rf_src2_data_p2 = ID_EX_out[184:153];
    assign ID_EX_rd_final_p2 = ID_EX_out[189:185];
    assign ID_EX_rt_p2 = ID_EX_rd_final_p2;
    assign ID_EX_memread_p2 = ID_EX_out[148];
    assign ID_EX_reg_write_p2 = ID_EX_out[151];

    
    alu #(
        .size(32)
    ) ALU_p1 (
        .a(ALU_OP1_p1), 
        .b(ALU_OP2_p1),
        .ctrl(ALU_OPERATION_p1),
        .y(alu_out_p1),
        .zero(zero_p1)
    );

    alu #(
        .size(32)
    ) ALU_p2 (
        .a(ALU_OP1_p2), 
        .b(ALU_OP2_p2),
        .ctrl(ALU_OPERATION_p2),
        .y(alu_out_p2),
        .zero(zero_p2)
    );
    
    register #(
        .size(116)
    ) EX_MEM_reg (
        .clk(clk),
        .rst(rst),
        .clr(1'b0),
        .ld(1'b1),
        .d_in({ID_EX_memory_signals_p2, zero_p2, alu_out_p2, ID_EX_rf_src2_data_p2, ID_EX_rd_final_p2, ID_EX_memory_signals_p1, zero_p1, alu_out_p1, ID_EX_rd_final_p1}),
        .d_out(EX_MEM_out)
    );

    //////////////////////////////////////////////////////// MEM  
    assign EX_MEM_ALU_Out_p1 = EX_MEM_out[36:5];
    assign EX_MEM_reg_write_p1 = EX_MEM_out[40];
    assign EX_MEM_rd_p1 = EX_MEM_out[4:0];

    assign EX_MEM_ALU_Out_p2 = EX_MEM_out[110:79];
    assign EX_MEM_mem_to_reg_p2 = EX_MEM_out[115];
    assign EX_MEM_reg_write_p2 = EX_MEM_out[114];
    assign EX_MEM_rd_p2 = EX_MEM_out[46:42];
    assign mem_read_p2 = EX_MEM_out[112];
    assign mem_write_p2 = EX_MEM_out[113];


    assign data_adr = EX_MEM_ALU_Out_p2;
    assign data_out = EX_MEM_out[78:47];

    mux2to1 #(
        .size(32)
    ) MUX (
        .i0(data_in_p2), 
        .i1(EX_MEM_ALU_Out_p2),
        .sel(EX_MEM_mem_to_reg_p2),
        .y(MEM_rf_data_p2)
    );

    register #(
        .size(76)
    ) MEM_WB_reg (
        .clk(clk),
        .rst(rst),
        .clr(1'b0),
        .ld(1'b1),
        .d_in({EX_MEM_reg_write_p2, MEM_rf_data_p2, EX_MEM_rd_p2, EX_MEM_reg_write_p1, EX_MEM_ALU_Out_p1, EX_MEM_rd_p1}),
        .d_out(MEM_WB_out)
    );

    //////////////////////////////////////////////////////// WB
    assign MEM_WB_rf_rw_p1 = MEM_WB_out[4:0];
    assign MEM_WB_rf_data_p1 = MEM_WB_out[36:5];
    assign MEM_WB_rf_write_en_p1 = MEM_WB_out[37];
    assign MEM_WB_reg_write_p1 = MEM_WB_rf_write_en_p1;
    assign MEM_WB_rd_p1 = MEM_WB_rf_rw_p1; 

    assign MEM_WB_rf_rw_p2 = MEM_WB_out[42:38];
    assign MEM_WB_rf_data_p2 = MEM_WB_out[74:43];
    assign MEM_WB_rf_write_en_p2 = MEM_WB_out[75];
    assign MEM_WB_reg_write_p2 = MEM_WB_rf_write_en_p2;
    assign MEM_WB_rd_p2 = MEM_WB_rf_rw_p2;  
    
endmodule
