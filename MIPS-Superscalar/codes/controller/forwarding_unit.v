module forwarding_unit (

    input ID_EX_reg_write_p1, 
    input EX_MEM_reg_write_p1, 
    input MEM_WB_reg_write_p1,
    input ID_EX_reg_write_p2, 
    input EX_MEM_reg_write_p2, 
    input MEM_WB_reg_write_p2,
    input[4:0] IF_ID_rs_p1, 
    input[4:0] IF_ID_rt_p1, 
    input[4:0] ID_EX_rw_p1, 
    input[4:0] EX_MEM_rd_p1, 
    input[4:0] MEM_WB_rd_p1,
    input[4:0] IF_ID_rs_p2, 
    input[4:0] IF_ID_rt_p2, 
    input[4:0] ID_EX_rw_p2, 
    input[4:0] EX_MEM_rd_p2, 
    input[4:0] MEM_WB_rd_p2,

    output [1:0] forwardSrc1_p1,
    output [1:0] forwardSrc2_p1,
    output [1:0] forwardSrc1_p2,
    output [1:0] forwardSrc2_p2,
    output bp11,
    output bp12,
    output bp13,
    output bp21,
    output bp22,
    output bp23

);

    wire bp11_1;
    wire bp12_1;
    wire bp13_1;
    wire bp11_2;
    wire bp12_2;
    wire bp13_2;
    wire bp21_1;
    wire bp22_1;
    wire bp23_1;
    wire bp21_2;
    wire bp22_2;
    wire bp23_2;

    assign {bp11_1, bp12_1, bp13_1, forwardSrc1_p1} = (ID_EX_reg_write_p1 == 1'b1 && IF_ID_rs_p1 == ID_EX_rw_p1 && ID_EX_rw_p1 != 5'b0)    ? 5'b00001 :
                                                    (EX_MEM_reg_write_p1 == 1'b1 && IF_ID_rs_p1 == EX_MEM_rd_p1 && EX_MEM_rd_p1 != 5'b0) ? 5'b00010 :
                                                    (MEM_WB_reg_write_p1 == 1'b1 && IF_ID_rs_p1 == MEM_WB_rd_p1 && MEM_WB_rd_p1 != 5'b0) ? 5'b00011 : 

                                                    (ID_EX_reg_write_p2 == 1'b1 && IF_ID_rs_p1 == ID_EX_rw_p2 && ID_EX_rw_p2 != 5'b0)    ? 5'b10001 :
                                                    (EX_MEM_reg_write_p2 == 1'b1 && IF_ID_rs_p1 == EX_MEM_rd_p2 && EX_MEM_rd_p2 != 5'b0) ? 5'b01010 :
                                                    (MEM_WB_reg_write_p2 == 1'b1 && IF_ID_rs_p1 == MEM_WB_rd_p2 && MEM_WB_rd_p2 != 5'b0) ? 5'b00111 :

                                                    5'b00000;

    assign {bp21_1, bp22_1, bp23_1, forwardSrc1_p2} = (ID_EX_reg_write_p2 == 1'b1 && IF_ID_rs_p2 == ID_EX_rw_p2 && ID_EX_rw_p2 != 5'b0)    ? 5'b00001 :
                                                    (EX_MEM_reg_write_p2 == 1'b1 && IF_ID_rs_p2 == EX_MEM_rd_p2 && EX_MEM_rd_p2 != 5'b0) ? 5'b00010 :
                                                    (MEM_WB_reg_write_p2 == 1'b1 && IF_ID_rs_p2 == MEM_WB_rd_p2 && MEM_WB_rd_p2 != 5'b0) ? 5'b00011 : 

                                                    (ID_EX_reg_write_p1 == 1'b1 && IF_ID_rs_p2 == ID_EX_rw_p1 && ID_EX_rw_p1 != 5'b0)    ? 5'b10001 :
                                                    (EX_MEM_reg_write_p1 == 1'b1 && IF_ID_rs_p2 == EX_MEM_rd_p1 && EX_MEM_rd_p1 != 5'b0) ? 5'b01010 :
                                                    (MEM_WB_reg_write_p1 == 1'b1 && IF_ID_rs_p2 == MEM_WB_rd_p1 && MEM_WB_rd_p1 != 5'b0) ? 5'b00111 :

                                                    5'b00000;

    assign {bp11_2, bp12_2, bp13_2, forwardSrc2_p1} = (ID_EX_reg_write_p1 == 1'b1 && IF_ID_rt_p1 == ID_EX_rw_p1 && ID_EX_rw_p1 != 5'b0)    ? 5'b00001 :
                                                    (EX_MEM_reg_write_p1 == 1'b1 && IF_ID_rt_p1 == EX_MEM_rd_p1 && EX_MEM_rd_p1 != 5'b0) ? 5'b00010 :
                                                    (MEM_WB_reg_write_p1 == 1'b1 && IF_ID_rt_p1 == MEM_WB_rd_p1 && MEM_WB_rd_p1 != 5'b0) ? 5'b00011 : 

                                                    (ID_EX_reg_write_p2 == 1'b1 && IF_ID_rt_p1 == ID_EX_rw_p2 && ID_EX_rw_p2 != 5'b0)    ? 5'b10001 :
                                                    (EX_MEM_reg_write_p2 == 1'b1 && IF_ID_rt_p1 == EX_MEM_rd_p2 && EX_MEM_rd_p2 != 5'b0) ? 5'b01010 :
                                                    (MEM_WB_reg_write_p2 == 1'b1 && IF_ID_rt_p1 == MEM_WB_rd_p2 && MEM_WB_rd_p2 != 5'b0) ? 5'b00111 :

                                                    5'b00000;

    assign {bp21_2, bp22_2, bp23_2, forwardSrc2_p2} = (ID_EX_reg_write_p2 == 1'b1 && IF_ID_rt_p2 == ID_EX_rw_p2 && ID_EX_rw_p2 != 5'b0)    ? 5'b00001 :
                                                    (EX_MEM_reg_write_p2 == 1'b1 && IF_ID_rt_p2 == EX_MEM_rd_p2 && EX_MEM_rd_p2 != 5'b0) ? 5'b00010 :
                                                    (MEM_WB_reg_write_p2 == 1'b1 && IF_ID_rt_p2 == MEM_WB_rd_p2 && MEM_WB_rd_p2 != 5'b0) ? 5'b00011 : 

                                                    (ID_EX_reg_write_p1 == 1'b1 && IF_ID_rt_p2 == ID_EX_rw_p1 && ID_EX_rw_p1 != 5'b0)    ? 5'b10001 :
                                                    (EX_MEM_reg_write_p1 == 1'b1 && IF_ID_rt_p2 == EX_MEM_rd_p1 && EX_MEM_rd_p1 != 5'b0) ? 5'b01010 :
                                                    (MEM_WB_reg_write_p1 == 1'b1 && IF_ID_rt_p2 == MEM_WB_rd_p1 && MEM_WB_rd_p1 != 5'b0) ? 5'b00111 :

                                                    5'b00000;

    assign bp11 = bp11_1 | bp11_2;
    assign bp12 = bp12_1 | bp12_2;
    assign bp13 = bp13_1 | bp13_2;
    assign bp21 = bp21_1 | bp21_2;
    assign bp22 = bp22_1 | bp22_2;
    assign bp23 = bp23_1 | bp23_2;
    
endmodule

