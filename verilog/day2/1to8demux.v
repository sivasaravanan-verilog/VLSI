module demux1to8(
  input d,
  input s0,s1,s2,
  output y0,y1,y2,y3,y4,y5,y6,y7,y8);
  wire inv1,inv2,inv3;
  not not1(inv1,s0);
  not not2(inv2,s1);
  not not3(inv3,s2);
  and and1(y0,inv1,inv2,inv3,d);
  and and2(y1,inv3,inv2,s0,d);
  and and3(y2,inv3,s1,inv1,d);
  and and4(y3,inv3,s1,s0,d);
  and and5(y4,s2,inv2,inv1,d);
  and and6(y5,s2,inv2,s0,d);
  and and7(y6,s2,s1,inv1,d);
  and and8(y7,s2,s1,s0,d);
  
endmodule
  
