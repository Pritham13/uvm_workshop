////----------------------------------------------------------------------
//// This file has been automatically generated by
//// VerifStudio Software Version 0.63, Accelver Systems Inc.
//// Any modifications that you make to this file may be
//// overwritten by the tool when regenerating the files. 
////----------------------------------------------------------------------

`ifndef START_COUNTER_TEST__SV
`define START_COUNTER_TEST__SV

class start_counter_test extends uvm_test;

    // Register the class start_counter_test with the factory.
    `uvm_component_utils(start_counter_test)

    // Declare Handles to the Config Db objects.
    ahb_master_config#(.ADDR_WIDTH(16), .DATA_WIDTH(16)) ahb_master_agent_0_config;

    // Declare a handle to the Environment
    ahb_config_pcounter_env m_env;

    // Declare a handle to the Virtual Sequencer
    ahb_config_pcounter_virtual_sequencer m_vsequencer;

    // Declare virtual Interfaces handles for Masters and Slaves.
    virtual ahb_interface#(.ADDR_WIDTH(16), .DATA_WIDTH(16)) vif_0;

    // The Constructor for this Class.
    function new(string name="start_counter_test", uvm_component parent);
        super.new(name, parent);
    endfunction: new

    // Declare the Build Phase of the Test.
    extern virtual function void build_phase(uvm_phase phase);

    // Declare the Connect Phase of the Test.
    extern virtual function void connect_phase(uvm_phase phase);

    // Declare the End of Elaboration Phase of the Test.
    extern virtual function void end_of_elaboration_phase(uvm_phase phase);

    // Declare the Run Phase of the Test.
    extern task run_phase(uvm_phase phase);

    // Declare a function to set the configuration parameters for the Agents
    extern virtual function void set_config_parameters();

endclass: start_counter_test


// Define the Build Phase of the Environment
function void start_counter_test::build_phase(uvm_phase phase);

    super.build_phase(phase);

    `uvm_info(get_type_name(), "Inside the Build Phase of Test.", UVM_HIGH)

    // Create the Uvm Environment object.
    m_env = ahb_config_pcounter_env::type_id::create("m_env", this);

    // Set the Configuration Parameters for the Agents.
    set_config_parameters();

endfunction: build_phase


// Define the Connect Phase for the Test.
function void start_counter_test::connect_phase(uvm_phase phase);

    // Connect the Virtual sequencer handle to the virtual sequencer created inside the environment.
    m_vsequencer = m_env.virtual_sequencer;

endfunction: connect_phase


// Define the End of Elaboration Phase for the Test.
function void start_counter_test::end_of_elaboration_phase(uvm_phase phase);

    // Print the testbench topology and factory state to verify.
    uvm_top.print_topology();

endfunction: end_of_elaboration_phase


function void start_counter_test::set_config_parameters();

    // Populate the appropriate interface handle in the config object by getting it from the tb_top.
    if(!uvm_config_db#(virtual ahb_interface#(.ADDR_WIDTH(16), .DATA_WIDTH(16)))::get(this, "", "vif_0", vif_0))
    begin
        `uvm_fatal(get_type_name(), "The Interface object has not been set in the tb_top")
    end

    // Configure the config-object values for the agent: ahb_master_agent_0
    ahb_master_agent_0_config = ahb_master_config#(.ADDR_WIDTH(16), .DATA_WIDTH(16))::type_id::create("ahb_master_agent_0_config", this);
    ahb_master_agent_0_config.vif = vif_0;
    ahb_master_agent_0_config.is_active = UVM_ACTIVE;

    // Set the config-object using the uvm_config_db::set() under the agent 'ahb_master_agent_0' scope name.
    uvm_config_db#(ahb_master_config#(.ADDR_WIDTH(16), .DATA_WIDTH(16)))::set(this, "m_env.ahb_master_agent_0*", "master_config_object", ahb_master_agent_0_config);

endfunction: set_config_parameters


task start_counter_test::run_phase(uvm_phase phase);

    // Define a handle to all Virtual Sequences used by the Test.
    write_vseq vseq_0;

    super.run_phase(phase);

    // Create all the Virtual Sequences
    vseq_0 = write_vseq::type_id::create("vseq_0");

    // Raise an Objection.
    phase.raise_objection(.obj(this));

    // Randomize the virtual sequence.
    vseq_0.randomize();

    // Start the Virtual Sequence on the Virtual Sequencer.
    vseq_0.start(m_vsequencer);

    // Drop the Objection.
    phase.drop_objection(.obj(this));

    // Set the Drain Time of the phase.
    phase.phase_done.set_drain_time(this, 750);

endtask : run_phase


`endif
