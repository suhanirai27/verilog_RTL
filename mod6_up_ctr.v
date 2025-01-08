module mod6_up_ctr(q,clk); 
    // logic comes here
    output [2:0]q;
    input clk;
    reg [2:0]q=3'b000;
    always @(posedge clk)
    begin
    if (q==3'b101)
    q=3'b000;
    else
    q<=q+1;
    end
endmodule
