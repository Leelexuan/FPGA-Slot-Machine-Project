set projDir "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/vivado"
set projName "slot_machine_2"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/au_top_0.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/output_hex_converter_1.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/reset_conditioner_2.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/multi_seven_seg_3.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/datapath_4.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/edge_detector_5.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/button_conditioner_6.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/counter_7.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/seven_segment_8.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/decoder_9.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/registers_10.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/led_looper_a_11.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/control_unit_12.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/matrix_led_driver_13.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/random_number_start_14.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/rom_15.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/alu_16.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/final_outputs_17.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/score_calculation_18.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/pipeline_19.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/counter_20.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/counter_21.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/counter_22.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/counter_23.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/modulus_24.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/counter_25.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/edge_detector_26.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/counter_27.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/counter_28.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/pn_gen_29.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/adder_30.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/boolean_31.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/shifter_32.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/comparator_33.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/multiplier_34.v" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/verilog/floor_division_35.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/work/constraint/custom.xdc" "C:/Users/Lee\ Le\ Xuan/OneDrive/Documents/SUTD\ Term\ 4/Computation\ Structures/FPGA/slot_machine_2/constraint/filename.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 16
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 16
wait_on_run impl_1
