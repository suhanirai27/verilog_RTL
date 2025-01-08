module mod6_up_ctr_tb; 
    // logic comes here
    wire [2:0]q;
    reg clk;
    mod6_up_ctr mod6(q,clk);
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
    #110 $stop();
    end
endmodule
