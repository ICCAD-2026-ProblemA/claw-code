module test4 (
    input  wire a,
    input  wire b,
    input  wire c,
    output wire y,
    output wire z
);
    wire n1, n2;

    and U1 (n1, a, b);
    or  U2 (n2, n1, c);
    not U3 (y, n2);
    buf U4 (z, n1);

endmodule