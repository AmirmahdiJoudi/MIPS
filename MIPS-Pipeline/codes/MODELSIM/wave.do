onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group test_bench /mips_tb/clk
add wave -noupdate -group test_bench /mips_tb/rst
add wave -noupdate -group test_bench /mips_tb/inst_adr
add wave -noupdate -group test_bench /mips_tb/inst
add wave -noupdate -group test_bench /mips_tb/data_adr
add wave -noupdate -group test_bench /mips_tb/data_in
add wave -noupdate -group test_bench /mips_tb/data_out
add wave -noupdate -group test_bench /mips_tb/mem_read
add wave -noupdate -group test_bench /mips_tb/mem_write
add wave -noupdate -group Datapath -radix decimal /mips_tb/CPU/DP/PC/d_out
add wave -noupdate -group Datapath -radix decimal -childformat {{{/mips_tb/CPU/DP/RF/register_file[0]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[1]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[2]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[3]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[4]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[5]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[6]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[7]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[8]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[9]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[10]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[11]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[12]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[13]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[14]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[15]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[16]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[17]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[18]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[19]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[20]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[21]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[22]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[23]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[24]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[25]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[26]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[27]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[28]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[29]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[30]} -radix decimal} {{/mips_tb/CPU/DP/RF/register_file[31]} -radix decimal}} -subitemconfig {{/mips_tb/CPU/DP/RF/register_file[0]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[1]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[2]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[3]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[4]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[5]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[6]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[7]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[8]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[9]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[10]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[11]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[12]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[13]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[14]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[15]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[16]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[17]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[18]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[19]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[20]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[21]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[22]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[23]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[24]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[25]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[26]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[27]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[28]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[29]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[30]} {-height 15 -radix decimal} {/mips_tb/CPU/DP/RF/register_file[31]} {-height 15 -radix decimal}} /mips_tb/CPU/DP/RF/register_file
add wave -noupdate -group Datapath -radix decimal /mips_tb/CPU/DP/ALU/y
add wave -noupdate -group InstMemory /mips_tb/IM/mem
add wave -noupdate -group DataMemory /mips_tb/DM/mem
add wave -noupdate -group ALU -radix decimal /mips_tb/CPU/DP/ALU/a
add wave -noupdate -group ALU -radix decimal /mips_tb/CPU/DP/ALU/b
add wave -noupdate -group ALU /mips_tb/CPU/DP/ALU/ctrl
add wave -noupdate -group ALU -radix decimal /mips_tb/CPU/DP/ALU/y
add wave -noupdate -group ALU /mips_tb/CPU/DP/ALU/zero
add wave -noupdate -group ALU /mips_tb/CPU/DP/ALU/res
add wave -noupdate -group ALU /mips_tb/CPU/DP/ALU/opA
add wave -noupdate -group ALU /mips_tb/CPU/DP/ALU/opB
add wave -noupdate -group ALU /mips_tb/CPU/DP/ALU/ov
add wave -noupdate -group RF /mips_tb/CPU/DP/RF/clk
add wave -noupdate -group RF /mips_tb/CPU/DP/RF/rst
add wave -noupdate -group RF /mips_tb/CPU/DP/RF/reg_write
add wave -noupdate -group RF /mips_tb/CPU/DP/RF/rd_reg1
add wave -noupdate -group RF /mips_tb/CPU/DP/RF/rd_reg2
add wave -noupdate -group RF /mips_tb/CPU/DP/RF/wr_reg
add wave -noupdate -group RF -radix decimal /mips_tb/CPU/DP/RF/wr_data
add wave -noupdate -group RF /mips_tb/CPU/DP/RF/rd_data1
add wave -noupdate -group RF /mips_tb/CPU/DP/RF/rd_data2
add wave -noupdate -group RF /mips_tb/CPU/DP/RF/i
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1518 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 278
configure wave -valuecolwidth 184
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
WaveRestoreZoom {3353 ps} {3529 ps}
