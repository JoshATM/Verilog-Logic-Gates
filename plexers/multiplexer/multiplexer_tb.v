// 3-8 multiplexer specifically

module multiplexer_tb;

    reg a, b, c, d, e, f, g, h;
    reg [2:0] sel;
    wire y;

    multiplexer uut(.a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .h(h), .sel(sel), .y(y));

    initial begin
        $dumpfile("multiplexer.vcd");
        $dumpvars(0, multiplexer_tb);

        a = 0; b = 1; c = 1; d = 1; e = 0; f = 0; g = 1; h = 0; sel = 3'b000; #10
        a = 1; b = 1; c = 0; d = 1; e = 1; f = 0; g = 1; h = 1; sel = 3'b001; #10
        a = 0; b = 0; c = 1; d = 0; e = 1; f = 1; g = 1; h = 1; sel = 3'b010; #10
        a = 1; b = 0; c = 1; d = 0; e = 0; f = 1; g = 1; h = 0; sel = 3'b011; #10
        a = 1; b = 1; c = 1; d = 0; e = 0; f = 0; g = 0; h = 1; sel = 3'b100; #10
        a = 1; b = 0; c = 0; d = 1; e = 0; f = 0; g = 0; h = 0; sel = 3'b101; #10
        a = 1; b = 0; c = 1; d = 0; e = 0; f = 1; g = 0; h = 1; sel = 3'b110; #10
        a = 0; b = 1; c = 1; d = 0; e = 0; f = 1; g = 0; h = 0; sel = 3'b111; #10
                                // 3 bit values | 'b = binary | what bits are what
        $finish;
    end

endmodule