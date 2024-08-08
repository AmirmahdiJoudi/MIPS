module sign_ext (

    input sgn,
    input [15:0] d_in,
    
    output [31:0] d_out

);

    assign d_out = (sgn == 1'b1) ? {{16{d_in[15]}}, d_in} : {16'b0, d_in};

endmodule