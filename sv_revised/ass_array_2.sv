module example;
  
  int array[int];
  
  initial begin
    
    for(int i=0;i<100;i++)begin
      array[i]=i;
      $display("value of array =%0p",i,array[i]);
      $display("size array = %0p",array.size());
      
    end
    
    
  end
    endmodule
