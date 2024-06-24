//class assignment

class  base;
  bit[31:0]G;
endclass;

module assignment;
  initial begin
    base a,b,c,d,e;
    a=new();
    a.G=43;
    b=a;
    c=b;
    d=c;
    e=d;
    $display("door 1=%0b",a.G);
    $display("door 2=%0b",b.G);
  end
endmodule
