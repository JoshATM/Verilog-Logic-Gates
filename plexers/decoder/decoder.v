// 8-1 decoder

module decoder(
    input wire [2:0] sel,
    input wire oe,

    output wire a,
    output wire b,
    output wire c,
    output wire d,
    output wire e,
    output wire f,
    output wire g,
    output wire h
);

    assign {h,g,f,e,d,c,b,a} = oe ? (1 << sel) : 8'b0;
    // oe = output enable | if oe is 1, then the output is sel, else all outputs are 0
    // (1 << sel) shifts 1 to the left by the value of sel, creating a binary number with one bit set

    /*
    sel = 0: 1 << 0 = 00000001  // 1 moves to position 1  
    sel = 5: 1 << 5 = 00010000  // 1 moves to position 5
    sel = 3: 1 << 3 = 00001000  // 1 moves to position 3

    it gets shifted by the value of sel
    */

endmodule