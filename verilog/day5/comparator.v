module comparator(
  input [3:0] a, b,
  output reg a_grt_b, a_less_b, a_equ_b);
  
  always@(*) begin
    a_grt_b = 0; a_less_b = 0; a_equ_b = 0;
    if(a>b) a_grt_b = 1'b1;
    else if(a<b) a_less_b = 1'b1;
    else a_eq_b = 1'b1;
  end
endmodule


module tb;
  reg [3:0] a, b;
  wire a_grt_b, a_less_b, a_equ_b;
  
  comparator comp(a, b, a_grt_b, a_less_b, a_eq_b);
  
  initial begin
    $monitor("a = %0h, b = %0h -> a_grt_b = %0b, a_less_b = %0b, a_equ_b = %0b", a, b, a_grt_b, a_less_b, a_equ_b);
    repeat(5) begin
      a=$random; b=$random; #1;
    end
  end
endmodule
