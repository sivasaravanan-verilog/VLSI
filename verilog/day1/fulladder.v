module fulladder(
 input A,
 input B,
 input Cin,
 output reg S,
 output reg Cout,
  wire x,y,z);
  half_add h1(.A(A),.B(B),.S(x),.C(y));
  half_add h2(.A(x),.B(Cin),.S(sum),.C(z));
  or(Cout,y,z); 
endmodule
module half_add(
   input A,
   input B,
   output S,
  output C);
   xor(S,A,B);
   and(C,A,B);
 endmodule
