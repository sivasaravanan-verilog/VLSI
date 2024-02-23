module demux1to2_tb;
  reg d,s;
  wire y0,y1;
  demux1to2 mm(.d(d),.s(s),.y0(y0),.y1(y1));
  initial begin
    $dumpfile("demux1to2.vcd");
    $dumpvars(0,demux1to2_tb);
  end
  initial begin
    
    d=1'b1;
    s=1'b0;
    #10;
    s=1'b1;
    #10;
    $finish;
    $monitor("time=0%t, d=%b s=%b y0=%b y1=%b", $time,d,s,y0,y1);
  end
endmodule

    
  
    
    
          
