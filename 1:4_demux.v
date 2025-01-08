module d1x4_demux(i,s,y); 
    // logic comes here
    output [3:0]y;
    input i;
    input [1:0]s;
    reg [3:0]y;
    always @(s or i)
    begin
        if (i==0)
        y=4'b0000;        
        else if (s==2'b00)
        y=4'b0000;
        else if(s==2'b01)
        y=4'b0100;
        else if(s==2'b10)
        y=4'b0010;
        else if(s==2'b11)
        y=4'b0001;
        else
        y=4'bxxxx;
    end
endmodule
