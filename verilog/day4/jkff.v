module jkff(
input j,k,clk,reset,
  output reg q,qn);
 
  
  always@(posedge clk)
    begin
      
    if(reset==1)
      q<=1'b0;
   
  else 
    if(j==1'b0 && k==0)
      q<=1'bx;
  else 
    if (j==1'b0 && k==1'b1)
      q<=1'b0;
  else 
    if (j==1'b1 && k==1'b0)
      q<=1'b1;
  else 
    if (j==1'b1 && k==1'b1)
      q<=qn;
    end
  assign qn=~q;
endmodule
  
  
  
  
      
