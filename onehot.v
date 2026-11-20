module onehot (
    input w, clk, reset,
    output z,
    output [4:0]outState
);
    wire Bnext, Cnext, Dnext, Enext;
    wire Astate, Bstate, Cstate, Dstate, Estate;
    
    dff Adff (
        .Default(1'b1),
        .D(1'b0),
        .clk(clk),
        .reset(reset),
        .Q(Astate)
    );

    dff Bdff (
        .Default(1'b0),
        .D(Bnext),
        .clk(clk),
        .reset(reset),
        .Q(Bstate)
    );
    
    dff Cdff (
        .Default(1'b0),
        .D(Cnext),
        .clk(clk),
        .reset(reset),
        .Q(Cstate)
    );
    
    dff Ddff (
        .Default(1'b0),
        .D(Dnext),
        .clk(clk),
        .reset(reset),
        .Q(Dstate)
    );
    
    dff Edff (
        .Default(1'b0),
        .D(Enext),
        .clk(clk),
        .reset(reset),
        .Q(Estate)
    );
    
    assign z = Cstate | Estate;
    
    assign Bnext = ~w & (Astate | Dstate | Estate);
    assign Cnext = ~w & (Bstate | Cstate);
    assign Dnext = w & (Astate | Bstate | Cstate);
    assign Enext = w & (Dstate | Estate);
    
    assign outState[0] = Astate;
    assign outState[1] = Bstate;
    assign outState[2] = Cstate;
    assign outState[3] = Dstate;
    assign outState[4] = Estate;

endmodule