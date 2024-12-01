<<<<<<< HEAD
# Sourcing cshrc for tlcsh

source /home/student/cadWorkDir/myProjects/synopsys/.cshrc

# Path for uvm workshhop 
setenv UVM_HOME "${PWD}/uvm-1.1d/src"


# Path for vip files

setenv AHB_VIP_HOME "${PWD}/ahb_vip"  

setenv VK_HOME  "${PWD}"

setenv VK_VERIF_DIR "${VK_HOME}/verif"

setenv DUT_DIR "${PWD}/dut"

=======
#!/usr/bin/csh

# source the VCS tool

source /home/student/cadWorkDir/synopsys/.cshrc

setenv VK_PROJ_DIR "$PWD"
setenv VK_DUT_HOME "${VK_PROJ_DIR}/dut"
setenv VK_UVM_HOME "${VK_PROJ_DIR}/uvm-1.1d"
setenv VK_VERIF_DIR "${VK_PROJ_DIR}/verif/"
setenv VK_ENV_DIR "${VK_VERIF_DIR}/env/src/"
setenv VK_COMPILE_DIR "${VK_PROJ_DIR}/compile/"
setenv VK_BUILD_DIR "${VK_COMPILE_DIR}/build/"
setenv VK_AHB_VIP_HOME "${VK_PROJ_DIR}/vk_ahb_vip"
setenv VK_AHB_MASTER_VIP_HOME "${VK_AHB_VIP_HOME}/ahb_master"
setenv VK_AHB_INTERFACE_HOME "${VK_AHB_VIP_HOME}/ahb_interface"

#///////////////////aliases///////////////////////////

alias .. cd ..
alias l ls
alias la ls -lah
alias c clear
>>>>>>> dc7df3c (adding files from the final session)
