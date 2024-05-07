class example;
  rand bit[8:0] d;
  constraint cons{ d>5;d<80; }
  function void disp();
    $display("\t value of d=%0d",d);
  endfunction
endclass

module example_ea;
  initial begin

      example ex=new();
    repeat(15) begin
    ex.randomize();
    ex.disp();
    end
  end
endmodule
