module alu #(

    parameter size=32

) (

    input [size-1:0] a, 
    input [size-1:0] b,
    input [3:0] ctrl,
    
    output [size-1:0] y,
    output zero

);

    wire [32:0] res;
    wire [32:0] opA;
    wire [32:0] opB;
    wire [63:0] opSRA;
    wire ov;

    assign res = opA + opB;
    assign ov = (opA[32] & opB[32] & (~res[32])) | ((~opA[32]) & (~opB[32]) & res[32]);

    assign y = (ctrl == 4'b0000) ? (a & b) :
               (ctrl == 4'b0001) ? (a | b) :
               (ctrl == 4'b0010) ? (a ^ b) : 
               (ctrl == 4'b0011) ? ~(a | b) : 
               (ctrl == 4'b0100) ? res[31:0] :
               (ctrl == 4'b0101) ? res[31:0] :
               (ctrl == 4'b0110) ? res[31:0] :
               (ctrl == 4'b0111) ? res[31:0] :
               (ctrl == 4'b1000) ? {31'b0, res[32]} :
               (ctrl == 4'b1001) ? {31'b0, res[32]} : 
               (ctrl == 4'b1010) ? b << a :
               (ctrl == 4'b1011) ? b >> a : 
               (ctrl == 4'b1100) ? opSRA[31:0] :
               (ctrl == 4'b1101) ? {b[15:0], 16'b0} :  
               32'd0;

    assign opA = (ctrl == 4'b0000) ? 33'b0 :
                 (ctrl == 4'b0001) ? 33'b0 : 
                 (ctrl == 4'b0010) ? 33'b0 : 
                 (ctrl == 4'b0011) ? 33'b0 : 
                 (ctrl == 4'b0100) ? {a[31], a} :
                 (ctrl == 4'b0101) ? {1'b0, a} :
                 (ctrl == 4'b0110) ? {a[31], a} :
                 (ctrl == 4'b0111) ? {1'b0, a} :
                 (ctrl == 4'b1000) ? {a[31], a} :
                 (ctrl == 4'b1001) ? {1'b0, a} :
                 33'd0;

    assign opB = (ctrl == 4'b0000) ? 33'b0 :
                 (ctrl == 4'b0001) ? 33'b0 : 
                 (ctrl == 4'b0010) ? 33'b0 : 
                 (ctrl == 4'b0011) ? 33'b0 : 
                 (ctrl == 4'b0100) ? {b[31], b} :
                 (ctrl == 4'b0101) ? {1'b0, b} :
                 (ctrl == 4'b0110) ? (~{b[31], b} + 1'b1):
                 (ctrl == 4'b0111) ? (~{1'b0, b} + 1'b1) :
                 (ctrl == 4'b1000) ? (~{b[31], b} + 1'b1) :
                 (ctrl == 4'b1001) ? (~{1'b0, b} + 1'b1) :
                 33'd0;
    
    assign opSRA = (ctrl == 4'b1100) ? ({{32{b[31]}},b} >> a) : 64'b0;
    
    assign zero = (y == 32'd0) ? 1'b1 : 1'b0;

endmodule
