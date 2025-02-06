module tb();
  reg a,b,bin;
  wire dout,dout;
  
  
  full_sub sub(a,b,bin,bout,dout);
  
  initial begin
    
    a = 0; b = 0; bin = 0; #1;
    a = 0; b = 0; bin = 1; #1;
    a = 0; b = 1; bin = 0; #1;
    a = 0; b = 1; bin = 1; #1;
    a = 1; b = 0; bin = 0; #1;
    a = 1; b = 0; bin = 1; #1;
    a = 1; b = 1; bin = 0; #1;
    a = 1; b = 1; bin = 1;
    
    #20 $finish;
  end
  initial begin
    $monitor("\n\ a=%0b b=%0b B=%0b D=%0d",a,b,bin,bout,dout);
    $dumpfile("half_sub");
    $dumpvars();
  end
endmodule
