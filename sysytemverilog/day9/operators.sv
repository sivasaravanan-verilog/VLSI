module operators;
//   logic [7:0] a,b,c;
//   logic [7:0] y;
  int a,b,c;
  int y;
  initial begin
     a=44;
    b=36;
    c=23;
    
    $display("**********************");
    $display("----operators--------");
    
    y=( (a+b)+c);
    $display("add a, b and c, y=%0d",y);
    
    y=((a-b)-c);
    $display("subb a,  b and c , y=%0d",y);
    
    y=((a*b)*c);
    $display("multiply a b and c, y=%0d",y);
    
    y=a/b;
    $display("divide a and b  y=%0d",y);
    
    y=b%c;
    $display("modulus of b and c  y=%0d",y);
    
    y=a**b;
    $display("after doing above  y=%0d",y);
    
    $display("----- end operators ---------");
    $display("******************************");
  end
  
endmodule
