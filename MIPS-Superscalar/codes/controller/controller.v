module controller ( 

    input are_equal,
    input isBub,
    input zero_p1,
    input zero_p2,
    input ID_EX_memread_p2,
    input IF_ID_memread_p2,
    input IF_ID_reg_write_p1,
    input IF_ID_reg_write_p2,
    input ID_EX_reg_write_p1,
    input ID_EX_reg_write_p2,
    input EX_MEM_reg_write_p1,
    input EX_MEM_reg_write_p2,
    input MEM_WB_reg_write_p1,
    input MEM_WB_reg_write_p2,
    input [5:0] opcode_p1,
    input [5:0] opcode_p2,
    input [5:0] func_p1,
    input [5:0] func_p2,
    input [4:0] ID_EX_rs_p1, 
    input [4:0] ID_EX_rt_p1, 
    input [4:0] ID_EX_rs_p2, 
    input [4:0] ID_EX_rt_p2, 
    input [4:0] ID_EX_rw_p1, 
    input [4:0] IF_ID_rs_p1, 
    input [4:0] IF_ID_rw_p1,
    input [4:0] IF_ID_rw_p2,
    input [4:0] IF_ID_rt_p1, 
    input [4:0] ID_EX_rw_p2, 
    input [4:0] IF_ID_rs_p2, 
    input [4:0] IF_ID_rt_p2, 
    input [4:0] EX_MEM_rd_p1, 
    input [4:0] EX_MEM_rd_p2, 
    input [4:0] MEM_WB_rd_p1,
    input [4:0] MEM_WB_rd_p2,
    
    output PC_stall,
    output NOP_p1,
    output NOP_p2,
    output IF_ID_en_p1,
    output IF_ID_en_p2,
    output IF_flush_p1_inst,
    output IF_flush_p1_pc,
    output IF_flush_p2,
    output ID_flush_p1,
    output ID_flush_p2, 
    output PC_src,
    output immSgn_p1,
    output immSgn_p2,
    output swp,
    output bp11,
    output bp12,
    output bp13,
    output bp21,
    output bp22,
    output bp23,
    output [1:0] jal_en,
    output [1:0] jump,
    output [1:0] forwardSrc1_p1,
    output [1:0] forwardSrc2_p1,
    output [1:0] forwardSrc1_p2,
    output [1:0] forwardSrc2_p2,
    output [10:0] control_signals_p1,
    output [10:0] control_signals_p2
    
);

    wire shft_p1;
    wire shft_p2;
    wire alu_src_b_p1;
    wire alu_src_b_p2;
    wire mem_read_p1;
    wire mem_read_p2;
    wire mem_write_p1;
    wire mem_write_p2;
    wire reg_write_p1;
    wire reg_write_p2;
    wire reg_dst_p1;
    wire reg_dst_p2;
    wire mem_to_reg_p1;
    wire mem_to_reg_p2;
    wire ID_flush_taken1;
    wire ID_flush_taken2;
    wire h1_pce_p2;
    wire h1_ie_p12;
    wire beq_taken;
    wire bne_taken;
    wire swp_p1;
    wire swp_p2;
    wire swp_p1_pos;
    wire swp_p2_pos;
    wire IF_flush1;
    wire IF_flush2;
    wire PC_src_p1;
    wire PC_src_p2;
    wire rs_read_p1;
    wire rt_read_p1;
    wire rs_read_p2;
    wire rt_read_p2;
    wire [1:0] jal_en_p1;
    wire [1:0] jal_en_p2;
    wire [1:0] jump_p1;
    wire [1:0] jump_p2;
    wire [3:0] alu_op_p1;     
    wire [3:0] alu_op_p2;       
    wire [3:0] operation_p1;
    wire [3:0] operation_p2;
    
    // pipe 1 alu
    alu_controller ALU_CTRL_p1 (
            .alu_op(alu_op_p1),
            .func(func_p1),
            .operation(operation_p1)
    );

    // pipe 2 alu
    alu_controller ALU_CTRL_p2 (
            .alu_op(alu_op_p2),
            .func(func_p2),
            .operation(operation_p2)
    );
    
    // pipe 2 hazard
    hazard_unit MEMORY_HU_p1 (
        .isBub(isBub),
        .ID_EX_memread_p2(ID_EX_memread_p2),
        .IF_ID_memread_p2(IF_ID_memread_p2),
        .IF_ID_reg_write_p1(IF_ID_reg_write_p1),
        .IF_ID_reg_write_p2(IF_ID_reg_write_p2),
        .ID_EX_rt_p2(ID_EX_rt_p2),
        .IF_ID_rs_p2(IF_ID_rs_p2),
        .IF_ID_rt_p2(IF_ID_rt_p2),
        .IF_ID_rs_p1(IF_ID_rs_p1),
        .IF_ID_rt_p1(IF_ID_rt_p1),
        .IF_ID_rw_p1(IF_ID_rw_p1),
        .IF_ID_rw_p2(IF_ID_rw_p2),
        .rs_read_p2(rs_read_p2),
        .rt_read_p2(rt_read_p2),
        .swp_p1(swp_p1),
        .pc_en(h1_pce_p2), 
        .IF_ID_en(h1_ie_p12), 
        .c_or_nop_p1(NOP_p1),
        .c_or_nop_p2(NOP_p2)
    );
    
    // pipe 1 bypass network
    forwarding_unit ID_FU_p1 (
        .ID_EX_reg_write_p1(ID_EX_reg_write_p1), 
        .EX_MEM_reg_write_p1(EX_MEM_reg_write_p1), 
        .MEM_WB_reg_write_p1(MEM_WB_reg_write_p1),
        .ID_EX_reg_write_p2(ID_EX_reg_write_p2), 
        .EX_MEM_reg_write_p2(EX_MEM_reg_write_p2), 
        .MEM_WB_reg_write_p2(MEM_WB_reg_write_p2),
        .IF_ID_rs_p1(IF_ID_rs_p1), 
        .IF_ID_rt_p1(IF_ID_rt_p1), 
        .ID_EX_rw_p1(ID_EX_rw_p1), 
        .EX_MEM_rd_p1(EX_MEM_rd_p1), 
        .MEM_WB_rd_p1(MEM_WB_rd_p1),
        .IF_ID_rs_p2(IF_ID_rs_p2), 
        .IF_ID_rt_p2(IF_ID_rt_p2), 
        .ID_EX_rw_p2(ID_EX_rw_p2), 
        .EX_MEM_rd_p2(EX_MEM_rd_p2), 
        .MEM_WB_rd_p2(MEM_WB_rd_p2),
        .forwardSrc1_p1(forwardSrc1_p1),
        .forwardSrc2_p1(forwardSrc2_p1),
        .forwardSrc1_p2(forwardSrc1_p2),
        .forwardSrc2_p2(forwardSrc2_p2),
        .bp11(bp11),
        .bp12(bp12),
        .bp13(bp13),
        .bp21(bp21),
        .bp22(bp22),
        .bp23(bp23)
    );

    assign {IF_flush1, ID_flush_taken1, immSgn_p1, mem_to_reg_p1, reg_write_p1, mem_write_p1, mem_read_p1, alu_src_b_p1, reg_dst_p1, alu_op_p1, PC_src_p1, jump_p1, jal_en_p1, shft_p1, swp_p1, swp_p1_pos, rs_read_p1, rt_read_p1} =
        // jump register (jr) instruction
        (opcode_p1 == 6'b000000 && func_p1 == 6'b001000) ? 23'b1_1_0_0_0_0_0_0_0_0000_1_10_00_0_0_0_1_0 :  
        // jump and Link register (jalr) instruction 
        (opcode_p1 == 6'b000000 && func_p1 == 6'b001001) ? 23'b1_1_0_0_0_0_0_0_0_0000_1_10_10_0_0_0_1_0 : 
        // shift left logical (sll) instruction 
        (opcode_p1 == 6'b000000 && func_p1 == 6'b000000) ? 23'b0_0_0_1_1_0_0_0_1_0010_0_00_00_1_0_1_0_1 :
        // shift right arithmetic (sra) instruction 
        (opcode_p1 == 6'b000000 && func_p1 == 6'b000011) ? 23'b0_0_0_1_1_0_0_0_1_0010_0_00_00_1_0_1_0_1 :
        // shift right logical (srl) instruction
        (opcode_p1 == 6'b000000 && func_p1 == 6'b000010) ? 23'b0_0_0_1_1_0_0_0_1_0010_0_00_00_1_0_1_0_1 : 
        // jump and Link (jal) instruction
        (opcode_p1 == 6'b000011) ? 23'b1_1_0_0_0_0_0_0_0_0000_1_11_01_0_0_0_0_0 :
        // RType (and, or, xor, nor, add, addu, sub, subu, slt, sltu) instructions
        (opcode_p1 == 6'b000000) ? 23'b0_0_0_1_1_0_0_0_1_0010_0_00_00_0_0_1_1_1 : 
        // load Word (lw) instruction
        (opcode_p1 == 6'b100011) ? 23'b0_0_0_0_1_0_1_1_0_0000_0_00_00_0_1_1_1_0 : 
        // store Word (sw) instruction 
        (opcode_p1 == 6'b101011) ? 23'b0_0_0_1_0_1_0_1_0_0000_0_00_00_0_1_1_1_1 : 
        // branch on equal (beq) instruction
        (opcode_p1 == 6'b000100) ? {beq_taken, beq_taken, 11'b1_0_0_0_0_0_0_0000, beq_taken, 2'b00, 2'b00, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1} : 
        // branch on not equal (bne) instruction, 1'b0
        (opcode_p1 == 6'b000101) ? {bne_taken, bne_taken, 11'b1_0_0_0_0_0_0_0000, bne_taken, 2'b00, 2'b00, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1} : 
        // add immediate (addi) instruction
        (opcode_p1 == 6'b001000) ? 23'b0_0_1_1_1_0_0_1_0_0100_0_00_00_0_0_1_1_0 : 
        // add immediate Unsigned (addiu) instruction
        (opcode_p1 == 6'b001001) ? 23'b0_0_0_1_1_0_0_1_0_0101_0_00_00_0_0_1_1_0 : 
        // set on less than immediate (slti) instruction 
        (opcode_p1 == 6'b001010) ? 23'b0_0_1_1_1_0_0_1_0_0011_0_00_00_0_0_1_1_0 : 
        // set on less than immediate Unsigned (sltiu) instruction 
        (opcode_p1 == 6'b001011) ? 23'b0_0_0_1_1_0_0_1_0_0110_0_00_00_0_0_1_1_0 : 
        // jump (j) instruction 
        (opcode_p1 == 6'b000010) ? 23'b1_1_0_0_0_0_0_0_0_0000_1_01_00_0_0_0_0_0 : 
        // and immediate (andi) instruction
        (opcode_p1 == 6'b001100) ? 23'b0_0_1_1_1_0_0_1_0_0111_0_00_00_0_0_1_1_0 : 
        // or immediate (ori) instruction
        (opcode_p1 == 6'b001101) ? 23'b0_0_1_1_1_0_0_1_0_1000_0_00_00_0_0_1_1_1 : 
        // xor immediate (xori) instruction
        (opcode_p1 == 6'b001110) ? 23'b0_0_1_1_1_0_0_1_0_1001_0_00_00_0_0_1_1_1 : 
        // load upper immediate (lui) instruction
        (opcode_p1 == 6'b001111) ? 23'b0_0_1_1_1_0_0_1_0_1010_0_00_00_0_1_1_0_0 : 
        // default
                                23'b0_0_0_0_0_0_0_0_0_1010_0_00_00_0_0_1_0_0;


                                

    assign {IF_flush2, ID_flush_taken2, immSgn_p2, mem_to_reg_p2, reg_write_p2, mem_write_p2, mem_read_p2, alu_src_b_p2, reg_dst_p2, alu_op_p2, PC_src_p2, jump_p2, jal_en_p2, shft_p2, swp_p2, swp_p2_pos, rs_read_p2, rt_read_p2} =
        // jump register (jr) instruction
        (opcode_p2 == 6'b000000 && func_p2 == 6'b001000) ? 23'b1_1_0_0_0_0_0_0_0_0000_1_10_00_0_1_1_1_0 :
        // jump and Link register (jalr) instruction 
        (opcode_p2 == 6'b000000 && func_p2 == 6'b001001) ? 23'b1_1_0_0_0_0_0_0_0_0000_1_10_10_0_1_1_1_0 :
        // shift left logical (sll) instruction 
        (opcode_p2 == 6'b000000 && func_p2 == 6'b000000) ? 23'b0_0_0_1_1_0_0_0_1_0010_0_00_00_1_0_1_0_1 :
        // shift right arithmetic (sra) instruction 
        (opcode_p2 == 6'b000000 && func_p2 == 6'b000011) ? 23'b0_0_0_1_1_0_0_0_1_0010_0_00_00_1_0_1_0_1 :
        // shift right logical (srl) instruction
        (opcode_p2 == 6'b000000 && func_p2 == 6'b000010) ? 23'b0_0_0_1_1_0_0_0_1_0010_0_00_00_1_0_1_0_1 :
        // jump and Link (jal) instruction
        (opcode_p2 == 6'b000011) ? 23'b1_1_0_0_0_0_0_0_0_0000_1_11_01_0_1_1_0_0 :
        // RType (and, or, xor, nor, add, addu, sub, subu, slt, sltu) instructions
        (opcode_p2 == 6'b000000) ? 23'b0_0_0_1_1_0_0_0_1_0010_0_00_00_0_0_1_1_1 :
        // load Word (lw) instruction
        (opcode_p2 == 6'b100011) ? 23'b0_0_0_0_1_0_1_1_0_0000_0_00_00_0_0_0_1_0 :
        // store Word (sw) instruction 
        (opcode_p2 == 6'b101011) ? 23'b0_0_0_1_0_1_0_1_0_0000_0_00_00_0_0_0_1_1 :
        // branch on equal (beq) instruction
        (opcode_p2 == 6'b000100) ? {beq_taken, beq_taken, 11'b1_0_0_0_0_0_0_0000, beq_taken, 2'b00, 2'b00, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1} : 
        // branch on not equal (bne) instruction
        (opcode_p2 == 6'b000101) ? {bne_taken, bne_taken, 11'b1_0_0_0_0_0_0_0000, bne_taken, 2'b00, 2'b00, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1} : 
        // add immediate (addi) instruction
        (opcode_p2 == 6'b001000) ? 23'b0_0_1_1_1_0_0_1_0_0100_0_00_00_0_0_1_1_0 : 
        // add immediate Unsigned (addiu) instruction
        (opcode_p2 == 6'b001001) ? 23'b0_0_0_1_1_0_0_1_0_0101_0_00_00_0_0_1_1_0 : 
        // set on less than immediate (slti) instruction 
        (opcode_p2 == 6'b001010) ? 23'b0_0_1_1_1_0_0_1_0_0011_0_00_00_0_0_1_1_0 : 
        // set on less than immediate Unsigned (sltiu) instruction 
        (opcode_p2 == 6'b001011) ? 23'b0_0_0_1_1_0_0_1_0_0110_0_00_00_0_0_1_1_0 : 
        // jump (j) instruction 
        (opcode_p2 == 6'b000010) ? 23'b1_1_0_0_0_0_0_0_0_0000_1_01_00_0_1_1_0_0 : 
        // and immediate (andi) instruction
        (opcode_p2 == 6'b001100) ? 23'b0_0_1_1_1_0_0_1_0_0111_0_00_00_0_0_1_1_0 : 
        // or immediate (ori) instruction
        (opcode_p2 == 6'b001101) ? 23'b0_0_1_1_1_0_0_1_0_1000_0_00_00_0_0_1_1_1 : 
        // xor immediate (xori) instruction
        (opcode_p2 == 6'b001110) ? 23'b0_0_1_1_1_0_0_1_0_1001_0_00_00_0_0_1_1_1 : 
        // load upper immediate (lui) instruction
        (opcode_p2 == 6'b001111) ? 23'b0_0_1_1_1_0_0_1_0_1010_0_00_00_0_0_0_0_0 : 
        // default
                                23'b0_0_0_0_0_0_0_0_0_1010_0_00_00_0_0_1_0_0;

    assign swp = (swp_p1) | (swp_p2 & swp_p1_pos & isBub);
    assign beq_taken = are_equal;
    assign bne_taken = ~are_equal;
    assign PC_src = PC_src_p1 | PC_src_p2;
    assign jal_en = jal_en_p1 | jal_en_p2;
    assign jump = jump_p1 | jump_p2;

    assign PC_stall = (~h1_pce_p2) | (swp_p1 & ~swp_p2_pos & ~isBub) | (swp_p2 & swp_p1_pos & ~isBub) ? 1'b0 : 1'b1;

    assign IF_ID_en_p1 = (IF_flush1 | IF_flush2) & (~swp_p1_pos | (swp_p2 & swp_p1_pos & isBub)) | (swp_p2 & swp_p1_pos & ~isBub) | (swp_p1 & ~swp_p2_pos) | (~h1_ie_p12) ? 1'b0 : 1'b1;  
    assign IF_ID_en_p2 = (~h1_ie_p12) | (swp_p2 & swp_p1_pos & ~isBub) | (swp_p1 & ~swp_p2_pos)  | (~NOP_p1 & NOP_p2 & ~swp_p1) ? 1'b0 : 1'b1;
    assign ID_flush_p1 = ((IF_flush1 | IF_flush2) & (~swp_p1_pos | (swp_p2 & swp_p1_pos & isBub))) | (swp_p1 & ~swp_p2_pos) | (swp_p1 & swp_p2);
    assign ID_flush_p2 = (IF_flush1 | IF_flush2) & (~swp_p1_pos | (swp_p2 & swp_p1_pos & isBub)) | (swp_p2 & swp_p1_pos & ~swp_p1 & ~isBub) | (~NOP_p1 & NOP_p2 & ~swp_p1);
    assign IF_flush_p1_inst = (NOP_p1 & ~NOP_p2 & swp_p1) | (~NOP_p1 & NOP_p2 & ~swp_p1) | (IF_flush1 | IF_flush2) & (~swp_p1_pos | (swp_p2 & swp_p1_pos & isBub)) | (swp_p2 & swp_p1_pos & ~isBub) | (swp_p1 & ~swp_p2_pos);
    assign IF_flush_p1_pc = (IF_flush1 | IF_flush2) & (~swp_p1_pos);
    assign IF_flush_p2 = (NOP_p1 & ~NOP_p2 & ~swp_p1) | ((IF_flush1 | IF_flush2) & (~swp_p1_pos | (swp_p2 & swp_p1_pos & isBub)));
    assign control_signals_p1 = {shft_p1, mem_to_reg_p1, reg_write_p1, mem_write_p1, mem_read_p1, alu_src_b_p1, operation_p1, reg_dst_p1}; 
    assign control_signals_p2 = {shft_p2, mem_to_reg_p2, reg_write_p2, mem_write_p2, mem_read_p2, alu_src_b_p2, operation_p2, reg_dst_p2};

endmodule