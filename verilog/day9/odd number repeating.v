module odd_number(
  input [7:0] num
);

always @(*) // Line labeled
begin
  if (num % 2 == 1)
    $display("The number is an odd number: %d", num); 
  else
    $display("The number is not an odd number: %d", num); 
end

endmodule
