module  down_count_tb;
  reg clk,rst,down;
  wire [2:0] cnt;
  down_count uut(clk,rst,down,cnt);
  initial begin
    $dumpfile("up_count.vcd");
    $dumpvars;
  end
  initial begin
    
    clk = 0; rst = 0; 
    down = 1;
    #2; rst = 1;
    #4;
    rst = 0;
    #80; rst= 1; down = 0;
    #10;
   #30 $finish;
  end 
  always #3 clk= ~clk;
  initial
    $monitor("clk=%b rst=%b down=%b cnt=%b",clk,rst,down,cnt);
endmodule
  
  
  
