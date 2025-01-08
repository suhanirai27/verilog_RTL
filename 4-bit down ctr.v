module up_down_cnt(y,ctrl,clk); 
    // logic comes here
    input ctrl,clk;
    output [3:0]y;
    reg [3:0]y=4'b0000;
    always @(posedge clk)
    begin
    if (ctrl==1)
    y=y+1;
    else
    y=y-1;
    end
endmodule
