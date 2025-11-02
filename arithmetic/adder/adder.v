module adder(input a, input b, input cin, output y, output cout, output overflow);
    assign y = a + b + cin;
    assign cout = (a + b + cin) >> 1;
    assign overflow = (a + b + cin) > 1;
endmodule