module hazard_unit (

    input ID_EX_memread,
    input[4:0] ID_EX_rt, 
    input[4:0] IF_ID_rs, 
    input[4:0] IF_ID_rt,

    output pc_en, 
    output IF_ID_en, 
    output c_or_nop

);

    assign {pc_en, IF_ID_en, c_or_nop} = (ID_EX_memread == 1 && (ID_EX_rt == IF_ID_rs || ID_EX_rt == IF_ID_rt)) ? 3'b001 : 3'b110;

endmodule
    