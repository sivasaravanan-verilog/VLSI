module example;
  bit[5:0]a;
  int b;
  integer c;
  byte d;

  initial begin 
    repeat(10)begin
    
    std::randomize(a);
    $display("value of a",a);
    
    std::randomize(b,c);
    $display("value of b=%0d | c = %0d",b,c);
    
    std::randomize(d);
    $display("value of d = %0d",d);
  end
  end
endmodule
