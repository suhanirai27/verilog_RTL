module ctr_13bit_sync_tb; 
    reg clk,rst;
    wire [3:0]y;
    ctr_13bit_sync ctr_13_rst_sync(rst,clk,y);
    initial
    begin
    clk=0;
    forever
    #5 clk=~clk;
    end
    initial
    begin
    #120 $stop();
    end
    initial
    begin
    rst=1;
    #9 rst=1;
    #11 rst=0;
    #6 rst=1;
    #2 rst=0;
    #17 rst=1;
    end
endmodule


