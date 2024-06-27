module uniqueif;
bit [4:0] a;  
     int b;
initial begin  
  unique if ($size(a)>$size(b))begin    
       $display ("Inside the unique if block");  
       $display ("The size of a is smaller than b ");  
     end  
     else if ($size(a)==$size(b)) begin   
        $display ("Inside the first else if block");  
        $display ("Size of a = Size of b");  
      end  
      else if ($size(a)>$size(b))begin  
        $display ("Inside the second else if block");  
        $display ("Size of a is greater than the size of b");  
      end  
      $display ("Out from conditional block ");    
      end
endmodule
