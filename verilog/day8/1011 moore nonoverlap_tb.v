module moore_1011_tb;
  
  reg din,
      clk,
      reset,
      out;
  
  reg[2:0] present,
           next;
  
  moore_1011 uut(.din(din),
                 .clk(clk),
                  .reset(reset),
                 .out(out),
                 .present(present),
                 .next(next)
                );
  
  initial 
    begin
      
     #30 din=1;
   #20din=0;
   #20din=1;
   #12din=1;
      
    end
  
  initial begin
    
    clk=0;
    #10reset=1;
    #20reset=0;
  
    
  end
  
  always #10 clk=~clk;
  always #150 $finish;
  
  initial
    begin
      
      $monitor("time=%t clk=%b reset=%b din=%b,present state=%b,next state=%b,out=%d",$time,clk,reset,din,present,next,out);
      
    end
 endmodule
