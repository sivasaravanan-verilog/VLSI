module mux4to1(
  input D0,
  input D1,
  input D2,
  input D3,
  input S0,
  input S1,
  output reg Y);
  wire a1,a2,a3,a4; // and gate outputs
  wire inv1,inv2; // inverter output
  not not_1(inv1,S0);
  not not_2(inv2,S1);
  and and_1(a1,inv1,inv2,D0);
  and and_2(a2,inv1,S1,D1);
  and and_3(a3,S0,inv2,D2);
  and and_4(a4,S1,S0,D3);
  
  or org(Y,a1,a2,a3,a4);
endmodule
      
