module controller ( 

    input are_equal,
    input zero,
    input ID_EX_memread,
    input ID_EX_reg_write,
    input EX_MEM_reg_write,
    input MEM_WB_reg_write,
    input [4:0] ID_EX_rs, 
    input [4:0] ID_EX_rt, 
    input [4:0] ID_EX_rw, 
    input [4:0] IF_ID_rs, 
    input [4:0] IF_ID_rt, 
    input [4:0] EX_MEM_rd, 
    input [4:0] MEM_WB_rd,
    input [5:0] opcode,
    input [5:0] func,

    output PC_stall,
    output NOP,
    output IF_ID_en,
    output ID_flush,
    output IF_flush, 
    output PC_src,
    output immSgn,
    output [1:0] jal_en,
    output [1:0] jump,
    output [1:0] forwardSrc1,
    output [1:0] forwardSrc2,
    output [10:0] control_signals
    
);

    wire alu_src_b;
    wire mem_read;
    wire mem_write;
    wire reg_write;
    wire reg_dst;
    wire mem_to_reg;
    wire ID_flush_taken;
    wire h1_pce;
    wire h1_ie;
    wire beq_taken;
    wire bne_taken;
    wire [3:0] alu_op;       
    wire [3:0] operation;
    
    alu_controller ALU_CTRL (
            .alu_op(alu_op),
            .func(func),
            .operation(operation)
    );
    
    
    hazard_unit MEMORY_HU (
        .ID_EX_memread(ID_EX_memread),
        .ID_EX_rt(ID_EX_rt), 
        .IF_ID_rs(IF_ID_rs), 
        .IF_ID_rt(IF_ID_rt),
        .pc_en(h1_pce), 
        .IF_ID_en(h1_ie), 
        .c_or_nop(NOP)
    );
    
    forwarding_unit ID_FU (
        .ID_EX_reg_write(ID_EX_reg_write), 
        .EX_MEM_reg_write(EX_MEM_reg_write), 
        .MEM_WB_reg_write(MEM_WB_reg_write),
        .IF_ID_rs(IF_ID_rs), 
        .IF_ID_rt(IF_ID_rt), 
        .ID_EX_rw(ID_EX_rw), 
        .EX_MEM_rd(EX_MEM_rd), 
        .MEM_WB_rd(MEM_WB_rd),
        .forwardSrc1(forwardSrc1),
        .forwardSrc2(forwardSrc2)
    );

    assign {IF_flush, ID_flush_taken, immSgn, mem_to_reg, reg_write, mem_write, mem_read, alu_src_b, reg_dst, alu_op, PC_src, jump, jal_en, shft} =
        // jump register (jr) instruction
        (opcode == 6'b000000 && func == 6'b001000) ? 19'b1_1_0_0_0_0_0_0_0_0000_1_10_00_0 :  
        // jump and Link register (jalr) instruction 
        (opcode == 6'b000000 && func == 6'b001001) ? 19'b1_1_0_0_0_0_0_0_0_0000_1_10_10_0 : 
        // shift left logical (sll) instruction 
        (opcode == 6'b000000 && func == 6'b000000) ? 19'b0_0_0_1_1_0_0_0_1_0010_0_00_00_1 :
        // shift right arithmetic (sra) instruction 
        (opcode == 6'b000000 && func == 6'b000011) ? 19'b0_0_0_1_1_0_0_0_1_0010_0_00_00_1 :
        // shift right logical (srl) instruction
        (opcode == 6'b000000 && func == 6'b000010) ? 19'b0_0_0_1_1_0_0_0_1_0010_0_00_00_1 : 
        // jump and Link (jal) instruction
        (opcode == 6'b000011) ? 19'b1_1_0_0_0_0_0_0_0_0000_1_11_01_0 :
        // RType (and, or, xor, nor, add, addu, sub, subu, slt, sltu) instructions
        (opcode == 6'b000000) ? 19'b0_0_0_1_1_0_0_0_1_0010_0_00_00_0 : 
        // load Word (lw) instruction
        (opcode == 6'b100011) ? 19'b0_0_0_0_1_0_1_1_0_0000_0_00_00_0 : 
        // store Word (sw) instruction 
        (opcode == 6'b101011) ? 19'b0_0_0_1_0_1_0_1_0_0000_0_00_00_0 : 
        // branch on equal (beq) instruction
        (opcode == 6'b000100) ? {beq_taken, beq_taken, 11'b1_0_0_0_0_0_0_0000, beq_taken, 2'b00, 2'b00, 1'b0} : 
        // branch on not equal (bne) instruction
        (opcode == 6'b000101) ? {bne_taken, bne_taken, 11'b1_0_0_0_0_0_0_0000, bne_taken, 2'b00, 2'b00, 1'b0} : 
        // add immediate (addi) instruction
        (opcode == 6'b001000) ? 19'b0_0_1_1_1_0_0_1_0_0100_0_00_00_0 : 
        // add immediate Unsigned (addiu) instruction
        (opcode == 6'b001001) ? 19'b0_0_0_1_1_0_0_1_0_0101_0_00_00_0 : 
        // set on less than immediate (slti) instruction 
        (opcode == 6'b001010) ? 19'b0_0_1_1_1_0_0_1_0_0011_0_00_00_0 : 
        // set on less than immediate Unsigned (sltiu) instruction 
        (opcode == 6'b001011) ? 19'b0_0_0_1_1_0_0_1_0_0110_0_00_00_0 : 
        // jump (j) instruction 
        (opcode == 6'b000010) ? 19'b1_1_0_0_0_0_0_0_0_0000_1_01_00_0 : 
        // and immediate (andi) instruction
        (opcode == 6'b001100) ? 19'b0_0_1_1_1_0_0_1_0_0111_0_00_00_0 : 
        // or immediate (ori) instruction
        (opcode == 6'b001101) ? 19'b0_0_1_1_1_0_0_1_0_1000_0_00_00_0 : 
        // xor immediate (xori) instruction
        (opcode == 6'b001110) ? 19'b0_0_1_1_1_0_0_1_0_1001_0_00_00_0 : 
        // load upper immediate (lui) instruction
        (opcode == 6'b001111) ? 19'b0_0_1_1_1_0_0_1_0_1010_0_00_00_0 : 
        // default
                                19'b0_0_0_0_0_0_0_0_0_1010_0_00_00_0;

    assign beq_taken = are_equal;
    assign bne_taken = ~are_equal;
    assign control_signals = {shft, mem_to_reg, reg_write, mem_write, mem_read, alu_src_b, operation, reg_dst}; 
    assign PC_stall = h1_pce;
    assign IF_ID_en = h1_ie;
    assign ID_flush = ID_flush_taken;

endmodule
