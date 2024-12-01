<<<<<<< HEAD


comp: clean
	vcs \
	-sverilog \
	+incdir+${UVM_HOME} \
	${UVM_HOME}/uvm_pkg.sv \
	-f ${AHB_VIP_HOME}/ahb_interface/ahb_interface_filelist.f \
	-f ${AHB_VIP_HOME}/ahb_master/ahb_master_transaction/ahb_master_transaction_filelist.f \
	-f ${AHB_VIP_HOME}/ahb_master/ahb_master_agent_filelist.f \
	-f ${PWD}/filelist.f


clean:
	rm -rf csrc run.log simv.daidir vc_hdrs.h simv
=======
##------------------------------------------------------------------------##
##             Accelver Confidential Information
##             Copyright (c) Accelver Systems Inc
##             All rights reserved.
##
##    This work contains trade secret and proprietary information
##    which is the property of Accelver Systems Inc or its licensors
##    and is subject to license terms. All rights are reserved.
##
##    Information contained in this document will not be copied,
##    reproduced nor its contents revealed to others without the
##    express written permission of Accelver Systems Inc.
##------------------------------------------------------------------------##


## C++ Compiler Options based on Linux OS.
## This is required inorder to compile the uvm_dpi.cc files
GCC = g++
GCC_OPTS += -m32 
GCC_OPTS += -fPIC -g -W -shared
GCC_INCLUDE_PATH_VCS = -I${VCS_HOME}/include
GCC_LIB_DIR  = ${VK_BUILD_DIR}/lib

COMP_OPTS = -timescale=1ns/1ns
COMP_OPTS += -sverilog 
#COMP_OPTS += -full64
COMP_OPTS += +define+VCD_DUMP
#COMP_OPTS += -debug_access+r

RUN_OPTS = +UVM_DEFAULT_TIMEOUT=9200ns
RUN_OPTS += +UVM_VERBOSITY=UVM_MEDIUM
RUN_OPTS += -l ${VK_COMPILE_DIR}/sim.log \
#RUN_OPTS += -gui

TESTNAME = start_counter_test

#-----------------------------------------------------------------------------
compile_dpi:
	mkdir -p $(GCC_LIB_DIR)
	${GCC} ${GCC_OPTS} ${GCC_INCLUDE_PATH_VCS} ${VK_UVM_HOME}/src/dpi/uvm_dpi.cc -o $(GCC_LIB_DIR)/uvm_dpi.so

#-----------------------------------------------------------------------------
compile: compile_dpi
	vcs \
	    $(COMP_OPTS) \
	    +incdir+${VK_UVM_HOME} \
	    +incdir+${VK_AHB_MASTER_VIP_HOME} \
	    -f ${VK_COMPILE_DIR}/filelist.f \
	    $(GCC_LIB_DIR)/uvm_dpi.so 

#----------------------------------------------------------------------------
run:
	./simv \
	    $(RUN_OPTS) \
	    +UVM_TESTNAME=$(TESTNAME)

#----------------------------------------------------------------------------

clean:
	rm -rf build csrc simv.daidir vc_hdrs.h simv  output ucli.key test.vcd test.vcd.vpd sim.log opendatabase.log DVEfiles 
#----------------------------------------------------------------------------


>>>>>>> dc7df3c (adding files from the final session)

