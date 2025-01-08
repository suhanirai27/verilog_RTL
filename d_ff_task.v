module d_ff_task(q,d,clk); 
    // logic comes here
output q;
input d,clk;
reg q;
always@ (posedge clk)
begin
dff (q,d);
end
task dff;
output q;
input d;
begin
q=d;
end
endtask
endmodule
