module example;
  int array [string];
  string id;
  
  initial begin
    array = '{"ball":10,"bags":20,"notes":30};
    
    $display("value of array=%0p",array);
    
   
   // array.num();
    $display("no of array = %0p",array.num());
    
    //array.size();
    $display("value of array = %0p",array.size());
    
    array.first(id);
    $display("value of first index = %0s",id);
    
    array.last(id);
    $display("value of last index = %0s",id);
    
    if (array.exists(20)) $display("yes");
    else $display("no");
      
    array.delete();
    $display("deleted",array);
 //   $displaY("valiue of first index=%op",array);
    
  end
endmodule
