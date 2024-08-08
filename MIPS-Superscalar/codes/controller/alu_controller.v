module alu_controller (

    input [3:0] alu_op,
    input [5:0] func,

    output [3:0] operation

);
    
    wire [3:0] op;

    assign operation = (alu_op == 4'b0000) ? 4'b0100  : // lw or sw
                       (alu_op == 4'b0001) ? 4'b0110 :  // beq
                       (alu_op == 4'b0010) ? op :       // arithmetic
                       (alu_op == 4'b0011) ? 4'b1000 :  // slti
                       (alu_op == 4'b0110) ? 4'b1001 :  // sltiu
                       (alu_op == 4'b0100) ? 4'b0100 :  // addi
                       (alu_op == 4'b0101) ? 4'b0101 :  // addiu
                       (alu_op == 4'b0111) ? 4'b0000 :  // andi
                       (alu_op == 4'b1000) ? 4'b0001 :  // ori
                       (alu_op == 4'b1001) ? 4'b0010 :  // xori
                       (alu_op == 4'b1010) ? 4'b1101 :  // lui
                       4'b0000;                         // default

    assign op = (func == 6'b100100) ? 4'b0000 : // and
                (func == 6'b100101) ? 4'b0001 : // or
                (func == 6'b100110) ? 4'b0010 : // xor
                (func == 6'b100111) ? 4'b0011 : // nor
                (func == 6'b100000) ? 4'b0100 : // add  (trap on overflow)
                (func == 6'b100001) ? 4'b0101 : // addu (no trap on overflow)
                (func == 6'b100010) ? 4'b0110 : // sub  (trap on overflow)
                (func == 6'b100011) ? 4'b0111 : // subu (no trap on overflow)
                (func == 6'b101010) ? 4'b1000 : // slt
                (func == 6'b101011) ? 4'b1001 : // sltu
                (func == 6'b000100) ? 4'b1010 : // sllv
                (func == 6'b000110) ? 4'b1011 : // srlv
                (func == 6'b000111) ? 4'b1100 : // srav
                (func == 6'b000000) ? 4'b1010 : // sll
                (func == 6'b000011) ? 4'b1100 : // sra
                (func == 6'b000010) ? 4'b1011 : // srl
                4'b0000;                        // default

endmodule
