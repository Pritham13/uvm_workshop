
////----------------------------------------------------------------------
//// This file has been automatically generated by
//// VerifStudio Software Version 0.23_Beta, Accelver Systems Inc.
//// Any modifications that you make to this file may be
//// overwritten by the tool when regenerating the files. 
////----------------------------------------------------------------------

module clock_generator #(parameter int TIME_PERIOD = 10)(output logic clk_out);

    initial
        begin
           clk_out = 1'b1;
        
        
        forever
        begin
            // AFTER EVERY 10 CLOCK UNITS, TOGGLE THE CLOCK SIGNAL.
            #(TIME_PERIOD/2); clk_out = ~clk_out;
        end
    end

endmodule : clock_generator
