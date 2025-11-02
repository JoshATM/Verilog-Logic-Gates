module not_gate(input [0:0] a, output [0:0] y); // declaring the bit width as 1 bit [MSB : LSB] most significant bit to least significant bit so for 8 bits it would be [7:0]
    assign y = ~a;

endmodule