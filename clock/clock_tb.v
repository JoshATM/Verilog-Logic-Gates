module clock_tb;
    reg clk;

    initial begin
        $dumpfile("clock.vcd");
        $dumpvars(0, clock_tb);
    end

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        #250 $finish; // wait 100 nanoseconds and then stop
    end

endmodule