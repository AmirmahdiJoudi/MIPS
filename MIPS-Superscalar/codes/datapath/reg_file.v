module reg_file (

    input clk,
    input rst,
    input reg_write_p1,  
    input [4:0] rd_reg1_p1, 
    input [4:0] rd_reg2_p1, 
    input [4:0] wr_reg_p1,
    input [31:0] wr_data_p1,

    input reg_write_p2, 
    input [4:0] rd_reg1_p2, 
    input [4:0] rd_reg2_p2, 
    input [4:0] wr_reg_p2,
    input [31:0] wr_data_p2,
    
    output [31:0] rd_data1_p1, 
    output [31:0] rd_data2_p1,

    output [31:0] rd_data1_p2, 
    output [31:0] rd_data2_p2

);

    reg [31:0] register_file [0:31];
    integer i;

    assign rd_data1_p1 = register_file[rd_reg1_p1];
    assign rd_data2_p1 = register_file[rd_reg2_p1];    

    assign rd_data1_p2 = register_file[rd_reg1_p2];
    assign rd_data2_p2 = register_file[rd_reg2_p2];    

    always @(negedge clk, posedge rst)begin
        if (rst == 1'b1)
            for (i=0; i<32; i=i+1 )
                register_file[i] <= 32'd0;
        else if (reg_write_p1 == 1'b1)
            if(wr_reg_p1 != 5'd0)begin
                register_file[wr_reg_p1] <= wr_data_p1;
            end
    end

    always @(negedge clk, posedge rst)begin
        if (rst == 1'b1)
            for (i=0; i<32; i=i+1 )
                register_file[i] <= 32'd0;
        else if (reg_write_p2 == 1'b1)
            if(wr_reg_p2 != 5'd0)begin
                register_file[wr_reg_p2] <= wr_data_p2;
            end
    end
    
endmodule