module odd_number(                      // Module declaration named odd_number
  input  [31:0]num);                    // Input port num, 32-bit wide

always @(*)                             // Always block sensitive to any change in input
  begin
    if(num%1==0)                        // Condition to check if num is divisible by
      $display("The number is a odd number",num);    // Display message if num is odd
   end 
endmodule                        
