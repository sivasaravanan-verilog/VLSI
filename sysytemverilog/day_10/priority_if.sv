module priority_if;
  
  int a;
  bit [3:0] b;
  byte c;
  
  
  initial begin
    priority if ($size(a)==$size(b))begin
      $display("\n a equal to b");
    end
    else if($size(a)>$size(c))begin
      $display("\n a is greater than  c");
      end
    else if ($size(b)>$size(c))begin
      $display("\n b id greater than c");
    end
    $display("\n out of the loop");
  end
endmodule
