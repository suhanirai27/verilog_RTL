module up_ctr_rst_async(clk,q,rst); 
    // logic comes here
    output [3:0]q;
    input clk,rst;
    reg [3:0]q=3'b001;
    always @ (posedge clk or negedge rst)
    begin
    if (rst==0)
    q=0;
    else
    q<=q+1;
    end
endmodule
