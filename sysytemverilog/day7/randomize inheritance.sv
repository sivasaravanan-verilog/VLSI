class packet;
  rand bit[8:0] data;
  constraint data_range{data > 59;}
endclass

class rocket extends packet;
  constraint data_range{data < 178;}
endclass

module example;
  initial begin
  packet pk1,pk2;
  pk1=new();
  pk2=new();
  
  repeat(20) begin
    pk1.randomize();
    $display("value of data range=%0d",pk1.data);
  end
  repeat(20) begin
    pk2.randomize();
    $display("value of data range=%0d",pk2.data);
  end
  end
endmodule
