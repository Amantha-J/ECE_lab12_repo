module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);

    binary binary(
        .w(sw),
        .clk(btnC),
        .z(led[1]),
        .outState(led[9:7]),
        .reset(btnU)
    );
    
    onehot oneshot(
        .w(sw),
        .clk(btnC),
        .reset(btnU),
        .z(led[0]),
        .outState(led[6:2])
    );

endmodule