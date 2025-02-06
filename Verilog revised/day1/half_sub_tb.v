module tb();
  reg a,b;
  wire B,D;
  
  
  half_sub sub(.a(a),
               .b(b),
               .D(D),
               .B(B));
  
  initial begin
    
    a=0; b=0;
    #2;
    a=0; b=1;
    #2;
    a=1; b=0;
    #2;
    a=1; b=1;
    
    #20 $finish;
  end
  initial begin
    $monitor("\n\ a=%0b b=%0b B=%0b D=%0d",a,b,B,D);
    $dumpfile("half_sub");
    $dumpvars();
  end
endmodule
