<<<<<<< HEAD
+incdir+${DUT_DIR}
=======
>>>>>>> dc7df3c (adding files from the final session)
+incdir+${VK_VERIF_DIR}/env/src/
+incdir+${VK_VERIF_DIR}/testbench/
+incdir+${VK_VERIF_DIR}/test_lib/src/
+incdir+${VK_VERIF_DIR}/ahb_master_basic_sequence_lib/src/
+incdir+${VK_VERIF_DIR}/virtual_sequence_lib/src/
<<<<<<< HEAD
${DUT_DIR}/pcounter.sv
${DUT_DIR}/ahb_enum_types_pkg.sv
${DUT_DIR}/pcounter_ahb_wrapper.sv
${VK_VERIF_DIR}/env/src/ahb_config_pcounter_env_pkg.sv
#${VK_VERIF_DIR}/ahb_master_basic_sequence_lib/src/ahb_master_basic_sequence_pkg.sv
#${VK_VERIF_DIR}/virtual_sequence_lib/src/ahb_config_pcounter_virtual_sequence_pkg.sv
#${VK_VERIF_DIR}/test_lib/src/ahb_config_pcounter_test_pkg.sv
=======

+incdir+${VK_UVM_HOME}/src
${VK_UVM_HOME}/src/uvm.sv

-f ${VK_DUT_HOME}/pcounter/filelist.txt
-f ${VK_AHB_INTERFACE_HOME}/ahb_interface_filelist.f
-f ${VK_AHB_MASTER_VIP_HOME}/ahb_master_transaction/ahb_master_transaction_filelist.f
-f ${VK_AHB_MASTER_VIP_HOME}/ahb_master_agent_filelist.f

${VK_VERIF_DIR}/testbench/ahb_config_pcounter_defines.sv
${VK_VERIF_DIR}/env/src/ahb_config_pcounter_env_pkg.sv
${VK_VERIF_DIR}/ahb_master_basic_sequence_lib/src/ahb_master_basic_sequence_pkg.sv
${VK_VERIF_DIR}/virtual_sequence_lib/src/ahb_config_pcounter_virtual_sequence_pkg.sv
${VK_VERIF_DIR}/test_lib/src/ahb_config_pcounter_test_pkg.sv
>>>>>>> dc7df3c (adding files from the final session)
${VK_VERIF_DIR}/testbench/ahb_config_pcounter_testbench_top.sv
