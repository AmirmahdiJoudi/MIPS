module mips_pipeline (

    input clk,
    input rst,
    input [63:0] inst,
    input  [31:0] data_in,

    output mem_read,
    output mem_write,       
    output [31:0] inst_adr,
    output [31:0] data_adr,
    output [31:0] data_out

);

    wire PC_stall;
    wire NOP_p1;
    wire NOP_p2;
    wire IF_ID_en_p1;
    wire IF_ID_en_p2;
    wire IF_flush_p1_inst;
    wire IF_flush_p1_pc;
    wire IF_flush_p2;
    wire ID_flush_p1;
    wire ID_flush_p2;
    wire PC_src;
    wire ID_EX_memread_p2;
    wire IF_ID_memread_p2;
    wire IF_ID_reg_write_p1;
    wire IF_ID_reg_write_p2;
    wire ID_EX_reg_write_p1;
    wire ID_EX_reg_write_p2;
    wire EX_MEM_reg_write_p1;
    wire EX_MEM_reg_write_p2;
    wire MEM_WB_reg_write_p1;
    wire MEM_WB_reg_write_p2;
    wire are_equal;
    wire isBub;
    wire zero_p1;
    wire zero_p2;
    wire immSgn_p1;
    wire immSgn_p2;
    wire swp;
    wire bp11;
    wire bp12;
    wire bp13;
    wire bp21;
    wire bp22;
    wire bp23;
    wire [1:0] jump; 
    wire [1:0] forwardSrc1_p1;
    wire [1:0] forwardSrc2_p1;
    wire [1:0] forwardSrc1_p2;
    wire [1:0] forwardSrc2_p2;
    wire [1:0] jal_en;
    wire [2:0] alu_ctrl;
    wire [4:0] ID_EX_rw_p1;
    wire [4:0] ID_EX_rw_p2;
    wire [4:0] IF_ID_rs_p1;
    wire [4:0] IF_ID_rt_p1;
    wire [4:0] IF_ID_rw_p1;
    wire [4:0] IF_ID_rw_p2;
    wire [4:0] IF_ID_rs_p2;
    wire [4:0] IF_ID_rt_p2;
    wire [4:0] ID_EX_rs_p1;
    wire [4:0] ID_EX_rt_p1;
    wire [4:0] ID_EX_rs_p2;
    wire [4:0] ID_EX_rt_p2;
    wire [4:0] EX_MEM_rd_p1;
    wire [4:0] EX_MEM_rd_p2;
    wire [4:0] MEM_WB_rd_p1;
    wire [4:0] MEM_WB_rd_p2;
    wire [5:0] opcode_p1;
    wire [5:0] opcode_p2;
    wire [5:0] func_p1;
    wire [5:0] func_p2;
    wire [10:0] control_signals_p1; 
    wire [10:0] control_signals_p2; 
    
    datapath DP (
        .clk(clk),
        .rst(rst),
        .PC_stall(PC_stall),
        .NOP_p1(NOP_p1),
        .NOP_p2(NOP_p2),
        .IF_ID_en_p1(IF_ID_en_p1),
        .IF_ID_en_p2(IF_ID_en_p2),
        .IF_flush_p1_inst(IF_flush_p1_inst),
        .IF_flush_p1_pc(IF_flush_p1_pc),
        .IF_flush_p2(IF_flush_p2),
        .ID_flush_p1(ID_flush_p1),
        .ID_flush_p2(ID_flush_p2),
        .PC_src(PC_src),
        .immSgn_p1(immSgn_p1),
        .immSgn_p2(immSgn_p2),
        .swp(swp),
        .bp11(bp11),
        .bp12(bp12),
        .bp13(bp13),
        .bp21(bp21),
        .bp22(bp22),
        .bp23(bp23),
        .jal_en(jal_en),
        .jump(jump),
        .forwardSrc1_p1(forwardSrc1_p1),
        .forwardSrc2_p1(forwardSrc2_p1),
        .forwardSrc1_p2(forwardSrc1_p2),
        .forwardSrc2_p2(forwardSrc2_p2),
        .control_signals_p1(control_signals_p1),
        .control_signals_p2(control_signals_p2),
        .inst(inst),
        .data_in_p2(data_in),

        .are_equal(are_equal),
        .isBub(isBub),
        .zero_p1(zero_p1),
        .zero_p2(zero_p2),
        .ID_EX_memread_p2(ID_EX_memread_p2),
        .IF_ID_memread_p2(IF_ID_memread_p2),
        .IF_ID_reg_write_p1(IF_ID_reg_write_p1),
        .IF_ID_reg_write_p2(IF_ID_reg_write_p2),
        .ID_EX_reg_write_p1(ID_EX_reg_write_p1),
        .ID_EX_reg_write_p2(ID_EX_reg_write_p2),
        .EX_MEM_reg_write_p1(EX_MEM_reg_write_p1),
        .EX_MEM_reg_write_p2(EX_MEM_reg_write_p2),
        .MEM_WB_reg_write_p1(MEM_WB_reg_write_p1),
        .MEM_WB_reg_write_p2(MEM_WB_reg_write_p2),
        .mem_read_p2(mem_read),
        .mem_write_p2(mem_write),
        .opcode_p1(opcode_p1),
        .opcode_p2(opcode_p2),
        .func_p1(func_p1),
        .func_p2(func_p2),
        .ID_EX_rs_p1(ID_EX_rs_p1),
        .ID_EX_rt_p1(ID_EX_rt_p1),
        .ID_EX_rs_p2(ID_EX_rs_p2),
        .ID_EX_rt_p2(ID_EX_rt_p2),
        .ID_EX_rw_p1(ID_EX_rw_p1),
        .IF_ID_rs_p1(IF_ID_rs_p1),
        .IF_ID_rt_p1(IF_ID_rt_p1),
        .IF_ID_rw_p1(IF_ID_rw_p1),
        .IF_ID_rw_p2(IF_ID_rw_p2),
        .ID_EX_rw_p2(ID_EX_rw_p2),
        .IF_ID_rs_p2(IF_ID_rs_p2),
        .IF_ID_rt_p2(IF_ID_rt_p2),
        .EX_MEM_rd_p1(EX_MEM_rd_p1),
        .EX_MEM_rd_p2(EX_MEM_rd_p2),  
        .MEM_WB_rd_p1(MEM_WB_rd_p1),      
        .MEM_WB_rd_p2(MEM_WB_rd_p2),
        .inst_adr(inst_adr),
        .data_adr(data_adr),
        .data_out(data_out)
    );
            
    controller CU ( 
        .are_equal(are_equal),
        .isBub(isBub),
        .zero_p1(zero_p1),
        .zero_p2(zero_p2),
        .ID_EX_memread_p2(ID_EX_memread_p2),
        .IF_ID_memread_p2(IF_ID_memread_p2),
        .IF_ID_reg_write_p1(IF_ID_reg_write_p1),
        .IF_ID_reg_write_p2(IF_ID_reg_write_p2),
        .ID_EX_reg_write_p1(ID_EX_reg_write_p1),
        .ID_EX_reg_write_p2(ID_EX_reg_write_p2),
        .EX_MEM_reg_write_p1(EX_MEM_reg_write_p1),
        .EX_MEM_reg_write_p2(EX_MEM_reg_write_p2),
        .MEM_WB_reg_write_p1(MEM_WB_reg_write_p1),
        .MEM_WB_reg_write_p2(MEM_WB_reg_write_p2),
        .opcode_p1(opcode_p1),
        .opcode_p2(opcode_p2),
        .func_p1(func_p1),
        .func_p2(func_p2),
        .ID_EX_rs_p1(ID_EX_rs_p1),
        .ID_EX_rt_p1(ID_EX_rt_p1),
        .ID_EX_rs_p2(ID_EX_rs_p2),
        .ID_EX_rt_p2(ID_EX_rt_p2),
        .ID_EX_rw_p1(ID_EX_rw_p1),
        .IF_ID_rs_p1(IF_ID_rs_p1),
        .IF_ID_rt_p1(IF_ID_rt_p1),
        .IF_ID_rw_p1(IF_ID_rw_p1),
        .IF_ID_rw_p2(IF_ID_rw_p2),
        .ID_EX_rw_p2(ID_EX_rw_p2),
        .IF_ID_rs_p2(IF_ID_rs_p2),
        .IF_ID_rt_p2(IF_ID_rt_p2),
        .EX_MEM_rd_p1(EX_MEM_rd_p1),
        .EX_MEM_rd_p2(EX_MEM_rd_p2), 
        .MEM_WB_rd_p1(MEM_WB_rd_p1),      
        .MEM_WB_rd_p2(MEM_WB_rd_p2),

        .PC_stall(PC_stall),
        .NOP_p1(NOP_p1),
        .NOP_p2(NOP_p2),
        .IF_ID_en_p1(IF_ID_en_p1),
        .IF_ID_en_p2(IF_ID_en_p2),
        .IF_flush_p1_inst(IF_flush_p1_inst),
        .IF_flush_p1_pc(IF_flush_p1_pc),
        .IF_flush_p2(IF_flush_p2),
        .ID_flush_p1(ID_flush_p1),
        .ID_flush_p2(ID_flush_p2),
        .PC_src(PC_src),
        .immSgn_p1(immSgn_p1),
        .immSgn_p2(immSgn_p2),
        .swp(swp),
        .bp11(bp11),
        .bp12(bp12),
        .bp13(bp13),
        .bp21(bp21),
        .bp22(bp22),
        .bp23(bp23),
        .jal_en(jal_en),
        .jump(jump),
        .forwardSrc1_p1(forwardSrc1_p1),
        .forwardSrc2_p1(forwardSrc2_p1),
        .forwardSrc1_p2(forwardSrc1_p2),
        .forwardSrc2_p2(forwardSrc2_p2),
        .control_signals_p1(control_signals_p1),
        .control_signals_p2(control_signals_p2)
    );
    
endmodule
