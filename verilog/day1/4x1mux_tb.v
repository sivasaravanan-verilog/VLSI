module mux2to1_tb;
  reg D0,D1,D2,D3;
  reg S0,S1;
  wire Y;
  mux2to1 mm(.D0(D0),.D1(D1),.D2(D2),.D3(D3),.S0(S0),.S1(S1),.Y(Y));
  initial  begin
    $dumpfile("mux2to1.vcd");
    $dumpvars(0,mux2to1_tb);
  end
  initial begin
    D0=2'B00;D1=2'B01;D2=2'B11;D3=2'B11;
    S0= 1'B0;S1=1'B0;
    #10;
    S0= 1'B0;S1=1'B1;
    #10;
    S0= 1'B1;S1=1'B0;
    #10;
    S0= 1'B1;S1=1'B1;
    #10;
    $finish;
  end
    initial begin
      $monitor("time=0%t, D0=%b D1=%b D2=%B D3=%B S0=%b S1=%B Y=%b", $time,D0,D1,D2,D3,S0,S1,Y);
  end
endmodule
    
  
