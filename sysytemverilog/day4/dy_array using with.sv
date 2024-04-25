module fixed_array;
  int a[5]='{1,2,3,4,5};
  int f_sum, f_product;
  initial begin
    f_sum = a.sum with (item *2);
    $display("sum of the a \t %0d",f_sum);
    
    f_product = a.product with (item+2);
    $display("product of a \t%0d",f_product);
  end
endmodule
