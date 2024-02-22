module halfadder_tb;
  reg A;
  reg B;
  
  wire C;
  wire S;
  
  halfadder mmt(.A(A),.B(B),.C(C),.S(S));
  
  initial  begin
    $dumpfile("halfadder.vcd");
    $dumpvars(0,halfadder_tb);
    
    A= 1'B0;B= 1'B0;
    #10;
    A= 1'B0;B= 1'B1;
    #10;
    A= 1'B1;B= 1'B0;
    #10;
    A= 1'B1;B= 1'B1;
    #10;
    $finish;
    $monitor("time=0%t, A=%d B=%d C=%d S=%d", $time ,A,B,C,S);
  end
endmodule

  
  
