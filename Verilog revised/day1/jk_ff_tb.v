module tb();
  reg clk,rst,j,k;
  wire q,qbar;
  
  jkff jk(clk,rst,j,k,q,qbar);
  
  always #5 clk = ~clk;
  
  initial begin
    clk=1;
    rst = 1;
    #6;
    rst = 0;
    
    j=0; k=0;
    #2;
    j=0; k=1;
    #2;
    j=1; k=0;
    #4;
    j=1; k=1;
    
    #20 $finish;
  end 
  initial begin
    $monitor("clk=%0b | rst=%0b | j=%0b | k=%0b | q=%0b | qbar=%0b",clk,rst,j,k,q,qbar);
    
    $dumpfile("jkff.vcd");
    $dumpvars();
  end
endmodule
