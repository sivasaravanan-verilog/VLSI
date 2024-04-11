module g2b_con #(parameter WIDTH=4) (input [WIDTH-1:0] gray, output [WIDTH-1:0] binary);
 
  genvar i;
  generate
    for(i=0;i<WIDTH;i++) begin
      assign binary[i] = ^(gray >> i);
    end
  endgenerate
endmodule


module Testbench;
  reg [3:0] binary, gray;
  g2b_con g2b(gray, binary);
  
  initial begin
    gray = 4'b1110; #1;
    gray = 4'b0100; #1;
    gray = 4'b0111; #1;
    gray = 4'b1010; #1;
    gray = 4'b1000;
    $monitor("Gray = %b --> Binary = %b", gray, binary);
  end
endmodule
