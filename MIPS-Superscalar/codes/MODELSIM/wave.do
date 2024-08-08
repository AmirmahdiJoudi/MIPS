onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /mips_tb/clk
add wave -noupdate -radix unsigned /mips_tb/CPU/DP/PC/d_out
add wave -noupdate /mips_tb/CPU/DP/PC_src
add wave -noupdate /mips_tb/CPU/CU/PC_stall
add wave -noupdate -radix decimal /mips_tb/CPU/DP/IF_PC_In
add wave -noupdate -radix decimal /mips_tb/CPU/DP/jump_address
add wave -noupdate /mips_tb/CPU/DP/jump
add wave -noupdate -radix unsigned /mips_tb/CPU/DP/PCplus8
add wave -noupdate -radix decimal /mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/a
add wave -noupdate -radix decimal /mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/b
add wave -noupdate -radix decimal /mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/cin
add wave -noupdate -radix decimal -childformat {{{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[31]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[30]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[29]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[28]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[27]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[26]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[25]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[24]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[23]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[22]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[21]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[20]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[19]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[18]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[17]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[16]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[15]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[14]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[13]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[12]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[11]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[10]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[9]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[8]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[7]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[6]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[5]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[4]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[3]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[2]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[1]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[0]} -radix decimal}} -subitemconfig {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[31]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[30]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[29]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[28]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[27]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[26]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[25]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[24]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[23]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[22]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[21]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[20]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[19]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[18]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[17]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[16]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[15]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[14]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[13]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[12]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[11]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[10]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[9]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[8]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[7]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[6]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[5]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[4]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[3]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[2]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[1]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[0]} {-height 15 -radix decimal}} /mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum
add wave -noupdate /mips_tb/CPU/DP/opcode_p1
add wave -noupdate /mips_tb/CPU/DP/opcode_p2
add wave -noupdate /mips_tb/CPU/DP/PC_src
add wave -noupdate /mips_tb/CPU/CU/PC_src_p1
add wave -noupdate /mips_tb/CPU/CU/PC_src_p2
add wave -noupdate /mips_tb/CPU/CU/beq_taken
add wave -noupdate /mips_tb/CPU/CU/bne_taken
add wave -noupdate /mips_tb/CPU/DP/are_equal
add wave -noupdate -radix decimal /mips_tb/CPU/DP/sgn_ext_out_00_p1
add wave -noupdate -radix decimal /mips_tb/CPU/DP/p1_sgn_ext_out
add wave -noupdate -radix decimal /mips_tb/CPU/DP/p2_sgn_ext_out
add wave -noupdate -group reg1_p1 -radix decimal /mips_tb/CPU/DP/reg1_p1_mux_swp/i0
add wave -noupdate -group reg1_p1 -radix decimal /mips_tb/CPU/DP/reg1_p1_mux_swp/i1
add wave -noupdate -group reg1_p1 -radix decimal /mips_tb/CPU/DP/reg1_p1_mux_swp/sel
add wave -noupdate -group reg1_p1 -radix decimal /mips_tb/CPU/DP/reg1_p1_mux_swp/y
add wave -noupdate -group reg1_p1 -radix decimal /mips_tb/CPU/DP/reg1_p1_mux_swp/i0
add wave -noupdate -group reg1_p1 -radix decimal /mips_tb/CPU/DP/reg1_p1_mux_swp/i1
add wave -noupdate -group reg1_p1 -radix decimal /mips_tb/CPU/DP/reg1_p1_mux_swp/sel
add wave -noupdate -group reg1_p1 -radix decimal /mips_tb/CPU/DP/reg1_p1_mux_swp/y
add wave -noupdate -group reg2_p1 -radix decimal /mips_tb/CPU/DP/reg2_p1_mux_swp/i0
add wave -noupdate -group reg2_p1 -radix decimal /mips_tb/CPU/DP/reg2_p1_mux_swp/i1
add wave -noupdate -group reg2_p1 -radix decimal /mips_tb/CPU/DP/reg2_p1_mux_swp/sel
add wave -noupdate -group reg2_p1 -radix decimal /mips_tb/CPU/DP/reg2_p1_mux_swp/y
add wave -noupdate -group reg2_p1 -radix decimal /mips_tb/CPU/DP/reg2_p1_mux_swp/i0
add wave -noupdate -group reg2_p1 -radix decimal /mips_tb/CPU/DP/reg2_p1_mux_swp/i1
add wave -noupdate -group reg2_p1 -radix decimal /mips_tb/CPU/DP/reg2_p1_mux_swp/sel
add wave -noupdate -group reg2_p1 -radix decimal /mips_tb/CPU/DP/reg2_p1_mux_swp/y
add wave -noupdate -group reg1_p2 -radix decimal /mips_tb/CPU/DP/reg1_p2_mux_swp/i0
add wave -noupdate -group reg1_p2 -radix decimal /mips_tb/CPU/DP/reg1_p2_mux_swp/i1
add wave -noupdate -group reg1_p2 -radix decimal /mips_tb/CPU/DP/reg1_p2_mux_swp/sel
add wave -noupdate -group reg1_p2 -radix decimal /mips_tb/CPU/DP/reg1_p2_mux_swp/y
add wave -noupdate -group reg1_p2 -radix decimal /mips_tb/CPU/DP/reg1_p2_mux_swp/i0
add wave -noupdate -group reg1_p2 -radix decimal /mips_tb/CPU/DP/reg1_p2_mux_swp/i1
add wave -noupdate -group reg1_p2 -radix decimal /mips_tb/CPU/DP/reg1_p2_mux_swp/sel
add wave -noupdate -group reg1_p2 -radix decimal /mips_tb/CPU/DP/reg1_p2_mux_swp/y
add wave -noupdate -group reg2_p2 -radix decimal /mips_tb/CPU/DP/reg2_p2_mux_swp/i0
add wave -noupdate -group reg2_p2 -radix decimal /mips_tb/CPU/DP/reg2_p2_mux_swp/i1
add wave -noupdate -group reg2_p2 -radix decimal /mips_tb/CPU/DP/reg2_p2_mux_swp/sel
add wave -noupdate -group reg2_p2 -radix decimal /mips_tb/CPU/DP/reg2_p2_mux_swp/y
add wave -noupdate -group reg2_p2 -radix decimal /mips_tb/CPU/DP/reg2_p2_mux_swp/i0
add wave -noupdate -group reg2_p2 -radix decimal /mips_tb/CPU/DP/reg2_p2_mux_swp/i1
add wave -noupdate -group reg2_p2 -radix decimal /mips_tb/CPU/DP/reg2_p2_mux_swp/sel
add wave -noupdate -group reg2_p2 -radix decimal /mips_tb/CPU/DP/reg2_p2_mux_swp/y
add wave -noupdate -group ALU_Src1_L1_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p1/i0
add wave -noupdate -group ALU_Src1_L1_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p1/i1
add wave -noupdate -group ALU_Src1_L1_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p1/i2
add wave -noupdate -group ALU_Src1_L1_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p1/i3
add wave -noupdate -group ALU_Src1_L1_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p1/sel
add wave -noupdate -group ALU_Src1_L1_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p1/y
add wave -noupdate -group ALU_Src1_L1_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p1/i0
add wave -noupdate -group ALU_Src1_L1_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p1/i1
add wave -noupdate -group ALU_Src1_L1_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p1/i2
add wave -noupdate -group ALU_Src1_L1_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p1/i3
add wave -noupdate -group ALU_Src1_L1_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p1/sel
add wave -noupdate -group ALU_Src1_L1_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p1/y
add wave -noupdate -group ALU_Src1_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_p1/i0
add wave -noupdate -group ALU_Src1_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_p1/i1
add wave -noupdate -group ALU_Src1_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_p1/sel
add wave -noupdate -group ALU_Src1_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_p1/y
add wave -noupdate -group ALU_Src1_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_p1/i0
add wave -noupdate -group ALU_Src1_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_p1/i1
add wave -noupdate -group ALU_Src1_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_p1/sel
add wave -noupdate -group ALU_Src1_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_p1/y
add wave -noupdate -group ALU_Src2_L1_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_L1_p1/i0
add wave -noupdate -group ALU_Src2_L1_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_L1_p1/i1
add wave -noupdate -group ALU_Src2_L1_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_L1_p1/i2
add wave -noupdate -group ALU_Src2_L1_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_L1_p1/i3
add wave -noupdate -group ALU_Src2_L1_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_L1_p1/sel
add wave -noupdate -group ALU_Src2_L1_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_L1_p1/y
add wave -noupdate -group ALU_Src2_L1_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_L1_p1/i0
add wave -noupdate -group ALU_Src2_L1_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_L1_p1/i1
add wave -noupdate -group ALU_Src2_L1_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_L1_p1/i2
add wave -noupdate -group ALU_Src2_L1_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_L1_p1/i3
add wave -noupdate -group ALU_Src2_L1_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_L1_p1/sel
add wave -noupdate -group ALU_Src2_L1_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_L1_p1/y
add wave -noupdate -group ALU_Src2_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_p1/i0
add wave -noupdate -group ALU_Src2_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_p1/i1
add wave -noupdate -group ALU_Src2_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_p1/sel
add wave -noupdate -group ALU_Src2_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_p1/y
add wave -noupdate -group ALU_Src2_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_p1/i0
add wave -noupdate -group ALU_Src2_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_p1/i1
add wave -noupdate -group ALU_Src2_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_p1/sel
add wave -noupdate -group ALU_Src2_p1 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_p1/y
add wave -noupdate -group ALU_Arc1_L1_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p2/i0
add wave -noupdate -group ALU_Arc1_L1_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p2/i1
add wave -noupdate -group ALU_Arc1_L1_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p2/i2
add wave -noupdate -group ALU_Arc1_L1_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p2/i3
add wave -noupdate -group ALU_Arc1_L1_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p2/sel
add wave -noupdate -group ALU_Arc1_L1_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p2/y
add wave -noupdate -group ALU_Arc1_L1_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p2/i0
add wave -noupdate -group ALU_Arc1_L1_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p2/i1
add wave -noupdate -group ALU_Arc1_L1_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p2/i2
add wave -noupdate -group ALU_Arc1_L1_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p2/i3
add wave -noupdate -group ALU_Arc1_L1_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p2/sel
add wave -noupdate -group ALU_Arc1_L1_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p2/y
add wave -noupdate -group ALU_Src1_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_p2/i0
add wave -noupdate -group ALU_Src1_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_p2/i1
add wave -noupdate -group ALU_Src1_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_p2/sel
add wave -noupdate -group ALU_Src1_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_p2/y
add wave -noupdate -group ALU_Src1_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_p2/i0
add wave -noupdate -group ALU_Src1_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_p2/i1
add wave -noupdate -group ALU_Src1_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_p2/sel
add wave -noupdate -group ALU_Src1_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src1_p2/y
add wave -noupdate -group ALU_Src2_L1_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_L1_p2/i0
add wave -noupdate -group ALU_Src2_L1_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_L1_p2/i1
add wave -noupdate -group ALU_Src2_L1_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_L1_p2/i2
add wave -noupdate -group ALU_Src2_L1_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_L1_p2/i3
add wave -noupdate -group ALU_Src2_L1_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_L1_p2/sel
add wave -noupdate -group ALU_Src2_L1_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_L1_p2/y
add wave -noupdate -group ALU_Src2_L1_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_L1_p2/i0
add wave -noupdate -group ALU_Src2_L1_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_L1_p2/i1
add wave -noupdate -group ALU_Src2_L1_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_L1_p2/i2
add wave -noupdate -group ALU_Src2_L1_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_L1_p2/i3
add wave -noupdate -group ALU_Src2_L1_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_L1_p2/sel
add wave -noupdate -group ALU_Src2_L1_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_L1_p2/y
add wave -noupdate -group ALU_Src2_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_p2/i0
add wave -noupdate -group ALU_Src2_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_p2/i1
add wave -noupdate -group ALU_Src2_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_p2/sel
add wave -noupdate -group ALU_Src2_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_p2/y
add wave -noupdate -group ALU_Src2_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_p2/i0
add wave -noupdate -group ALU_Src2_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_p2/i1
add wave -noupdate -group ALU_Src2_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_p2/sel
add wave -noupdate -group ALU_Src2_p2 -radix decimal /mips_tb/CPU/DP/MUX_ALU_Src2_p2/y
add wave -noupdate -group MUX1P2 /mips_tb/CPU/DP/MUX_ALU_Src1_p2/i0
add wave -noupdate -group MUX1P2 /mips_tb/CPU/DP/MUX_ALU_Src1_p2/i1
add wave -noupdate -group MUX1P2 /mips_tb/CPU/DP/MUX_ALU_Src1_p2/sel
add wave -noupdate -group MUX1P2 /mips_tb/CPU/DP/MUX_ALU_Src1_p2/y
add wave -noupdate -group MUX1P2 /mips_tb/CPU/DP/opcode_p1
add wave -noupdate -group MUX1P2 /mips_tb/CPU/DP/opcode_p2
add wave -noupdate -group MUX1P2 /mips_tb/CPU/DP/MUX_ALU_Src1_p2/i0
add wave -noupdate -group MUX1P2 /mips_tb/CPU/DP/MUX_ALU_Src1_p2/i1
add wave -noupdate -group MUX1P2 /mips_tb/CPU/DP/MUX_ALU_Src1_p2/sel
add wave -noupdate -group MUX1P2 /mips_tb/CPU/DP/MUX_ALU_Src1_p2/y
add wave -noupdate -group MUX1P2 /mips_tb/CPU/DP/opcode_p1
add wave -noupdate -group MUX1P2 /mips_tb/CPU/DP/opcode_p2
add wave -noupdate -group MUX1L1P2 -radix unsigned /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p2/i0
add wave -noupdate -group MUX1L1P2 -radix unsigned /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p2/i1
add wave -noupdate -group MUX1L1P2 -radix unsigned /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p2/i2
add wave -noupdate -group MUX1L1P2 -radix unsigned /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p2/i3
add wave -noupdate -group MUX1L1P2 -radix unsigned /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p2/sel
add wave -noupdate -group MUX1L1P2 -radix unsigned /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p2/y
add wave -noupdate -group MUX1L1P2 -radix unsigned /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p2/i0
add wave -noupdate -group MUX1L1P2 -radix unsigned /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p2/i1
add wave -noupdate -group MUX1L1P2 -radix unsigned /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p2/i2
add wave -noupdate -group MUX1L1P2 -radix unsigned /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p2/i3
add wave -noupdate -group MUX1L1P2 -radix unsigned /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p2/sel
add wave -noupdate -group MUX1L1P2 -radix unsigned /mips_tb/CPU/DP/MUX_ALU_Src1_L1_p2/y
add wave -noupdate -group ALU_p1 -radix decimal /mips_tb/CPU/DP/ALU_p1/a
add wave -noupdate -group ALU_p1 -radix decimal -childformat {{{/mips_tb/CPU/DP/ALU_p1/b[31]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[30]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[29]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[28]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[27]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[26]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[25]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[24]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[23]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[22]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[21]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[20]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[19]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[18]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[17]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[16]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[15]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[14]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[13]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[12]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[11]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[10]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[9]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[8]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[7]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[6]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[5]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[4]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[3]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[2]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[1]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[0]} -radix decimal}} -subitemconfig {{/mips_tb/CPU/DP/ALU_p1/b[31]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[30]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[29]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[28]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[27]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[26]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[25]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[24]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[23]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[22]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[21]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[20]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[19]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[18]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[17]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[16]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[15]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[14]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[13]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[12]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[11]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[10]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[9]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[8]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[7]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[6]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[5]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[4]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[3]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[2]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[1]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[0]} {-height 15 -radix decimal}} /mips_tb/CPU/DP/ALU_p1/b
add wave -noupdate -group ALU_p1 /mips_tb/CPU/DP/ALU_p1/ctrl
add wave -noupdate -group ALU_p1 -radix decimal /mips_tb/CPU/DP/ALU_p1/y
add wave -noupdate -group ALU_p1 /mips_tb/CPU/DP/ALU_p1/zero
add wave -noupdate -group ALU_p1 /mips_tb/CPU/DP/ALU_p1/res
add wave -noupdate -group ALU_p1 -radix decimal /mips_tb/CPU/DP/ALU_p1/a
add wave -noupdate -group ALU_p1 -radix decimal -childformat {{{/mips_tb/CPU/DP/ALU_p1/b[31]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[30]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[29]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[28]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[27]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[26]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[25]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[24]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[23]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[22]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[21]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[20]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[19]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[18]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[17]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[16]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[15]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[14]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[13]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[12]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[11]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[10]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[9]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[8]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[7]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[6]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[5]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[4]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[3]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[2]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[1]} -radix decimal} {{/mips_tb/CPU/DP/ALU_p1/b[0]} -radix decimal}} -subitemconfig {{/mips_tb/CPU/DP/ALU_p1/b[31]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[30]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[29]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[28]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[27]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[26]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[25]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[24]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[23]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[22]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[21]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[20]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[19]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[18]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[17]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[16]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[15]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[14]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[13]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[12]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[11]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[10]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[9]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[8]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[7]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[6]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[5]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[4]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[3]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[2]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[1]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/ALU_p1/b[0]} {-height 15 -radix decimal}} /mips_tb/CPU/DP/ALU_p1/b
add wave -noupdate -group ALU_p1 /mips_tb/CPU/DP/ALU_p1/ctrl
add wave -noupdate -group ALU_p1 -radix decimal /mips_tb/CPU/DP/ALU_p1/y
add wave -noupdate -group ALU_p1 /mips_tb/CPU/DP/ALU_p1/zero
add wave -noupdate -group ALU_p1 /mips_tb/CPU/DP/ALU_p1/res
add wave -noupdate -group ALU_p2 -radix decimal /mips_tb/CPU/DP/ALU_p2/a
add wave -noupdate -group ALU_p2 -radix decimal /mips_tb/CPU/DP/ALU_p2/b
add wave -noupdate -group ALU_p2 /mips_tb/CPU/DP/ALU_p2/ctrl
add wave -noupdate -group ALU_p2 -radix decimal /mips_tb/CPU/DP/ALU_p2/y
add wave -noupdate -group ALU_p2 /mips_tb/CPU/DP/ALU_p2/zero
add wave -noupdate -group ALU_p2 -radix decimal /mips_tb/CPU/DP/ALU_p2/a
add wave -noupdate -group ALU_p2 -radix decimal /mips_tb/CPU/DP/ALU_p2/b
add wave -noupdate -group ALU_p2 /mips_tb/CPU/DP/ALU_p2/ctrl
add wave -noupdate -group ALU_p2 -radix decimal /mips_tb/CPU/DP/ALU_p2/y
add wave -noupdate -group ALU_p2 /mips_tb/CPU/DP/ALU_p2/zero
add wave -noupdate -expand -group RF -radix decimal -childformat {{{/mips_tb/CPU/DP/RF/register_file[0]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[1]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[2]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[3]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[4]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[5]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[6]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[7]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[8]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[9]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[10]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[11]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[12]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[13]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[14]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[15]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[16]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[17]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[18]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[19]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[20]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[21]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[22]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[23]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[24]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[25]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[26]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[27]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[28]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[29]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[30]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[31]} -radix decimal}} -subitemconfig {{/mips_tb/CPU/DP/RF/register_file[0]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[1]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[2]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[3]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[4]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[5]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[6]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[7]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[8]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[9]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[10]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[11]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[12]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[13]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[14]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[15]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[16]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[17]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[18]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[19]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[20]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[21]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[22]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[23]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[24]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[25]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[26]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[27]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[28]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[29]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[30]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[31]} {-height 15 -radix decimal}} /mips_tb/CPU/DP/RF/register_file
add wave -noupdate -expand -group RF -radix unsigned /mips_tb/CPU/DP/RF/rd_reg1_p1
add wave -noupdate -expand -group RF -radix unsigned /mips_tb/CPU/DP/RF/rd_reg2_p1
add wave -noupdate -expand -group RF -radix unsigned /mips_tb/CPU/DP/RF/wr_reg_p1
add wave -noupdate -expand -group RF -radix unsigned /mips_tb/CPU/DP/RF/wr_data_p1
add wave -noupdate -expand -group RF -radix unsigned /mips_tb/CPU/DP/RF/reg_write_p2
add wave -noupdate -expand -group RF -radix unsigned /mips_tb/CPU/DP/RF/rd_reg1_p2
add wave -noupdate -expand -group RF -radix unsigned /mips_tb/CPU/DP/RF/rd_reg2_p2
add wave -noupdate -expand -group RF -radix unsigned /mips_tb/CPU/DP/RF/wr_reg_p2
add wave -noupdate -expand -group RF -radix unsigned /mips_tb/CPU/DP/RF/wr_data_p2
add wave -noupdate -expand -group RF -radix unsigned /mips_tb/CPU/DP/RF/reg_write_p1
add wave -noupdate -expand -group RF -radix decimal /mips_tb/CPU/DP/RF/rd_data1_p1
add wave -noupdate -expand -group RF -radix decimal /mips_tb/CPU/DP/RF/rd_data2_p1
add wave -noupdate -expand -group RF -radix decimal /mips_tb/CPU/DP/RF/rd_data1_p2
add wave -noupdate -expand -group RF -radix decimal /mips_tb/CPU/DP/RF/rd_data2_p2
add wave -noupdate -expand -group RF -radix decimal -childformat {{{/mips_tb/CPU/DP/RF/register_file[0]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[1]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[2]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[3]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[4]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[5]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[6]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[7]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[8]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[9]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[10]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[11]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[12]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[13]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[14]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[15]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[16]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[17]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[18]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[19]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[20]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[21]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[22]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[23]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[24]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[25]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[26]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[27]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[28]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[29]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[30]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[31]} -radix decimal}} -subitemconfig {{/mips_tb/CPU/DP/RF/register_file[0]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[1]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[2]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[3]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[4]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[5]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[6]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[7]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[8]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[9]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[10]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[11]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[12]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[13]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[14]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[15]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[16]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[17]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[18]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[19]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[20]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[21]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[22]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[23]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[24]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[25]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[26]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[27]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[28]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[29]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[30]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[31]} {-height 15 -radix decimal}} /mips_tb/CPU/DP/RF/register_file
add wave -noupdate -expand -group RF -radix unsigned /mips_tb/CPU/DP/RF/rd_reg1_p1
add wave -noupdate -expand -group RF -radix unsigned /mips_tb/CPU/DP/RF/rd_reg2_p1
add wave -noupdate -expand -group RF -radix unsigned /mips_tb/CPU/DP/RF/wr_reg_p1
add wave -noupdate -expand -group RF -radix unsigned /mips_tb/CPU/DP/RF/wr_data_p1
add wave -noupdate -expand -group RF -radix unsigned /mips_tb/CPU/DP/RF/reg_write_p2
add wave -noupdate -expand -group RF -radix unsigned /mips_tb/CPU/DP/RF/rd_reg1_p2
add wave -noupdate -expand -group RF -radix unsigned /mips_tb/CPU/DP/RF/rd_reg2_p2
add wave -noupdate -expand -group RF -radix unsigned /mips_tb/CPU/DP/RF/wr_reg_p2
add wave -noupdate -expand -group RF -radix unsigned /mips_tb/CPU/DP/RF/wr_data_p2
add wave -noupdate -expand -group RF -radix unsigned /mips_tb/CPU/DP/RF/reg_write_p1
add wave -noupdate -expand -group RF -radix decimal /mips_tb/CPU/DP/RF/rd_data1_p1
add wave -noupdate -expand -group RF -radix decimal /mips_tb/CPU/DP/RF/rd_data2_p1
add wave -noupdate -expand -group RF -radix decimal /mips_tb/CPU/DP/RF/rd_data1_p2
add wave -noupdate -expand -group RF -radix decimal /mips_tb/CPU/DP/RF/rd_data2_p2
add wave -noupdate -group SWP /mips_tb/CPU/CU/IF_ID_en_p1
add wave -noupdate -group SWP /mips_tb/CPU/CU/IF_ID_en_p2
add wave -noupdate -group SWP /mips_tb/CPU/CU/IF_flush_p2
add wave -noupdate -group SWP /mips_tb/CPU/CU/ID_flush_p1
add wave -noupdate -group SWP /mips_tb/CPU/CU/ID_flush_p2
add wave -noupdate -group SWP /mips_tb/CPU/CU/IF_flush1
add wave -noupdate -group SWP /mips_tb/CPU/CU/IF_flush2
add wave -noupdate -group SWP /mips_tb/CPU/CU/swp_p1
add wave -noupdate -group SWP /mips_tb/CPU/CU/swp_p2
add wave -noupdate -group SWP /mips_tb/CPU/CU/swp_p1_pos
add wave -noupdate -group SWP /mips_tb/CPU/CU/swp_p2_pos
add wave -noupdate -group SWP /mips_tb/CPU/CU/swp
add wave -noupdate -group SWP /mips_tb/CPU/CU/IF_ID_en_p1
add wave -noupdate -group SWP /mips_tb/CPU/CU/IF_ID_en_p2
add wave -noupdate -group SWP /mips_tb/CPU/CU/IF_flush_p2
add wave -noupdate -group SWP /mips_tb/CPU/CU/ID_flush_p1
add wave -noupdate -group SWP /mips_tb/CPU/CU/ID_flush_p2
add wave -noupdate -group SWP /mips_tb/CPU/CU/IF_flush1
add wave -noupdate -group SWP /mips_tb/CPU/CU/IF_flush2
add wave -noupdate -group SWP /mips_tb/CPU/CU/swp_p1
add wave -noupdate -group SWP /mips_tb/CPU/CU/swp_p2
add wave -noupdate -group SWP /mips_tb/CPU/CU/swp_p1_pos
add wave -noupdate -group SWP /mips_tb/CPU/CU/swp_p2_pos
add wave -noupdate -group SWP /mips_tb/CPU/CU/swp
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/NOP_p1
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/NOP_p2
add wave -noupdate -group CntrlSignals /mips_tb/CPU/DP/control_signals_nop_p1
add wave -noupdate -group CntrlSignals /mips_tb/CPU/DP/control_signals_nop_p2
add wave -noupdate -group CntrlSignals /mips_tb/CPU/DP/p1_control_signals
add wave -noupdate -group CntrlSignals /mips_tb/CPU/DP/p2_control_signals
add wave -noupdate -group CntrlSignals /mips_tb/CPU/DP/control_signals_p1
add wave -noupdate -group CntrlSignals /mips_tb/CPU/DP/control_signals_p2
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/control_signals_p1
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/control_signals_p2
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/opcode_p1
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/opcode_p2
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/forwardSrc1_p1
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/forwardSrc2_p1
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/forwardSrc1_p2
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/forwardSrc2_p2
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/bp11
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/bp12
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/bp13
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/bp21
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/bp22
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/bp23
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/jal_en_p1
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/jal_en_p2
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/jal_en
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/NOP_p1
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/NOP_p2
add wave -noupdate -group CntrlSignals /mips_tb/CPU/DP/control_signals_nop_p1
add wave -noupdate -group CntrlSignals /mips_tb/CPU/DP/control_signals_nop_p2
add wave -noupdate -group CntrlSignals /mips_tb/CPU/DP/p1_control_signals
add wave -noupdate -group CntrlSignals /mips_tb/CPU/DP/p2_control_signals
add wave -noupdate -group CntrlSignals /mips_tb/CPU/DP/control_signals_p1
add wave -noupdate -group CntrlSignals /mips_tb/CPU/DP/control_signals_p2
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/control_signals_p1
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/control_signals_p2
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/opcode_p1
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/opcode_p2
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/forwardSrc1_p1
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/forwardSrc2_p1
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/forwardSrc1_p2
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/forwardSrc2_p2
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/bp11
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/bp12
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/bp13
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/bp21
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/bp22
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/bp23
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/jal_en_p1
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/jal_en_p2
add wave -noupdate -group CntrlSignals /mips_tb/CPU/CU/jal_en
add wave -noupdate -group Immediate -radix decimal /mips_tb/CPU/DP/p1_sgn_ext_out
add wave -noupdate -group Immediate -radix decimal /mips_tb/CPU/DP/sgn_ext_out_p2
add wave -noupdate -group Immediate -radix decimal /mips_tb/CPU/DP/sgn_ext_out_p1
add wave -noupdate -group Immediate -radix decimal /mips_tb/CPU/DP/p2_sgn_ext_out
add wave -noupdate -group Immediate -radix decimal /mips_tb/CPU/DP/p1_sgn_ext_out
add wave -noupdate -group Immediate -radix decimal /mips_tb/CPU/DP/sgn_ext_out_p2
add wave -noupdate -group Immediate -radix decimal /mips_tb/CPU/DP/sgn_ext_out_p1
add wave -noupdate -group Immediate -radix decimal /mips_tb/CPU/DP/p2_sgn_ext_out
add wave -noupdate -group ALU_Srcs /mips_tb/CPU/DP/ALU_src_OP2_p1
add wave -noupdate -group ALU_Srcs /mips_tb/CPU/DP/ALU_src_OP2_p2
add wave -noupdate -group ALU_Srcs /mips_tb/CPU/DP/ID_ALU_Src1_L1_p1
add wave -noupdate -group ALU_Srcs /mips_tb/CPU/DP/ID_ALU_Src1_L1_p2
add wave -noupdate -group ALU_Srcs /mips_tb/CPU/DP/ID_ALU_Src2_L1_p1
add wave -noupdate -group ALU_Srcs /mips_tb/CPU/DP/ID_ALU_Src2_L1_p2
add wave -noupdate -group ALU_Srcs /mips_tb/CPU/DP/ID_ALU_Src1_p1
add wave -noupdate -group ALU_Srcs /mips_tb/CPU/DP/ID_ALU_Src1_p2
add wave -noupdate -group ALU_Srcs /mips_tb/CPU/DP/ID_ALU_Src2_p1
add wave -noupdate -group ALU_Srcs /mips_tb/CPU/DP/ID_ALU_Src2_p2
add wave -noupdate -group ALU_Srcs /mips_tb/CPU/DP/ALU_src_OP2_p1
add wave -noupdate -group ALU_Srcs /mips_tb/CPU/DP/ALU_src_OP2_p2
add wave -noupdate -group ALU_Srcs /mips_tb/CPU/DP/ID_ALU_Src1_L1_p1
add wave -noupdate -group ALU_Srcs /mips_tb/CPU/DP/ID_ALU_Src1_L1_p2
add wave -noupdate -group ALU_Srcs /mips_tb/CPU/DP/ID_ALU_Src2_L1_p1
add wave -noupdate -group ALU_Srcs /mips_tb/CPU/DP/ID_ALU_Src2_L1_p2
add wave -noupdate -group ALU_Srcs /mips_tb/CPU/DP/ID_ALU_Src1_p1
add wave -noupdate -group ALU_Srcs /mips_tb/CPU/DP/ID_ALU_Src1_p2
add wave -noupdate -group ALU_Srcs /mips_tb/CPU/DP/ID_ALU_Src2_p1
add wave -noupdate -group ALU_Srcs /mips_tb/CPU/DP/ID_ALU_Src2_p2
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/ID_EX_reg_write_p1
add wave -noupdate -group FU /mips_tb/CPU/DP/ID_EX_reg_write_p1
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/EX_MEM_reg_write_p1
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/MEM_WB_reg_write_p1
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/ID_EX_reg_write_p2
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/EX_MEM_reg_write_p2
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/MEM_WB_reg_write_p2
add wave -noupdate -group FU -radix decimal /mips_tb/CPU/CU/ID_FU_p1/IF_ID_rs_p1
add wave -noupdate -group FU -radix decimal /mips_tb/CPU/CU/ID_FU_p1/IF_ID_rt_p1
add wave -noupdate -group FU -radix decimal /mips_tb/CPU/CU/ID_FU_p1/ID_EX_rw_p1
add wave -noupdate -group FU -radix decimal /mips_tb/CPU/CU/ID_FU_p1/EX_MEM_rd_p1
add wave -noupdate -group FU -radix decimal /mips_tb/CPU/CU/ID_FU_p1/MEM_WB_rd_p1
add wave -noupdate -group FU -radix decimal /mips_tb/CPU/CU/ID_FU_p1/IF_ID_rs_p2
add wave -noupdate -group FU -radix decimal /mips_tb/CPU/CU/ID_FU_p1/IF_ID_rt_p2
add wave -noupdate -group FU -radix decimal /mips_tb/CPU/CU/ID_FU_p1/ID_EX_rw_p2
add wave -noupdate -group FU -radix decimal /mips_tb/CPU/CU/ID_FU_p1/EX_MEM_rd_p2
add wave -noupdate -group FU -radix decimal /mips_tb/CPU/CU/ID_FU_p1/MEM_WB_rd_p2
add wave -noupdate -group FU -radix decimal /mips_tb/CPU/CU/ID_FU_p1/forwardSrc1_p1
add wave -noupdate -group FU -radix decimal /mips_tb/CPU/CU/ID_FU_p1/forwardSrc2_p1
add wave -noupdate -group FU -radix decimal /mips_tb/CPU/CU/ID_FU_p1/forwardSrc1_p2
add wave -noupdate -group FU -radix decimal /mips_tb/CPU/CU/ID_FU_p1/forwardSrc2_p2
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp11
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp12
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp13
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp21
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp22
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp23
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp11_1
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp12_1
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp13_1
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp11_2
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp12_2
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp13_2
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp21_1
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp22_1
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp23_1
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp21_2
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp22_2
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp23_2
add wave -noupdate -group FU /mips_tb/CPU/DP/ID_EX_reg_write_p1
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/ID_EX_reg_write_p1
add wave -noupdate -group FU /mips_tb/CPU/DP/ID_EX_reg_write_p1
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/EX_MEM_reg_write_p1
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/MEM_WB_reg_write_p1
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/ID_EX_reg_write_p2
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/EX_MEM_reg_write_p2
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/MEM_WB_reg_write_p2
add wave -noupdate -group FU -radix decimal /mips_tb/CPU/CU/ID_FU_p1/IF_ID_rs_p1
add wave -noupdate -group FU -radix decimal /mips_tb/CPU/CU/ID_FU_p1/IF_ID_rt_p1
add wave -noupdate -group FU -radix decimal /mips_tb/CPU/CU/ID_FU_p1/ID_EX_rw_p1
add wave -noupdate -group FU -radix decimal /mips_tb/CPU/CU/ID_FU_p1/EX_MEM_rd_p1
add wave -noupdate -group FU -radix decimal /mips_tb/CPU/CU/ID_FU_p1/MEM_WB_rd_p1
add wave -noupdate -group FU -radix decimal /mips_tb/CPU/CU/ID_FU_p1/IF_ID_rs_p2
add wave -noupdate -group FU -radix decimal /mips_tb/CPU/CU/ID_FU_p1/IF_ID_rt_p2
add wave -noupdate -group FU -radix decimal /mips_tb/CPU/CU/ID_FU_p1/ID_EX_rw_p2
add wave -noupdate -group FU -radix decimal /mips_tb/CPU/CU/ID_FU_p1/EX_MEM_rd_p2
add wave -noupdate -group FU -radix decimal /mips_tb/CPU/CU/ID_FU_p1/MEM_WB_rd_p2
add wave -noupdate -group FU -radix decimal /mips_tb/CPU/CU/ID_FU_p1/forwardSrc1_p1
add wave -noupdate -group FU -radix decimal /mips_tb/CPU/CU/ID_FU_p1/forwardSrc2_p1
add wave -noupdate -group FU -radix decimal /mips_tb/CPU/CU/ID_FU_p1/forwardSrc1_p2
add wave -noupdate -group FU -radix decimal /mips_tb/CPU/CU/ID_FU_p1/forwardSrc2_p2
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp11
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp12
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp13
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp21
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp22
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp23
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp11_1
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp12_1
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp13_1
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp11_2
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp12_2
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp13_2
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp21_1
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp22_1
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp23_1
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp21_2
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp22_2
add wave -noupdate -group FU /mips_tb/CPU/CU/ID_FU_p1/bp23_2
add wave -noupdate -group FU /mips_tb/CPU/DP/ID_EX_reg_write_p1
add wave -noupdate -group {DM Memory} /mips_tb/DM/clk
add wave -noupdate -group {DM Memory} /mips_tb/DM/mrd
add wave -noupdate -group {DM Memory} /mips_tb/DM/mwr
add wave -noupdate -group {DM Memory} -radix unsigned /mips_tb/DM/adr
add wave -noupdate -group {DM Memory} /mips_tb/DM/d_in
add wave -noupdate -group {DM Memory} -radix decimal -childformat {{{/mips_tb/DM/d_out[31]} -radix decimal} {{/mips_tb/DM/d_out[30]} -radix decimal} {{/mips_tb/DM/d_out[29]} -radix decimal} {{/mips_tb/DM/d_out[28]} -radix decimal} {{/mips_tb/DM/d_out[27]} -radix decimal} {{/mips_tb/DM/d_out[26]} -radix decimal} {{/mips_tb/DM/d_out[25]} -radix decimal} {{/mips_tb/DM/d_out[24]} -radix decimal} {{/mips_tb/DM/d_out[23]} -radix decimal} {{/mips_tb/DM/d_out[22]} -radix decimal} {{/mips_tb/DM/d_out[21]} -radix decimal} {{/mips_tb/DM/d_out[20]} -radix decimal} {{/mips_tb/DM/d_out[19]} -radix decimal} {{/mips_tb/DM/d_out[18]} -radix decimal} {{/mips_tb/DM/d_out[17]} -radix decimal} {{/mips_tb/DM/d_out[16]} -radix decimal} {{/mips_tb/DM/d_out[15]} -radix decimal} {{/mips_tb/DM/d_out[14]} -radix decimal} {{/mips_tb/DM/d_out[13]} -radix decimal} {{/mips_tb/DM/d_out[12]} -radix decimal} {{/mips_tb/DM/d_out[11]} -radix decimal} {{/mips_tb/DM/d_out[10]} -radix decimal} {{/mips_tb/DM/d_out[9]} -radix decimal} {{/mips_tb/DM/d_out[8]} -radix decimal} {{/mips_tb/DM/d_out[7]} -radix decimal} {{/mips_tb/DM/d_out[6]} -radix decimal} {{/mips_tb/DM/d_out[5]} -radix decimal} {{/mips_tb/DM/d_out[4]} -radix decimal} {{/mips_tb/DM/d_out[3]} -radix decimal} {{/mips_tb/DM/d_out[2]} -radix decimal} {{/mips_tb/DM/d_out[1]} -radix decimal} {{/mips_tb/DM/d_out[0]} -radix decimal}} -subitemconfig {{/mips_tb/DM/d_out[31]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[30]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[29]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[28]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[27]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[26]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[25]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[24]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[23]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[22]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[21]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[20]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[19]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[18]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[17]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[16]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[15]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[14]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[13]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[12]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[11]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[10]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[9]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[8]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[7]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[6]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[5]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[4]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[3]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[2]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[1]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[0]} {-height 15 -radix decimal}} /mips_tb/DM/d_out
add wave -noupdate -group {DM Memory} -radix decimal /mips_tb/DM/mem
add wave -noupdate -group {DM Memory} /mips_tb/DM/clk
add wave -noupdate -group {DM Memory} /mips_tb/DM/mrd
add wave -noupdate -group {DM Memory} /mips_tb/DM/mwr
add wave -noupdate -group {DM Memory} -radix unsigned /mips_tb/DM/adr
add wave -noupdate -group {DM Memory} /mips_tb/DM/d_in
add wave -noupdate -group {DM Memory} -radix decimal -childformat {{{/mips_tb/DM/d_out[31]} -radix decimal} {{/mips_tb/DM/d_out[30]} -radix decimal} {{/mips_tb/DM/d_out[29]} -radix decimal} {{/mips_tb/DM/d_out[28]} -radix decimal} {{/mips_tb/DM/d_out[27]} -radix decimal} {{/mips_tb/DM/d_out[26]} -radix decimal} {{/mips_tb/DM/d_out[25]} -radix decimal} {{/mips_tb/DM/d_out[24]} -radix decimal} {{/mips_tb/DM/d_out[23]} -radix decimal} {{/mips_tb/DM/d_out[22]} -radix decimal} {{/mips_tb/DM/d_out[21]} -radix decimal} {{/mips_tb/DM/d_out[20]} -radix decimal} {{/mips_tb/DM/d_out[19]} -radix decimal} {{/mips_tb/DM/d_out[18]} -radix decimal} {{/mips_tb/DM/d_out[17]} -radix decimal} {{/mips_tb/DM/d_out[16]} -radix decimal} {{/mips_tb/DM/d_out[15]} -radix decimal} {{/mips_tb/DM/d_out[14]} -radix decimal} {{/mips_tb/DM/d_out[13]} -radix decimal} {{/mips_tb/DM/d_out[12]} -radix decimal} {{/mips_tb/DM/d_out[11]} -radix decimal} {{/mips_tb/DM/d_out[10]} -radix decimal} {{/mips_tb/DM/d_out[9]} -radix decimal} {{/mips_tb/DM/d_out[8]} -radix decimal} {{/mips_tb/DM/d_out[7]} -radix decimal} {{/mips_tb/DM/d_out[6]} -radix decimal} {{/mips_tb/DM/d_out[5]} -radix decimal} {{/mips_tb/DM/d_out[4]} -radix decimal} {{/mips_tb/DM/d_out[3]} -radix decimal} {{/mips_tb/DM/d_out[2]} -radix decimal} {{/mips_tb/DM/d_out[1]} -radix decimal} {{/mips_tb/DM/d_out[0]} -radix decimal}} -subitemconfig {{/mips_tb/DM/d_out[31]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[30]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[29]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[28]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[27]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[26]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[25]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[24]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[23]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[22]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[21]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[20]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[19]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[18]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[17]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[16]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[15]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[14]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[13]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[12]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[11]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[10]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[9]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[8]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[7]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[6]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[5]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[4]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[3]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[2]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[1]} {-height 15 -radix decimal} {/mips_tb/DM/d_out[0]} {-height 15 -radix decimal}} /mips_tb/DM/d_out
add wave -noupdate -group {DM Memory} -radix decimal /mips_tb/DM/mem
add wave -noupdate -group ID_EX_P1 /mips_tb/CPU/DP/ID_EX_reg_p1/clk
add wave -noupdate -group ID_EX_P1 /mips_tb/CPU/DP/ID_EX_reg_p1/rst
add wave -noupdate -group ID_EX_P1 /mips_tb/CPU/DP/ID_EX_reg_p1/clr
add wave -noupdate -group ID_EX_P1 /mips_tb/CPU/DP/ID_EX_reg_p1/ld
add wave -noupdate -group ID_EX_P1 /mips_tb/CPU/DP/ID_EX_reg_p1/d_in
add wave -noupdate -group ID_EX_P1 -radix unsigned /mips_tb/CPU/DP/ID_EX_reg_p1/d_out
add wave -noupdate -group ID_EX_P1 /mips_tb/CPU/DP/ID_EX_reg_p1/clk
add wave -noupdate -group ID_EX_P1 /mips_tb/CPU/DP/ID_EX_reg_p1/rst
add wave -noupdate -group ID_EX_P1 /mips_tb/CPU/DP/ID_EX_reg_p1/clr
add wave -noupdate -group ID_EX_P1 /mips_tb/CPU/DP/ID_EX_reg_p1/ld
add wave -noupdate -group ID_EX_P1 /mips_tb/CPU/DP/ID_EX_reg_p1/d_in
add wave -noupdate -group ID_EX_P1 -radix unsigned /mips_tb/CPU/DP/ID_EX_reg_p1/d_out
add wave -noupdate -group ID_EX_P2 /mips_tb/CPU/DP/ID_EX_reg_p2/clk
add wave -noupdate -group ID_EX_P2 /mips_tb/CPU/DP/ID_EX_reg_p2/rst
add wave -noupdate -group ID_EX_P2 /mips_tb/CPU/DP/ID_EX_reg_p2/clr
add wave -noupdate -group ID_EX_P2 /mips_tb/CPU/DP/ID_EX_reg_p2/ld
add wave -noupdate -group ID_EX_P2 -radix unsigned /mips_tb/CPU/DP/ID_EX_reg_p2/d_in
add wave -noupdate -group ID_EX_P2 -radix unsigned /mips_tb/CPU/DP/ID_EX_reg_p2/d_out
add wave -noupdate -group ID_EX_P2 /mips_tb/CPU/DP/ID_EX_reg_p2/clk
add wave -noupdate -group ID_EX_P2 /mips_tb/CPU/DP/ID_EX_reg_p2/rst
add wave -noupdate -group ID_EX_P2 /mips_tb/CPU/DP/ID_EX_reg_p2/clr
add wave -noupdate -group ID_EX_P2 /mips_tb/CPU/DP/ID_EX_reg_p2/ld
add wave -noupdate -group ID_EX_P2 -radix unsigned /mips_tb/CPU/DP/ID_EX_reg_p2/d_in
add wave -noupdate -group ID_EX_P2 -radix unsigned /mips_tb/CPU/DP/ID_EX_reg_p2/d_out
add wave -noupdate -group IF_ID_P1 /mips_tb/CPU/DP/IF_ID_reg_p1/clk
add wave -noupdate -group IF_ID_P1 /mips_tb/CPU/DP/IF_ID_reg_p1/rst
add wave -noupdate -group IF_ID_P1 /mips_tb/CPU/DP/IF_ID_reg_p1/clr
add wave -noupdate -group IF_ID_P1 /mips_tb/CPU/DP/IF_ID_reg_p1/ld
add wave -noupdate -group IF_ID_P1 -radix binary /mips_tb/CPU/DP/IF_ID_reg_p1/d_in
add wave -noupdate -group IF_ID_P1 -radix unsigned /mips_tb/CPU/DP/IF_ID_reg_p1/d_out
add wave -noupdate -group IF_ID_P1 /mips_tb/CPU/DP/IF_ID_reg_p1/clk
add wave -noupdate -group IF_ID_P1 /mips_tb/CPU/DP/IF_ID_reg_p1/rst
add wave -noupdate -group IF_ID_P1 /mips_tb/CPU/DP/IF_ID_reg_p1/clr
add wave -noupdate -group IF_ID_P1 /mips_tb/CPU/DP/IF_ID_reg_p1/ld
add wave -noupdate -group IF_ID_P1 -radix binary /mips_tb/CPU/DP/IF_ID_reg_p1/d_in
add wave -noupdate -group IF_ID_P1 -radix unsigned /mips_tb/CPU/DP/IF_ID_reg_p1/d_out
add wave -noupdate -group IF_ID_P2 /mips_tb/CPU/DP/IF_ID_reg_p2/clk
add wave -noupdate -group IF_ID_P2 /mips_tb/CPU/DP/IF_ID_reg_p2/rst
add wave -noupdate -group IF_ID_P2 /mips_tb/CPU/DP/IF_ID_reg_p2/clr
add wave -noupdate -group IF_ID_P2 /mips_tb/CPU/DP/IF_ID_reg_p2/ld
add wave -noupdate -group IF_ID_P2 /mips_tb/CPU/DP/IF_ID_reg_p2/d_in
add wave -noupdate -group IF_ID_P2 -radix unsigned /mips_tb/CPU/DP/IF_ID_reg_p2/d_out
add wave -noupdate -group IF_ID_P2 /mips_tb/CPU/DP/IF_ID_reg_p2/clk
add wave -noupdate -group IF_ID_P2 /mips_tb/CPU/DP/IF_ID_reg_p2/rst
add wave -noupdate -group IF_ID_P2 /mips_tb/CPU/DP/IF_ID_reg_p2/clr
add wave -noupdate -group IF_ID_P2 /mips_tb/CPU/DP/IF_ID_reg_p2/ld
add wave -noupdate -group IF_ID_P2 /mips_tb/CPU/DP/IF_ID_reg_p2/d_in
add wave -noupdate -group IF_ID_P2 -radix unsigned /mips_tb/CPU/DP/IF_ID_reg_p2/d_out
add wave -noupdate -group HU /mips_tb/CPU/CU/MEMORY_HU_p1/pc_en
add wave -noupdate -group HU /mips_tb/CPU/CU/MEMORY_HU_p1/IF_ID_en
add wave -noupdate -group HU /mips_tb/CPU/CU/MEMORY_HU_p1/ID_EX_memread_p2
add wave -noupdate -group HU /mips_tb/CPU/CU/MEMORY_HU_p1/IF_ID_memread_p2
add wave -noupdate -group HU -radix decimal /mips_tb/CPU/CU/MEMORY_HU_p1/ID_EX_rt_p2
add wave -noupdate -group HU -radix decimal /mips_tb/CPU/CU/MEMORY_HU_p1/IF_ID_rs_p2
add wave -noupdate -group HU -radix decimal /mips_tb/CPU/CU/MEMORY_HU_p1/IF_ID_rt_p2
add wave -noupdate -group HU -radix decimal /mips_tb/CPU/CU/MEMORY_HU_p1/IF_ID_rs_p1
add wave -noupdate -group HU -radix decimal /mips_tb/CPU/CU/MEMORY_HU_p1/IF_ID_rt_p1
add wave -noupdate -group HU /mips_tb/CPU/CU/MEMORY_HU_p1/pc_en
add wave -noupdate -group HU /mips_tb/CPU/CU/MEMORY_HU_p1/IF_ID_en
add wave -noupdate -group HU /mips_tb/CPU/CU/MEMORY_HU_p1/c_or_nop_p1
add wave -noupdate -group HU /mips_tb/CPU/CU/MEMORY_HU_p1/c_or_nop_p2
add wave -noupdate -group HU /mips_tb/CPU/CU/MEMORY_HU_p1/pc_en
add wave -noupdate -group HU /mips_tb/CPU/CU/MEMORY_HU_p1/IF_ID_en
add wave -noupdate -group HU /mips_tb/CPU/CU/MEMORY_HU_p1/ID_EX_memread_p2
add wave -noupdate -group HU /mips_tb/CPU/CU/MEMORY_HU_p1/IF_ID_memread_p2
add wave -noupdate -group HU /mips_tb/CPU/CU/MEMORY_HU_p1/IF_ID_reg_write_p1
add wave -noupdate -group HU -radix decimal /mips_tb/CPU/CU/MEMORY_HU_p1/ID_EX_rt_p2
add wave -noupdate -group HU -radix decimal /mips_tb/CPU/CU/MEMORY_HU_p1/IF_ID_rs_p2
add wave -noupdate -group HU -radix decimal /mips_tb/CPU/CU/MEMORY_HU_p1/IF_ID_rt_p2
add wave -noupdate -group HU -radix decimal /mips_tb/CPU/CU/MEMORY_HU_p1/IF_ID_rs_p1
add wave -noupdate -group HU -radix decimal /mips_tb/CPU/CU/MEMORY_HU_p1/IF_ID_rt_p1
add wave -noupdate -group HU -radix unsigned /mips_tb/CPU/CU/MEMORY_HU_p1/IF_ID_rw_p1
add wave -noupdate -group HU /mips_tb/CPU/CU/MEMORY_HU_p1/pc_en
add wave -noupdate -group HU /mips_tb/CPU/CU/MEMORY_HU_p1/IF_ID_en
add wave -noupdate -group HU /mips_tb/CPU/CU/MEMORY_HU_p1/c_or_nop_p1
add wave -noupdate -group HU /mips_tb/CPU/CU/MEMORY_HU_p1/c_or_nop_p2
add wave -noupdate /mips_tb/CPU/CU/beq_taken
add wave -noupdate /mips_tb/CPU/CU/bne_taken
add wave -noupdate -radix hexadecimal /mips_tb/CPU/DP/inst
add wave -noupdate /mips_tb/CPU/CU/IF_ID_en_p1
add wave -noupdate /mips_tb/CPU/CU/IF_ID_en_p2
add wave -noupdate /mips_tb/CPU/CU/IF_flush_p1_inst
add wave -noupdate /mips_tb/CPU/CU/IF_flush_p1_pc
add wave -noupdate /mips_tb/CPU/CU/IF_flush_p2
add wave -noupdate /mips_tb/CPU/CU/ID_flush_p1
add wave -noupdate /mips_tb/CPU/CU/ID_flush_p2
add wave -noupdate /mips_tb/CPU/DP/swp
add wave -noupdate /mips_tb/clk
add wave -noupdate -radix unsigned /mips_tb/CPU/DP/PC/d_out
add wave -noupdate /mips_tb/CPU/DP/PC_src
add wave -noupdate /mips_tb/CPU/CU/PC_stall
add wave -noupdate -radix decimal /mips_tb/CPU/DP/IF_PC_In
add wave -noupdate -radix decimal /mips_tb/CPU/DP/jump_address
add wave -noupdate /mips_tb/CPU/DP/jump
add wave -noupdate -radix unsigned /mips_tb/CPU/DP/PCplus8
add wave -noupdate -radix decimal /mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/a
add wave -noupdate -radix decimal /mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/b
add wave -noupdate -radix decimal /mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/cin
add wave -noupdate -radix decimal -childformat {{{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[31]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[30]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[29]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[28]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[27]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[26]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[25]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[24]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[23]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[22]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[21]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[20]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[19]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[18]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[17]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[16]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[15]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[14]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[13]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[12]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[11]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[10]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[9]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[8]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[7]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[6]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[5]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[4]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[3]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[2]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[1]} -radix decimal} {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[0]} -radix decimal}} -subitemconfig {{/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[31]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[30]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[29]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[28]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[27]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[26]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[25]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[24]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[23]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[22]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[21]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[20]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[19]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[18]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[17]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[16]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[15]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[14]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[13]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[12]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[11]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[10]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[9]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[8]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[7]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[6]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[5]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[4]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[3]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[2]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[1]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum[0]} {-height 15 -radix decimal}} /mips_tb/CPU/DP/BEQ_ADDRESS_ADDER_p1/sum
add wave -noupdate /mips_tb/CPU/DP/opcode_p1
add wave -noupdate /mips_tb/CPU/DP/opcode_p2
add wave -noupdate /mips_tb/CPU/DP/PC_src
add wave -noupdate /mips_tb/CPU/CU/PC_src_p1
add wave -noupdate /mips_tb/CPU/CU/PC_src_p2
add wave -noupdate /mips_tb/CPU/CU/beq_taken
add wave -noupdate /mips_tb/CPU/CU/bne_taken
add wave -noupdate /mips_tb/CPU/DP/are_equal
add wave -noupdate -radix decimal /mips_tb/CPU/DP/sgn_ext_out_00_p1
add wave -noupdate -radix decimal /mips_tb/CPU/DP/p1_sgn_ext_out
add wave -noupdate -radix decimal /mips_tb/CPU/DP/p2_sgn_ext_out
add wave -noupdate /mips_tb/CPU/CU/beq_taken
add wave -noupdate /mips_tb/CPU/CU/bne_taken
add wave -noupdate -radix hexadecimal /mips_tb/CPU/DP/inst
add wave -noupdate /mips_tb/CPU/CU/IF_ID_en_p1
add wave -noupdate /mips_tb/CPU/CU/IF_ID_en_p2
add wave -noupdate /mips_tb/CPU/CU/IF_flush_p1_inst
add wave -noupdate /mips_tb/CPU/CU/IF_flush_p1_pc
add wave -noupdate /mips_tb/CPU/CU/IF_flush_p2
add wave -noupdate /mips_tb/CPU/CU/ID_flush_p1
add wave -noupdate /mips_tb/CPU/CU/ID_flush_p2
add wave -noupdate /mips_tb/CPU/DP/swp
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {40 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 342
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {3460 ps} {3524 ps}
