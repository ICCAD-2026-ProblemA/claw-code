module test3 (
    input a,
    input b,
    input c,
    output out1
);
    wire n1, n2, n3, n4, n5;

    and u1 (n1, a, b);
    not u2 (n2, n1);
    buf u3 (n3, n2);
    and u4 (out1, n3, c);

    // Dangling logic
    or  u5 (n4, a, c);
    not u6 (n5, n4);

endmodule
