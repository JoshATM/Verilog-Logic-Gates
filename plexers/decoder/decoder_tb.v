// 8-1 decoder

module decoder_tb;

    reg [2:0] sel;
    reg oe;
    wire a, b, c, d, e, f, g, h;

    decoder uut(.sel(sel), .oe(oe), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .h(h));

    initial begin
        $dumpfile("decoder.vcd");
        $dumpvars(0, decoder_tb);


        sel = 3'b000; oe = 1; #10;
        sel = 3'b001; oe = 1; #10;
        sel = 3'b010; oe = 1; #10;
        sel = 3'b011; oe = 1; #10;
        sel = 3'b100; oe = 1; #10;
        sel = 3'b101; oe = 1; #10;
        sel = 3'b110; oe = 1; #10;
        sel = 3'b111; oe = 1; #10;
        
        sel = 3'b000; oe = 0; #10;
        sel = 3'b001; oe = 0; #10;
        sel = 3'b010; oe = 0; #10;
        sel = 3'b011; oe = 0; #10;
        sel = 3'b100; oe = 0; #10;
        sel = 3'b101; oe = 0; #10;
        sel = 3'b110; oe = 0; #10;
        sel = 3'b111; oe = 0; #10;

        $finish;
    end

endmodule