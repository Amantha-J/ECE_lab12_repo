module binary(
    input w, 
    input clk, 
    input reset,
    output z,
    output [2:0]outState
);

    wire [2:0] state;
    wire [2:0] next;
    
    dff zero(
        .D(next[0]),
        .clk(clk),
        .reset(reset),
        .Q(state[0]),
        .Default(1'b0)
    );
    
    dff one(
        .D(next[1]),
        .clk(clk),
        .reset(reset),
        .Q(state[1]),
        .Default(1'b0)
    );
    
    dff two(
        .D(next[2]),
        .clk(clk),
        .reset(reset),
        .Q(state[2]),
        .Default(1'b0)
    );
    
    
    assign next[0] = (state[0] & w) | (state[2] & state[1] & w);
    assign next[1] = (~state[1] & ~state[0] & w) | (state[2] & ~state[1]) | (~state[2] & state[1]);
    assign next[2] = (~state[2] & ~state[1] & ~w) | (~state[0] & ~state[1] & w) | (state[1] & state[2] & ~w) | (~state[0] & ~state[2] & w);
    //(~state[1] & ~state[0] & ~state[2])| (state[1] & state[2] & ~w) | (state[2]& ~state[1] & w) | (state[0] & ~w);
    
    //ignore that they are reversed please
    assign outState[0] = state[2];
    assign outState[1] = state[1];
    assign outState[2] = state[0];
    
    assign z = state[1] & ~state[2] | state[0];
    //(~state[0] & state[1] & ~state[2]) | (state[0] & ~state[1] & ~state[2]) ;
    
endmodule 