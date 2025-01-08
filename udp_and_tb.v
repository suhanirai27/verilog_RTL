module udp_and_tb; 
    // logic comes here
    wire y;
    reg a,b;
    udp_and u_and(y,a,b);
    initial
    begin
    a=0; b=1;
    #10 a=0;b=0;
    #10 a=1;
    #10 b=1;
    end
endmodule
