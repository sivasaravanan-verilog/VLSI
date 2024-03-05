module mux2_1(
  input sel,d0,d1,
  output y);
  assign y= sel? d0 : d1;
endmodule
