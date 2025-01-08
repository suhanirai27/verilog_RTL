module up_ctr_rst_async_tb; 
    // logic comes here
    wire [3:0]q;
    reg clk,rst;
    up_ctr_rst_async up_async(clk,q,rst);
    initial
    begin
    clk=0;
    forever 
    begin
    #5 clk=~clk;
    end
    end
    initial
    begin
    rst=1;
    #13 rst=0;
    #8 rst =1;
    #11 rst=0;
    #20 rst=1;
    #40 rst=0;
    end
    initial
    begin
    #110 $stop();
    end
endmodule
