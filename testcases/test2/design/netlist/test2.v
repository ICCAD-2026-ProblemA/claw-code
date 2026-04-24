module test2 (
    input clk,
    input rst_n,
    input [7:0] data_in,
    input en,
    output [7:0] data_out
);
    wire [7:0] q_bus;
    wire [7:0] d_bus;
    wire en_buf;

    buf u_en (en_buf, en);

    and u0 (d_bus[0], data_in[0], en_buf);
    and u1 (d_bus[1], data_in[1], en_buf);
    and u2 (d_bus[2], data_in[2], en_buf);
    and u3 (d_bus[3], data_in[3], en_buf);
    and u4 (d_bus[4], data_in[4], en_buf);
    and u5 (d_bus[5], data_in[5], en_buf);
    and u6 (d_bus[6], data_in[6], en_buf);
    and u7 (d_bus[7], data_in[7], en_buf);

    dff dff0 (.clk(clk), .rst_n(rst_n), .d(d_bus[0]), .q(q_bus[0]));
    dff dff1 (.clk(clk), .rst_n(rst_n), .d(d_bus[1]), .q(q_bus[1]));
    dff dff2 (.clk(clk), .rst_n(rst_n), .d(d_bus[2]), .q(q_bus[2]));
    dff dff3 (.clk(clk), .rst_n(rst_n), .d(d_bus[3]), .q(q_bus[3]));
    dff dff4 (.clk(clk), .rst_n(rst_n), .d(d_bus[4]), .q(q_bus[4]));
    dff dff5 (.clk(clk), .rst_n(rst_n), .d(d_bus[5]), .q(q_bus[5]));
    dff dff6 (.clk(clk), .rst_n(rst_n), .d(d_bus[6]), .q(q_bus[6]));
    dff dff7 (.clk(clk), .rst_n(rst_n), .d(d_bus[7]), .q(q_bus[7]));

    buf o0 (data_out[0], q_bus[0]);
    buf o1 (data_out[1], q_bus[1]);
    buf o2 (data_out[2], q_bus[2]);
    buf o3 (data_out[3], q_bus[3]);
    buf o4 (data_out[4], q_bus[4]);
    buf o5 (data_out[5], q_bus[5]);
    buf o6 (data_out[6], q_bus[6]);
    buf o7 (data_out[7], q_bus[7]);

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
