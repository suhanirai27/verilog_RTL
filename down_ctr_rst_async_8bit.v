module down_ctr_rst_async_8bit(rst,clk,q); 
    // logic comes here
    output [7:0]q;
    input clk,rst;
    reg [3:0]q=8'b11111111;
    always @ (posedge clk or negedge rst)
    begin
    if (rst==0)
    q=0;
    else
    q<=q-1;
    end
endmodule

