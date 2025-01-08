module ctr_13bit_sync(rst,clk,y); 
    // logic comes here
    input clk,rst;
    output [3:0]y;
    reg [3:0]y=4'b0000;
    always @(posedge clk)
    begin
    if (rst==0)
    y=4'b0000;
    else if (y==4'b0100)
    y=4'b0000;
    else
    y<=y-1;
    end
endmodule


