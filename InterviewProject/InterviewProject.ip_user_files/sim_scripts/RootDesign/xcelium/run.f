-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../InterviewProject.srcs/sources_1/bd/RootDesign/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_6 -sv \
  "../../../../InterviewProject.srcs/sources_1/bd/RootDesign/ipshared/dc12/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_8 -sv \
  "../../../../InterviewProject.srcs/sources_1/bd/RootDesign/ipshared/2d50/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RootDesign/ip/RootDesign_processing_system7_0_0/sim/RootDesign_processing_system7_0_0.v" \
  "../../../bd/RootDesign/ipshared/c3e4/hdl/FilterCore.v" \
  "../../../bd/RootDesign/ipshared/c3e4/hdl/SimpleFilter_v1_0_S00_AXI.v" \
  "../../../bd/RootDesign/ipshared/c3e4/hdl/SimpleFilter_v1_0.v" \
  "../../../bd/RootDesign/ip/RootDesign_SimpleFilter_0_0/sim/RootDesign_SimpleFilter_0_0.v" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../InterviewProject.srcs/sources_1/bd/RootDesign/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../InterviewProject.srcs/sources_1/bd/RootDesign/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../InterviewProject.srcs/sources_1/bd/RootDesign/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../InterviewProject.srcs/sources_1/bd/RootDesign/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/lib_fifo_v1_0_14 \
  "../../../../InterviewProject.srcs/sources_1/bd/RootDesign/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../InterviewProject.srcs/sources_1/bd/RootDesign/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../InterviewProject.srcs/sources_1/bd/RootDesign/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_datamover_v5_1_22 \
  "../../../../InterviewProject.srcs/sources_1/bd/RootDesign/ipshared/1e40/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_sg_v4_1_13 \
  "../../../../InterviewProject.srcs/sources_1/bd/RootDesign/ipshared/4919/hdl/axi_sg_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_dma_v7_1_21 \
  "../../../../InterviewProject.srcs/sources_1/bd/RootDesign/ipshared/ec2a/hdl/axi_dma_v7_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RootDesign/ip/RootDesign_axi_dma_0_0/sim/RootDesign_axi_dma_0_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../InterviewProject.srcs/sources_1/bd/RootDesign/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_20 \
  "../../../../InterviewProject.srcs/sources_1/bd/RootDesign/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_19 \
  "../../../../InterviewProject.srcs/sources_1/bd/RootDesign/ipshared/60de/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_21 \
  "../../../../InterviewProject.srcs/sources_1/bd/RootDesign/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RootDesign/ip/RootDesign_xbar_0/sim/RootDesign_xbar_0.v" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../InterviewProject.srcs/sources_1/bd/RootDesign/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RootDesign/ip/RootDesign_rst_ps7_0_100M_0/sim/RootDesign_rst_ps7_0_100M_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RootDesign/ip/RootDesign_xbar_1/sim/RootDesign_xbar_1.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_20 \
  "../../../../InterviewProject.srcs/sources_1/bd/RootDesign/ipshared/c4a6/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RootDesign/ip/RootDesign_auto_pc_0/sim/RootDesign_auto_pc_0.v" \
  "../../../bd/RootDesign/ip/RootDesign_auto_pc_1/sim/RootDesign_auto_pc_1.v" \
  "../../../bd/RootDesign/sim/RootDesign.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

