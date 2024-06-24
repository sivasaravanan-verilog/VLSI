class ff;
  int data;
  function void display_1();
    $display(" value of data =%0d",data);
  endfunction
endclass

class g extends ff;
  int addr;
  function void display_2();
    $display(" value of addr =%0d,data=%0d",addr,data);
  endfunction
endclass

module example;
  initial begin
   g f_1;
    f_1=new();
    
    f_1.data=5;
    f_1.display_1();
  end
endmodule
    
