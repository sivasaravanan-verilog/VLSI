module  up_count_tb;
  reg clk,rst,up;
  wire [2:0] cnt;
  up_count uut(clk,rst,up,cnt);
  initial begin
    $dumpfile("up_count.vcd");
    $dumpvars;
  end
  initial begin
    
    clk = 0; rst = 0; 
    up = 1;
    #2; rst = 1;
    #4;
    rst = 0;
    #80; rst= 1; up = 0;
    #10;
   #30 $finish;
  end 
  always #3 clk= ~clk;
  initial
    $monitor("clk=%b rst=%b up=%b cnt=%b",clk,rst,up,cnt);
endmodule
  
  
  
