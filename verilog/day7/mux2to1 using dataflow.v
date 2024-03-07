module mux2to1(
d0, 
d1,
sel, 
dout);

input d0, d1, sel;
output dout;
wire  dout;
  
assign dout = (sel) ? d1 : d0;

endmodule
  
