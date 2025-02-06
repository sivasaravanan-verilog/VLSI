module half_sub(
input a,b,
  output B,D);
  
  assign D = a^b;
  assign B = ~a&b;
  
endmodule
