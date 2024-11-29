////----------------------------------------------------------------------
//// This file has been automatically generated by
//// VerifStudio Software Version 0.63, Accelver Systems Inc.
//// Any modifications that you make to this file may be
//// overwritten by the tool when regenerating the files. 
////----------------------------------------------------------------------

`ifndef AHB_ENUM_PKG__SV
`define AHB_ENUM_PKG__SV

package ahb_enum_pkg;
  typedef enum bit {
    AHB_READ  = 1'b0,
    AHB_WRITE = 1'b1
  } ahb_read_write_enum;

  // Declaring modes for wrap
  typedef enum bit [2:0] {
    AHB_SINGLE = 3'b000,
    AHB_INCR   = 3'b001,
    AHB_WRAP4  = 3'b010,
    AHB_INCR4  = 3'b011,
    AHB_WRAP8  = 3'b100,
    AHB_INCR8  = 3'b101,
    AHB_WRAP16 = 3'b110,
    AHB_INCR16 = 3'b111
  } ahb_burst_type_enum;

  // Declaring modes for the type of transfer
  typedef enum bit [1:0] {
    AHB_IDLE = 2'b00,
    AHB_BUSY = 2'b01,
    AHB_NONSEQ = 2'b10,
    AHB_SEQ = 2'b11
  } ahb_transfer_type_enum;

  // Declaring different types of responses for each transfer
  typedef enum bit [1:0] {
    AHB_OKAY  = 2'b00,
    AHB_ERROR = 2'b01,
    AHB_RETRY = 2'b10,
    AHB_SPLIT = 2'b11
  } ahb_response_type_enum;

  /////////////////////////////may be delted ///////////////////////////////////
  // Declaring different bus reques types to grant 
  typedef enum bit {
    AHB_BUS_REQ_LOW  = 1'b0,
    AHB_BUS_REQ_HIGH = 1'b1
  } ahb_bus_request_types;

  typedef enum bit {
    AHB_REQ_NOT_GRANTED = 1'b0,
    AHB_REQ_GRANTED = 1'b1
  } ahb_bus_grant_req;

  typedef enum bit {
    AHB_NOT_READY = 1'b0,
    AHB_READY = 1'b1
  } ahb_ready_types;

  // Declaring different states of operation  
  typedef enum bit [2:0] {
    s_IDLE  = 3'b000,
    s_ADDR = 3'b001,
    s_READ  = 3'b010,
    s_WRITE = 3'b110,
    s_READY_CHECK = 3'b101

  } ahb_states;

endpackage : ahb_enum_pkg

`endif
