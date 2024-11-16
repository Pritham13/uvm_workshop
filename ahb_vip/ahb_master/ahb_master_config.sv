////----------------------------------------------------------------------
//// This file has been automatically generated by
//// VerifStudio Software Version 0.63, Accelver Systems Inc.
//// Any modifications that you make to this file may be
//// overwritten by the tool when regenerating the files. 
////----------------------------------------------------------------------

`ifndef AHB_MASTER_CONFIG__SV
`define AHB_MASTER_CONFIG__SV

class ahb_master_config#(AHB_ADDR_WIDTH=16,AHB_DATA_WIDTH=16) extends uvm_object;

    // A virtual handle to the system-verilog virtual interface
    virtual ahb_interface vif ;

    // Configure if the agent is active/passive
    uvm_active_passive_enum is_active ;

    // Register the class ahb_master_config with the factory.
    `uvm_object_param_utils_begin(ahb_master_config#(AHB_ADDR_WIDTH,AHB_DATA_WIDTH))
        `uvm_field_enum(uvm_active_passive_enum, is_active, UVM_ALL_ON)
    `uvm_object_utils_end

    // The Constructor for this Class.
    function new(string name="ahb_master_config");
        super.new(name);
        assign_default_values();
    endfunction: new

    // Declare a function that will assign default values for all the config variables.
    extern virtual function void assign_default_values();

endclass: ahb_master_config


function void ahb_master_config::assign_default_values();

    is_active = UVM_ACTIVE;

endfunction: assign_default_values


`endif