module mealy_110tb;
 
  reg clk;
  reg reset;
  reg din;
  wire dout1;
  wire [1:0] state;
  wire [1:0] next;
 
  mealy_110 dut (
    .clk(clk),
    .reset(reset),
    .din(din),
    .dout1(dout1),
    .state(state),
    .next(next)
  );
  
   initial begin
     din=1;
    reset=1;
    clk=1;
    #5 reset=0;
  end
  initial begin
     #10din=1'b1;
  #10din=1'b1;
  #20din=1'b0;
  #100
    $finish();
     
      end
   initial begin
     $monitor("t=%d clk=%b reset=%b din=%b dout1=%b state=%b next=%b ",$time,clk,reset,din,dout1,state,next);
     $dumpfile("melay_110.vcd");
     $dumpvars(1);
   end
  always #10 clk=~clk;
endmodule
    
