////----------------------------------------------------------------------
//// This file has been automatically generated by
//// VerifStudio Software Version 0.63, Accelver Systems Inc.
//// Any modifications that you make to this file may be
//// overwritten by the tool when regenerating the files. 
////----------------------------------------------------------------------

`ifndef AHB_CONFIG_PCOUNTER_TESTBENCH_TOP__SV
`define AHB_CONFIG_PCOUNTER_TESTBENCH_TOP__SV

`include "clock_generator.sv"
`include "reset_generator.sv"
//`include "ahb_config_pcounter_defines.sv"

module ahb_config_pcounter_testbench_top();

    import uvm_pkg::*;
//    import ahb_config_pcounter_test_pkg::*;
    import ahb_enum_pkg::*;
//    import pcounter_ahb_wrapper::*;
    import ahb_master_transaction_pkg::*;
    import ahb_master_agent_pkg::*;

    typedef enum bit {ACTIVE_LOW=1'b0, ACTIVE_HIGH=1'b1} rst_polarity_enum;

    // Declare all the Nets used at the Top Level.
    wire  clk_sig_0;
    wire  rst_sig_0;

    // Instantiate the Actual HardWare Interfaces.
    // Fix me: Please Put your your logic here
    ahb_interface#(.ADDR_WIDTH(32),.DATA_WIDTH(32)) ahb_slave_interface(.clk(clk_sig_0),.rst(rst_sig_0));

    virtual ahb_interface#(.ADDR_WIDTH(32),.DATA_WIDTH(32)) vif_0 ;

    
    // Instantiate the virtual interface
    // Fix me: Please Put your your logic here

    // Instantiate the Hardware Components
    //Fix me: Please Put your your logic here
    pcounter_ahb_wrapper dut(
    .hclk       (ahb_slave_interface.HCLK),
    .hreset_n   (ahb_slave_interface.HRESETn),
    .hready_in  (ahb_slave_interface.HREADY_IN),
    .haddr      (ahb_slave_interface.HADDR),
    .hwdata     (ahb_slave_interface.HWDATA),
    .hrdata     (ahb_slave_interface.HRDATA),
    .hwrite     (ahb_slave_interface.HWRITE),
    .hresp      (ahb_slave_interface.HRESP),
    .htrans     (ahb_slave_interface.HTRANS),
    .hburst     (ahb_slave_interface.HBURST),
    .hsize      (ahb_slave_interface.HSIZE),
    .hready     (ahb_slave_interface.HREADY),
    .hsel       (ahb_slave_interface.HSEL),
    .hprot      (ahb_slave_interface.HPROT)
    );

    clock_generator#(.TIME_PERIOD(10)) clk_gen_inst_0();

    reset_generator#(.POWER_ON_DELAY(15), .POLARITY(ACTIVE_LOW)) rst_gen_inst_0();



    // "ahb_slave_interface(AHB)" Interface Port-Mappings to Input Ports on the Instance "dut"
    //Fix me: Please Put your your logic here

    // "ahb_slave_interface(AHB)" Interface Port-Mappings to Output Ports on the Instance "dut"
    //Fix me: Please Put your your logic here

    // Adhoc/Net Connections to Output Ports of the Instance "clk_gen_inst_0"
    assign clk_sig_0 = clk_gen_inst_0.clk_out;

    // Adhoc/Net Connections to Input Ports of the Instance "rst_gen_inst_0"
    assign rst_gen_inst_0.clk_in = clk_sig_0;

    // Adhoc/Net Connections to Output Ports of the Instance "rst_gen_inst_0"
    assign rst_sig_0 = rst_gen_inst_0.rst_out;

    initial
    begin
        // Assigning the SV interface to virtual interface variable
        //Fix me: Please Put your your logic here
	vif_0 = ahb_slave_interface;

        // Set the virtual interfaces to the config db
        uvm_config_db#(virtual ahb_interface#(.ADDR_WIDTH(32), .DATA_WIDTH(32)))::set(uvm_root::get(), "*", "vif_0",vif_0);

`ifdef VCD_DUMP

        // ------------------------------------
        // To dump the waveform in vcd format..
        // ------------------------------------

        // Enable VCD Dump of top-module and all sub-modules
        $dumpfile("test.vcd");
        $dumpvars(0, ahb_config_pcounter_testbench_top);

`endif // `ifdef VCD_DUMP

`ifdef FSDB_DUMP

        // -------------------------------------
        // To dump the waveform in fsdb format..
        // -------------------------------------

        // Enable FSDB Dump of the top-module and all the variables in
        // all lower level modules instantiated by this top module
        $fsdbDumpvars(0, ahb_config_pcounter_testbench_top);

`endif // `ifdef FSDB_DUMP

        run_test();

    end

endmodule : ahb_config_pcounter_testbench_top

`endif
