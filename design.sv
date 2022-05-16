module PRPG(clk,clr,X);
  input clk;
  input clr;
  output X;
  reg[2:0] Q;                       
  assign X=Q[0];                    
always@(negedge clk or posedge clr)
  if(clr)begin
    Q<=3'b1111;                    
  end
  else begin
    Q[1:0]<=Q[2:1];
    Q[2]<=Q[2]+Q[0];
end
endmodule
