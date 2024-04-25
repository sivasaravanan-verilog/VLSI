module fixed_array;
  int a[5]='{1,2,3,4,5};
  int a2[7]= '{3,7,5,6,8,9,4};
  
  int f_sum, f_product;
  initial begin
    f_sum = a2.sum with (item *2);
    $display("sum of the a2 \t %0d",f_sum);
    
    f_product = a.product with (item+2);
    $display("product of a \t%0d",f_product);
    
    
  end
endmodule
