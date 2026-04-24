module test1 (
    input clk,
    input rst_n,
    input a,
    input b,
    input c,
    input d,
    output out1,
    output out2
);
    wire n1, n2, n3, n4, n5, q1;

    and u1 (n1, a, b);
    or  u2 (n2, n1, c);
    not u3 (n3, n2);
    buf u4 (n4, d);
    xor u5 (n5, n3, n4);

    dff dff1 (
        .clk(clk),
        .rst_n(rst_n),
        .d(n5),
        .q(q1)
    );

    nand u6 (out1, q1, a);
    nor  u7 (out2, q1, b);

endmodule

module dff (
    input clk,
    input rst_n,
    input d,
    output reg q
);
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            q <= 1'b0;
        else
            q <= d;
    end
endmodule
