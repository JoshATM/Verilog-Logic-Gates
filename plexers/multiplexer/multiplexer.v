// 3-8 multiplexer specifically

module multiplexer(

    input wire a,
    input wire b,
    input wire c,
    input wire d,
    input wire e,
    input wire f,
    input wire g,
    input wire h,

    input wire [2:0] sel,

    output wire y
);

    assign y = (sel[2] == 1) ? ((sel[1] == 1) ? ((sel[0] == 1) ? h : g) : ((sel[0] == 1) ? f : e)) : ((sel[1] == 1) ? ((sel[0] == 1) ? d : c) : ((sel[0] == 1) ? b : a));
    // sel binary 000-111 (0-7)   |   (x ? y : z) = (if statement ? true : false)
endmodule