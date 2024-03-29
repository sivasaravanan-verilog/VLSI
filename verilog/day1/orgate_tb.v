module org_tb;
reg A, B; 
wire Y; 
org orgate(.A(A), .B(B),.Y(Y));
 
initial begin
  $dumpfile("org.vcd");
  $dumpvars(0,org_tb);
  
 A =1'b0;B= 1'b0;
 #10 A =1'b0;B= 1'b1;
 #10 A =1'b1;B= 1'b0;
 #10 A =1'b1;B= 1'b1;
 #10
 $finish;
end
  always @(*)
 $display( "time =%0t \tINPUT VALUES: \t A=%b B =%b \t output value Y =%b",$time,A,B,Y);

endmodule
