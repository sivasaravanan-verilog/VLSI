module mux2to1(
  input D0,
  input D1,
  input S,
  output reg Y);
  wire a1,a2; // and gate outputs
  wire inv1; // inverter output
  not not_1(inv1,S);
  and and_1(a1,inv1,D0);
  and and_2(a2,S,D1);
  or org(Y,a1,a2);
endmodule
