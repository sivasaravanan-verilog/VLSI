virtual class lenovo;
  bit[15:0]data;
endclass

class samp extends lenovo;
  function void display();
    $display("value of data =%0h",data);
  endfunction
endclass

module example;
  initial begin
    samp s;
    s=new();
    s.data=16;
    s.display();
  end
endmodule
