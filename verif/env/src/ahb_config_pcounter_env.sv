////----------------------------------------------------------------------
//// This file has been automatically generated by
//// VerifStudio Software Version 0.63, Accelver Systems Inc.
//// Any modifications that you make to this file may be
//// overwritten by the tool when regenerating the files. 
////----------------------------------------------------------------------

`ifndef AHB_CONFIG_PCOUNTER_ENV__SV
`define AHB_CONFIG_PCOUNTER_ENV__SV

class ahb_config_pcounter_env extends uvm_env;

    // Register the class ahb_config_pcounter_env with the factory.
    `uvm_component_utils(ahb_config_pcounter_env)

    // Declare handles to the Master Agents in the Environment.
<<<<<<< HEAD
    ahb_master_agent#(.ADDR_WIDTH(32), .DATA_WIDTH(32)) ahb_master_agent_0;
=======
    ahb_master_agent#(.ADDR_WIDTH(16), .DATA_WIDTH(16)) ahb_master_agent_0;
>>>>>>> dc7df3c (adding files from the final session)

    // Declare a handle to the Virtual Sequencer.
    ahb_config_pcounter_virtual_sequencer virtual_sequencer;

    // The Constructor for this Class.
    function new(string name="ahb_config_pcounter_env", uvm_component parent);
        super.new(name, parent);
    endfunction: new

    // Declare the Build Phase of the Environment.
    extern virtual function void build_phase(uvm_phase phase);

    // Declare the Connect Phase of the Environment.
    extern virtual function void connect_phase(uvm_phase phase);

endclass: ahb_config_pcounter_env


// Define the Build Phase of the Environment
function void ahb_config_pcounter_env::build_phase(uvm_phase phase);

    super.build_phase(phase);

    `uvm_info(get_type_name(), "Inside the Build Phase of Environment.", UVM_HIGH)

    // Build the Master Agents and the Slave Agents.
<<<<<<< HEAD
    //Fix me: Please Put your logic here 
    ahb_master_agent_0 =  ahb_master_agent#(.ADDR_WIDTH(32), .DATA_WIDTH(32))::type_id::create("ahb_master_agent_0", this);

    // Build the Virtual Sequencer object.
    //Fix me: Please Put your logic here 
    virtual_sequencer =  ahb_config_pcounter_virtual_sequencer::type_id::create(" virtual_sequencer", this);

=======
    ahb_master_agent_0 = ahb_master_agent#(.ADDR_WIDTH(16), .DATA_WIDTH(16))::type_id::create("ahb_master_agent_0", this);

    // Build the Virtual Sequencer object.
    virtual_sequencer = ahb_config_pcounter_virtual_sequencer::type_id::create("virtual_sequencer", this);
>>>>>>> dc7df3c (adding files from the final session)

endfunction: build_phase


// Define the Connect Phase of the Environment
function void ahb_config_pcounter_env::connect_phase(uvm_phase phase);

    super.connect_phase(phase);

    // Connect the sub sequencers in the virtual sequencer to the respective agent's sequencer.
<<<<<<< HEAD
    //Fix me: Please Put your logic here
=======
>>>>>>> dc7df3c (adding files from the final session)
    virtual_sequencer.ahb_master_sequencer_0 = ahb_master_agent_0.master_sequencer;

endfunction: connect_phase


`endif
