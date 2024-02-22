module halfadder(
 input A,
 input B,
 output S,
 output C);
 and(C,A,B);
 xor(S,A,B);
endmodule
 
