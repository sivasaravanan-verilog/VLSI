class h;
  static int i;
  function st();
    i++;
    $display("i=%0d",i);
  endfunction
endclass

module svari;
  initial begin
  h h_1;
  h_1=new();  
  h_1.i=5;
  h_1.st();
  end
endmodule
