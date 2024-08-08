module datapath (

    input clk,
    input rst,
    input PC_stall,
    input NOP,
    input IF_ID_en,
    input IF_flush,
    input ID_flush,
    input PC_src,
    input immSgn,
    input [1:0] jal_en,
    input[1:0] jump,
    input[1:0] forwardSrc1, 
    input[1:0] forwardSrc2,
    input[10:0] control_signals,
    input[31:0] inst, 
    input[31:0] data_in,
    
    output are_equal, 
    output zero, 
    output ID_EX_memread, 
    output ID_EX_reg_write, 
    output EX_MEM_reg_write, 
    output MEM_WB_reg_write, 
    output mem_read, 
    output mem_write,
    output[5:0] opcode, 
    output[5:0] func,
    output[4:0] ID_EX_rs,
    output[4:0] ID_EX_rt,
    output[4:0] ID_EX_rw,
    output[4:0] IF_ID_rs,
    output[4:0] IF_ID_rt,
    output[4:0] EX_MEM_rd,
    output[4:0] MEM_WB_rd,
    output[31:0] inst_adr, 
    output[31:0] data_adr, 
    output[31:0] data_out

);
    
    wire MEM_WB_rf_write_en;
    wire ALU_src_OP2;
    wire ID_EX_rd_src;
    wire EX_MEM_mem_to_reg;
    wire shft;
    wire [3:0] ID_EX_memory_signals;
    wire [3:0] ALU_OPERATION;
    wire [4:0] ID_rf_src1;
    wire [4:0] ID_rf_src2;
    wire [4:0] ID_rf_rd;
    wire [4:0] shamnt;
    wire [4:0] EX_WrReg4RF;
    wire [4:0] ID_EX_rd;
    wire [4:0] RF_WR_Src;
    wire [4:0] MEM_WB_rf_rw;
    wire [10:0] control_signals_nop;
    wire [15:0] Inst4SgnExt;
    wire [25:0] jump_immediate;
    wire [27:0] jump_immediate_00;
    wire [31:0] IF_PC_In;
    wire [31:0] IF_PC_Out;
    wire [31:0] ID_PCplus4;
    wire [31:0] ID_EX_rf_src2_data;
    wire [31:0] MEM_WB_rf_data;
    wire [31:0] jump_address;
    wire [31:0] ALU_OP1;
    wire [31:0] ALU_OP2;
    wire [31:0] ID_ALU_Src1_L1;
    wire [31:0] ID_ALU_Src2_L1;
    wire [31:0] ID_ALU_Src1;
    wire [31:0] ID_ALU_Src2;
    wire [31:0] RF_src1_data;
    wire [31:0] RF_src2_data;
    wire [31:0] PCplus4;
    wire [31:0] BEQ_address;
    wire [31:0] alu_out;
    wire [31:0] sgn_ext_out;
    wire [31:0] sgn_ext_out_00;
    wire [31:0] EX_MEM_ALU_Out;
    wire [31:0] RF_WR_Data;
    wire [31:0] MEM_rf_data;
    wire [63:0] IF_ID_out; 
    wire [37:0] MEM_WB_out; 
    wire [73:0] EX_MEM_out;
    wire [121:0] ID_EX_out;
    
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
        .b(32'd4),
        .cin(1'b0),
        .cout(),
        .sum(PCplus4)
    );

    mux2to1 #(
        .size(32)
    ) PC_Input_Src_MUX (
        .i0(PCplus4), 
        .i1(jump_address),
        .sel(PC_src),
        .y(IF_PC_In)
    );

    mux4to1 #(
        .size(32)
    ) JUMP_ADDRESS_MUX (
        .i0(BEQ_address), 
        .i1({IF_ID_out[63:60], jump_immediate_00}),
        .i2(ID_ALU_Src1_L1),
        .i3(sgn_ext_out_00),
        .sel(jump),
        .y(jump_address)
    );

    register #(
        .size(64)
    ) IF_ID_reg (
        .clk(clk),
        .rst(rst),
        .clr(IF_flush),
        .ld(IF_ID_en),
        .d_in({PCplus4, inst}),
        .d_out(IF_ID_out)
    );
        
    //////////////////////////////////////////////////////// ID
    assign func = IF_ID_out[5:0];
    assign Inst4SgnExt = IF_ID_out[15:0];
    assign jump_immediate = IF_ID_out[25:0];
    assign shamnt = IF_ID_out[10:6];
    assign ID_rf_rd = IF_ID_out[15:11];
    assign ID_rf_src2 = IF_ID_out[20:16];
    assign ID_rf_src1 = IF_ID_out[25:21];
    assign opcode = IF_ID_out[31:26];
    assign ID_PCplus4 = IF_ID_out[63:32];
    assign IF_ID_rs = ID_rf_src1;
    assign IF_ID_rt = ID_rf_src2;
    assign ID_EX_rw = EX_WrReg4RF;
    assign shft = control_signals_nop[10];
    assign inst_adr = IF_PC_Out;
    assign ALU_src_OP2 = control_signals_nop[5];
    assign are_equal = (ID_ALU_Src1_L1 == ID_ALU_Src2_L1) ? 1'b1 : 1'b0;

    reg_file RF (
        .clk(clk),
        .rst(rst),
        .reg_write(MEM_WB_rf_write_en),  
        .rd_reg1(ID_rf_src1), 
        .rd_reg2(ID_rf_src2), 
        .wr_reg(RF_WR_Src),
        .wr_data(RF_WR_Data),
        .rd_data1(RF_src1_data), 
        .rd_data2(RF_src2_data)
    );
    
    mux2to1 #(
        .size(32)
    ) RF_WR_DATA_MUX (
        .i0(MEM_WB_rf_data), 
        .i1(ID_PCplus4),
        .sel(jal_en[1]|jal_en[0]),
        .y(RF_WR_Data)
    );

    mux4to1 #(
        .size(5)
    ) RF_WR_SRC_MUX (
        .i0(MEM_WB_rf_rw), 
        .i1(5'b11111),
        .i2(ID_rf_rd),
        .i3(),
        .sel(jal_en),
        .y(RF_WR_Src)
    );

    sign_ext SGN_EXT (
        .sgn(immSgn),
        .d_in(Inst4SgnExt),
        .d_out(sgn_ext_out)
    );
    
    assign sgn_ext_out_00 = {sgn_ext_out[29:0], 2'b00};

    assign jump_immediate_00 = {jump_immediate, 2'b00};


    adder #(
        .size(32)
    ) BEQ_ADDRESS_ADDER (
        .a(ID_PCplus4),
        .b(sgn_ext_out_00),
        .cin(1'b0),
        .cout(),
        .sum(BEQ_address)
    );

    mux2to1 #(
        .size(11)
    ) STALL_MUX (
        .i0(control_signals), 
        .i1(11'b0),
        .sel(NOP),
        .y(control_signals_nop)
    );

    mux4to1 #(
        .size(32)
    ) MUX_ALU_Src1_L1 (
        .i0(RF_src1_data), 
        .i1(alu_out),
        .i2(MEM_rf_data),
        .i3(MEM_WB_rf_data),
        .sel(forwardSrc1),
        .y(ID_ALU_Src1_L1)
    );

    mux2to1 #(
        .size(32)
    ) MUX_ALU_Src1 (
        .i0(ID_ALU_Src1_L1), 
        .i1({27'b0, shamnt}),
        .sel(shft),
        .y(ID_ALU_Src1)
    );

    mux4to1 #(
        .size(32)
    ) MUX_ALU_Src2_L1 (
        .i0(RF_src2_data), 
        .i1(alu_out),
        .i2(MEM_rf_data),
        .i3(MEM_WB_rf_data),
        .sel(forwardSrc2),
        .y(ID_ALU_Src2_L1)
    );

    mux2to1 #(
        .size(32)
    ) MUX_ALU_Src2 (
        .i0(ID_ALU_Src2_L1), 
        .i1(sgn_ext_out),
        .sel(ALU_src_OP2),
        .y(ID_ALU_Src2)
    );

    register #(
        .size(122)
    ) ID_EX_reg (
        .clk(clk),
        .rst(rst),
        .clr(ID_flush),
        .ld(1'b1),
        .d_in({ID_rf_src1, ID_rf_src2, ID_rf_rd, ID_ALU_Src2_L1, control_signals_nop, ID_ALU_Src2, ID_ALU_Src1}),
        .d_out(ID_EX_out)
    );

    //////////////////////////////////////////////////////// EX  
    assign ALU_OP1 = ID_EX_out[31:0];
    assign ALU_OP2 = ID_EX_out[63:32];
    assign ALU_OPERATION = ID_EX_out[68:65];
    assign ID_EX_memread = ID_EX_out[70];
    assign ID_EX_rs = ID_EX_out[121:117];
    assign ID_EX_rt = ID_EX_out[116:112];
    assign ID_EX_rd = ID_EX_out[111:107];
    assign ID_EX_reg_write = ID_EX_out[72];
    assign ID_EX_rf_src2_data = ID_EX_out[106:75];
    assign ID_EX_rd_src = ID_EX_out[64];
    assign ID_EX_memory_signals = ID_EX_out[73:70];
    
    alu #(
        .size(32)
    ) ALU (
        .a(ALU_OP1), 
        .b(ALU_OP2),
        .ctrl(ALU_OPERATION),
        .y(alu_out),
        .zero(zero)
    );
    
    mux2to1 #(
        .size(5)
    ) MUX6 (
        .i0(ID_EX_rt), 
        .i1(ID_EX_rd),
        .sel(ID_EX_rd_src),
        .y(EX_WrReg4RF)
    );       
    
    register #(
        .size(74)
    ) EX_MEM_reg (
        .clk(clk),
        .rst(rst),
        .clr(1'b0),
        .ld(1'b1),
        .d_in({ID_EX_memory_signals, zero, alu_out, ID_EX_rf_src2_data, EX_WrReg4RF}),
        .d_out(EX_MEM_out)
    );

    //////////////////////////////////////////////////////// MEM  
    assign EX_MEM_ALU_Out = EX_MEM_out[68:37];
    assign EX_MEM_mem_to_reg = EX_MEM_out[73];
    assign EX_MEM_reg_write = EX_MEM_out[72];
    assign EX_MEM_rd = EX_MEM_out[4:0];
    assign mem_read = EX_MEM_out[70];
    assign mem_write = EX_MEM_out[71];
    assign data_adr = EX_MEM_ALU_Out;
    assign data_out = EX_MEM_out[36:5];

    mux2to1 #(
        .size(32)
    ) MUX7 (
        .i0(data_in), 
        .i1(EX_MEM_ALU_Out),
        .sel(EX_MEM_mem_to_reg),
        .y(MEM_rf_data)
    );

    register #(
        .size(38)
    ) MEM_WB_reg (
        .clk(clk),
        .rst(rst),
        .clr(1'b0),
        .ld(1'b1),
        .d_in({EX_MEM_reg_write, MEM_rf_data, EX_MEM_rd}),
        .d_out(MEM_WB_out)
    );

    //////////////////////////////////////////////////////// WB
    assign MEM_WB_rf_rw = MEM_WB_out[4:0];
    assign MEM_WB_rf_data = MEM_WB_out[36:5];
    assign MEM_WB_rf_write_en = MEM_WB_out[37];
    assign MEM_WB_reg_write = MEM_WB_rf_write_en;
    assign MEM_WB_rd = MEM_WB_rf_rw; 
    
endmodule
