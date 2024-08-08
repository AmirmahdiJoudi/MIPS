module mips_pipeline (

    input clk,
    input rst,
    input [31:0] inst,
    input  [31:0] data_in,

    output mem_read,
    output mem_write,       
    output [31:0] inst_adr,
    output [31:0] data_adr,
    output [31:0] data_out

);

    wire PC_stall;
    wire NOP;
    wire IF_ID_en;
    wire IF_flush;
    wire ID_flush;
    wire PC_src;
    wire ID_EX_memread;
    wire ID_EX_reg_write;
    wire EX_MEM_reg_write;
    wire MEM_WB_reg_write;
    wire are_equal;
    wire zero;
    wire immSgn;
    wire [1:0] jump; 
    wire [1:0] forwardSrc1;
    wire [1:0] forwardSrc2;
    wire [1:0] jal_en;
    wire [2:0] alu_ctrl;
    wire [4:0] ID_EX_rw;
    wire [4:0] IF_ID_rs;
    wire [4:0] IF_ID_rt;
    wire [4:0] ID_EX_rs;
    wire [4:0] ID_EX_rt;
    wire [4:0] EX_MEM_rd;
    wire [4:0] MEM_WB_rd;
    wire [5:0] opcode;
    wire [5:0] func;
    wire [10:0] control_signals; 
    
    datapath DP (
        .clk(clk),
        .rst(rst),
        .control_signals(control_signals),
        .PC_stall(PC_stall),
        .NOP(NOP),
        .IF_ID_en(IF_ID_en),
        .IF_flush(IF_flush),
        .ID_flush(ID_flush),
        .PC_src(PC_src),
        .immSgn(immSgn),
        .jal_en(jal_en),
        .jump(jump),
        .ID_EX_memread(ID_EX_memread),
        .ID_EX_rw(ID_EX_rw),
        .IF_ID_rs(IF_ID_rs),
        .IF_ID_rt(IF_ID_rt),
        .ID_EX_rs(ID_EX_rs),
        .ID_EX_rt(ID_EX_rt),
        .EX_MEM_rd(EX_MEM_rd),
        .ID_EX_reg_write(ID_EX_reg_write),
        .EX_MEM_reg_write(EX_MEM_reg_write),
        .MEM_WB_reg_write(MEM_WB_reg_write),
        .MEM_WB_rd(MEM_WB_rd),
        .forwardSrc1(forwardSrc1),
        .forwardSrc2(forwardSrc2),
        .mem_read(mem_read),
        .mem_write(mem_write),
        .are_equal(are_equal),
        .zero(zero),
        .inst_adr(inst_adr),
        .data_adr(data_adr),
        .data_out(data_out),
        .inst(inst),
        .data_in(data_in),
        .opcode(opcode),
        .func(func)
    );
            
    controller CU ( 
        .PC_stall(PC_stall),
        .NOP(NOP),
        .IF_ID_en(IF_ID_en),
        .IF_flush(IF_flush),
        .ID_flush(ID_flush),
        .PC_src(PC_src),
        .immSgn(immSgn),
        .jal_en(jal_en),
        .forwardSrc1(forwardSrc1),
        .forwardSrc2(forwardSrc2),
        .jump(jump),
        .control_signals(control_signals),
        .are_equal(are_equal),
        .zero(zero),
        .ID_EX_memread(ID_EX_memread),
        .ID_EX_reg_write(ID_EX_reg_write),
        .EX_MEM_reg_write(EX_MEM_reg_write),
        .MEM_WB_reg_write(MEM_WB_reg_write),
        .ID_EX_rs(ID_EX_rs),
        .ID_EX_rt(ID_EX_rt),
        .ID_EX_rw(ID_EX_rw),
        .IF_ID_rs(IF_ID_rs),
        .IF_ID_rt(IF_ID_rt),
        .EX_MEM_rd(EX_MEM_rd),
        .MEM_WB_rd(MEM_WB_rd),
        .opcode(opcode),
        .func(func)
    );
    
endmodule
