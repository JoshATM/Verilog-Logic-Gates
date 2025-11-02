`timescale 1ns/1ns

module and_gate_tb;
    input reg a, b; // reg - a controllable signal (input)
    output wire y; // wire - a signal driven by a module (output of the gate)

    and_gate uut(.a(a), .b(b), .y(y));
    // and_gate - module name
    // uut - Unit Under Test
    // .a(a) - syntax maps the module's a input to the testbench's a signal


    initial begin
        // initial begin...end - runs this block once when the simulation starts
        
        $dumpfile("and_gate.vcd");
        $dumpvars(0, and_gate_tb);
        // dumpfile and dumpvars - tells icarus verilog to output a signal data for GTKWave

        a = 0; b = 0; #10
        a = 0; b = 1; #10
        a = 1; b = 0; #10
        a = 1; b = 1; #10
        // truth table inputs
        // #10 - wait 10 nanoseconds before the next input change

        $finish;
        // finishes the simulation
    end
endmodule