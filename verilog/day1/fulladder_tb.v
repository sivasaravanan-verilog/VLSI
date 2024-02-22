module half_add_tb;
  reg A;
  reg B;
  reg Cin; 
  wire C;
  wire S;
  
  half_add mmt(.A(A),.B(B),.C(C),.S(S));
  
  initial  begin
    $dumpfile("half_add.vcd");
    $dumpvars(0,half_add_tb);
    
    A= 1'B0;B= 1'B0;Cin= 1'B0;
    #10;
    A= 1'B0;B= 1'B0;Cin= 1'B1;
    #10;
    A= 1'B0;B= 1'B1;Cin= 1'B0;
    #10;
    A= 1'B0;B= 1'B1;Cin= 1'B1;
    #10;
    $finish;
    $monitor("time=0%t, A=%d B=%d C=%d S=%d", $time ,A,B,C,S);
  end
endmodule
