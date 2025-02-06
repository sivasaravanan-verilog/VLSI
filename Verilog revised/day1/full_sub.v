module half_sub(
input a,b,
  output B,D);
  
  assign D = a^b;
  assign B = ~a&b;
  
endmodule


module full_sub(
input a,b,bin,
  output bout,dout);
  wire x,y,z;
  
  half_sub hs1(a,b,x,y);
  half_sub hs2(x,bin,dout,z);
  
  assign bout = y|z;
  
  
endmodule
