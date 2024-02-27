module jkff_tb;
  reg j,k,clk,reset;
  wire q,qn;
  
  jkff jkflipflop(.j(j),.k(k),.clk(clk),.reset(reset),.q(q),.qn(qn));
  
 initial begin
   $dumpfile("jkff.vcd");
   $dumpvars(0,jkff_tb);
 end
  initial 
    begin
      $monitor("time=0%t, j=%b k=%b clk=%b reset=%b q=%b qn=%b",$time,j,k,clk,reset,q,qn);
      clk=1;
      
      reset=1;
      j=1'b0;k=1'b0;
      #10 reset =0;
      
   
      // j=1'b0;k=1'b0;
       #20
       j=1'b0;k=1'b1;
       #20
       j=1'b1;k=1'b0;
       #20
       j=1'b1;k=1'b1;
       #150
       $finish;   
   
 end
   
 
  always #20clk=~clk;
     endmodule
