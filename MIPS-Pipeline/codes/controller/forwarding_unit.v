module forwarding_unit (

    input ID_EX_reg_write, 
    input EX_MEM_reg_write, 
    input MEM_WB_reg_write,
    input[4:0] IF_ID_rs, 
    input[4:0] IF_ID_rt, 
    input[4:0] ID_EX_rw, 
    input[4:0] EX_MEM_rd, 
    input[4:0] MEM_WB_rd,

    output [1:0] forwardSrc1,
    output [1:0] forwardSrc2

);

    assign forwardSrc1 = (ID_EX_reg_write == 1'b1 && IF_ID_rs == ID_EX_rw && ID_EX_rw != 5'b0)    ? 2'b01 :
                      (EX_MEM_reg_write == 1'b1 && IF_ID_rs == EX_MEM_rd && EX_MEM_rd != 5'b0) ? 2'b10 :
                      (MEM_WB_reg_write == 1'b1 && IF_ID_rs == MEM_WB_rd && MEM_WB_rd != 5'b0) ? 2'b11 : 
                      2'b00;

    assign forwardSrc2 = (ID_EX_reg_write == 1'b1 && IF_ID_rt == ID_EX_rw && ID_EX_rw != 5'b0)    ? 2'b01 :
                      (EX_MEM_reg_write == 1'b1 && IF_ID_rt == EX_MEM_rd && EX_MEM_rd != 5'b0) ? 2'b10 :
                      (MEM_WB_reg_write == 1'b1 && IF_ID_rt == MEM_WB_rd && MEM_WB_rd != 5'b0) ? 2'b11 : 
                      2'b00;
    
endmodule

