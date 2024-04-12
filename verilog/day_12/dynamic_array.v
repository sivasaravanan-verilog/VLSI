module dynamic_arr;
  int array [];
initial begin
  array = new[7]; 
  array = {3,5,2,4,9,7,1};
  
  foreach(array[i]) $display("array[%0d]=%0d",i,array[i]);
  $display("size of the array=%0d", array.size());
  
  array = new[10] (array);
  
  $display("size of the array=%0d", array.size());
  foreach(array[i]) $display("array[%0d]=%0d",i,array[i]);
  
end
endmodule
  
  
  
  

