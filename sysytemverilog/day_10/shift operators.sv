module shift_opera;
  bit[3:0] a=1101;
  reg signed [3:0] b=0110;
  
  initial begin
  
    $display("\n after right shifted a=%0b", a>>>1);
    $display("\n after right shifted a=%0b", a>>1);
    $display("\n after right shifted a=%0b", a>>2);
    
    $display("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
    
    $display("\n after signed right shift b=%0b",b<<1);
    $display("\n after signed right shift b=%0b",b<<<1);
    $display("\n after signed right shift b=%0b",b>>1);
    $display("\n after signed right shift a=%0b",b>>>2);
    
  end
  
endmodule
