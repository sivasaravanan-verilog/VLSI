module mux2to1_tb;
  reg D0,D1;
  reg S;
  wire Y;
  mux2to1 mm(.D0(D0),.D1(D1),.S(S),.Y(Y));
  initial  begin
    $dumpfile("mux2to1.vcd");
    $dumpvars(0,mux2to1_tb);
  end
  initial begin
    D0=1'B0;D1=1'B0;
    S= 1'B0;
    #10;
    D0=1'B1;D1=1'B1;
    S= 1'B1;
    #10;
    $finish;
  end
    initial begin
    $monitor("time=0%t, D0=%b D1=%b S=%b  Y=%b", $time,D0,D1,S,Y);
  end
endmodule
