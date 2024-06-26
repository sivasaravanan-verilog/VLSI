module short_int;
   longint longint_data;
  int int_data;
  byte byte_data;
  real real_data;
  integer integer_data;
  
  shortint shortint_data;
  
  initial begin
    
    longint_data= 8'b00101010;
    int_data=8'b01101011;
    byte_data=8'b10101100;
    real_data=8'b11011100;
    integer_data=8'b10001011;
    
    shortint_data= shortint'(longint_data);
    $display("after casting longint to shortint =%0b",shortint_data);
    
    shortint_data= shortint'(int_data);
    $display("after casting =%0b",shortint_data);
    
    shortint_data= shortint'(byte_data);
    $display("after casting= %0b",shortint_data);
    
    shortint_data= shortint'(real_data);
    $display("after casting= %0b",shortint_data);
    
    shortint_data= shortint'(integer_data);
    $display("after casting=%0b",shortint_data);
    
  end
endmodule
