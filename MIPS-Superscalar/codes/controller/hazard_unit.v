module hazard_unit (

    input isBub,
    input ID_EX_memread_p2,
    input IF_ID_memread_p2,
    input IF_ID_reg_write_p1,
    input IF_ID_reg_write_p2,
    input [4:0] ID_EX_rt_p2, 
    input [4:0] IF_ID_rs_p2, 
    input [4:0] IF_ID_rt_p2,
    input [4:0] IF_ID_rs_p1, 
    input [4:0] IF_ID_rt_p1,
    input [4:0] IF_ID_rw_p1,
    input [4:0] IF_ID_rw_p2,
    input rs_read_p2,
    input rt_read_p2,
    input swp_p1,
    output pc_en, 
    output IF_ID_en, 
    output c_or_nop_p1,
    output c_or_nop_p2

);

    assign {pc_en, IF_ID_en, c_or_nop_p1, c_or_nop_p2} = (isBub == 0 && ID_EX_memread_p2 == 1 && (ID_EX_rt_p2 == IF_ID_rs_p2 || ID_EX_rt_p2 == IF_ID_rt_p2)) ? 4'b0011 : 
                                                         (isBub == 0 && ID_EX_memread_p2 == 1 && (ID_EX_rt_p2 == IF_ID_rs_p1 || ID_EX_rt_p2 == IF_ID_rt_p1)) ? 4'b0011 :
                                                         (isBub == 0 && IF_ID_memread_p2 == 1 && (IF_ID_rt_p2 == IF_ID_rs_p1 || IF_ID_rt_p2 == IF_ID_rt_p1)) ? 4'b0010 :
                                                         (isBub == 0 && IF_ID_memread_p2 == 1 && (IF_ID_rs_p2 == IF_ID_rw_p1) && IF_ID_reg_write_p1 == 1) ? 4'b0001 :
                                                         (isBub == 0 && swp_p1 == 0 && IF_ID_memread_p2 == 0 && (IF_ID_rs_p2 == IF_ID_rw_p1) && IF_ID_reg_write_p1 == 1 && rs_read_p2 == 1'b1) ? 4'b0001 :
                                                         (isBub == 0 && swp_p1 == 0 && IF_ID_memread_p2 == 0 && (IF_ID_rt_p2 == IF_ID_rw_p1) && IF_ID_reg_write_p1 == 1 && rt_read_p2 == 1'b1) ? 4'b0001 :
                                                         (isBub == 0 && (IF_ID_rw_p1 == IF_ID_rw_p2) && IF_ID_reg_write_p1 == 1 && IF_ID_reg_write_p2 == 1'b1) ? 4'b0001 :
                                                          4'b1100;

endmodule