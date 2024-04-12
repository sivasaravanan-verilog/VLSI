module array;
  int array[5]= {3,6,5,8,7};
  initial begin
    foreach(array[i])
      $display("array[%0d]=%0d",i,array[i]);
  end
endmodule
