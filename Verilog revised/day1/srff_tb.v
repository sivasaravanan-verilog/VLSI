module tb();
  reg clk,rst,s,r;
  wire q,qbar;
  
  jkff jk(clk,rst,s,r,q,qbar);
  
  always #5 clk = ~clk;
  
  initial begin
    clk=1;
    rst = 1;
    #6;
    rst = 0;
    
    s=0; r=0;
    #2;
    s=0; r=1;
    #2;
    s=1; r=0;
    #4;
    s=1; r=1;
    
    #20 $finish;
  end 
  initial begin
    $monitor("clk=%0b | rst=%0b | s=%0b | r=%0b | q=%0b | qbar=%0b",clk,rst,s,r,q,qbar);
    
    $dumpfile("jkff.vcd");
    $dumpvars();
  end
endmodule
    
    
    
