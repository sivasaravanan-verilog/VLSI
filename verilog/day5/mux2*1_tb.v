module mux2_1_tb;
  reg sel,d0,d1;
  wire y;
  

  mux2_1 mxx(sel,d0,d1,y);
  
  initial begin
   
    d0 = 0; d1 = 1;
    sel = 0;
    #1;
    sel = 1;
    
   
    #10 $finish;
    
  end
  initial
     $monitor("sel = %b: d0 = %b, d1 = %b y = %b", sel, d0, d1, y);
endmodule
