module example;
  
  int a[];
  
  initial begin
    a = new[50];
    
//     for(int i=0;i<50;i++)begin
//       a[i]=i;
//     end
    
    
   foreach(a[i])begin
       a[i]=i;
     $display("value of a[%0d] = %0d",i,a[i]);
     
     $display("size of a = %0d",a.size());
     
     a.delete();
     $display("after delete = %0d",a[i]);
  end
  end
endmodule
