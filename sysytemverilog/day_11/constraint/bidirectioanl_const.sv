class bidre;
  rand bit [4:0] a;
  constraint conc1{a>3;a>15;}
  constraint conc2{a>5;}
endclass
module top;
initial begin
  repeat(10)begin
  bidre bi;
  bi=new();
//   foreach(int i=0;i<20;i++);
  bi.randomize();
  $display("****##############*******");
  $display("value of a = %0d",bi.a);
  end
end
endmodule
  
