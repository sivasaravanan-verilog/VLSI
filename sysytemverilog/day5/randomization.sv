class example;
  rand bit[3:0] d;
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
  
