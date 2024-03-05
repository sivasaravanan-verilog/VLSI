module  up_down_count_tb;
  reg clk,rst,up;
  wire [2:0] cnt;
  up_down_count uut(clk,rst,up,cnt);
  initial begin
    $dumpfile("up_down_count.vcd");
    $dumpvars;
  end
  initial begin
    
    clk = 0; rst = 0; 
    up = 1;
    #4; rst = 1;
    #80;
    rst = 0;
    #4; rst= 1; up = 0;
    #50;
    $finish;
  end 
  always #3 clk= ~clk;
  initial
    $monitor("clk=%b rst=%b up=%b cnt=%b",clk,rst,up,cnt);
endmodule
  
  
  
