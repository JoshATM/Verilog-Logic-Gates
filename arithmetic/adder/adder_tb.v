`timescale 1ns/1ns

module adder_tb;
    reg a, b, cin;
    wire y, cout, overflow;
    
    adder uut(.a(a), .b(b), .cin(cin), .y(y), .cout(cout), .overflow(overflow));

    initial begin 
        $dumpfile("adder.vcd");
        $dumpvars(0, adder_tb);

        a = 0; b = 0; cin = 0; #10
        a = 0; b = 1; cin = 0; #10
        a = 1; b = 0; cin = 0; #10
        a = 1; b = 1; cin = 0; #10
        a = 0; b = 0; cin = 1; #10
        a = 0; b = 1; cin = 1; #10
        a = 1; b = 0; cin = 1; #10
        a = 1; b = 1; cin = 1; #10

        $finish;
        // finishes the simulation
    end
endmodule