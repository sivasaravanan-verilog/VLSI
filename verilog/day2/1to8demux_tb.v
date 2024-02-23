module demux1to8_tb;
  reg d;
  reg s0,s1,s2;
  wire yo,y1,y2,y3,y4,y5,y6,y7,y8;
  
  demux1to8 mm(.d(d),.s0(s0),.s1(s1),.s2(s2),.y0(y0),.y1(y1),.y2(y2),.y3(y3),.y4(y4),.y5(y5),.y6(y6),.y7(y7));
  
  initial begin
    $dumpfile("demux1to8.vcd");
    $dumpvars(0,demux1to8_tb);
  end
  
  initial begin
      
    d=1'b1;
    s0=1'b0;s1=1'b0;s2=1'b0;
    #10;
    s0=1'b0;s1=1'b0;s2=1'b1;
    #10;
    s0=1'b0;s1=1'b1;s2=1'b0;
    #10;
    s0=1'b0;s1=1'b1;s2=1'b1;
    #10;
    s0=1'b1;s1=1'b0;s2=1'b0;
    #10;
    s0=1'b1;s1=1'b0;s2=1'b1;
    #10;
    s0=1'b1;s1=1'b1;s2=1'b0;
    #10;
    s0=1'b1;s1=1'b1;s2=1'b1;
    #10;
    
    $finish;
    $monitor("time=0%t, d=%b s2=%b s1=%b s0=%b  y0=%b y1=%b y2=%b y3=%b y4=%b y5=%B y6=%B y7=%b", $time,d,s2,s1,s0,y0,y1,y2,y3,y4,y5,y6,y7);
  end
endmodule
