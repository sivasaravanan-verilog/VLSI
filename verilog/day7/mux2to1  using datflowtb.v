module mux2to1_tb;
  reg d0,d1,sel;
  wire dout;
  mux2to1 uut(.dout(dout),.sel(sel),.d0(d0),.d1(d1));
  
  initial begin 
    
   
     d0=1'B0;d1=1'B0;
     sel=1'B0;
    #10;
    d0=1'B1;d1=1'B1;
    sel= 1'B1;
    #10;
    $finish;
  end
   initial begin
     $monitor("time=0%t, d0=%b d1=%b sel=%b  dout=%b", $time,d0,d1,sel,dout);
  end
endmodule
    
