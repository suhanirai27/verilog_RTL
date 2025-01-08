module d_ff_task_tb; 
    // logic comes here
    wire q;
    reg d,clk;
    d_ff_task d1(q,d,clk);
    initial
    begin                                                                   
    d=1;
    #6 d=0;
    #11 d=1;
    #16 d=0;
    end
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
