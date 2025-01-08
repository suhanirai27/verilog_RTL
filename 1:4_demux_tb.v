module d1x4_demux_tb; 
    // logic comes here
    wire [3:0]y;
    reg [1:0]s;
    reg i;
    d1x4_demux d1x4_demultiplex(i,s,y);
    initial begin
        i=0;s=2'b00;
        #5i=1;
        #10 s=2'b01;
        #5 i=0;
        #10 s=2'b10;
        #5 i=1;
        #10 s=2'b11;
        #5 i=0;
    end
endmodule
