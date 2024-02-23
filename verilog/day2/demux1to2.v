module demux1to2(
  input d,
  input s,
  output y0,y1);
  wire inv1;
  not not1(inv1,s);
  and and1(y0,inv1,d);
  and and2(y1,s,d);
endmodule
