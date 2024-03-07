module mux4to1_tb;
  reg a,b,c,d,s0,s1;
  wire out;
  mux4to1 uut(.out(out),.s0(s0),.s1(s1),.a(a),.b(b),.c(c),.d(d));
  
  initial begin

    s1 = 0; s0 = 0;
    a = 1; b = 0; c = 0; d = 0;
    #10;
    

    s1 = 0; s0 = 1;
    a = 0; b = 1; c = 0; d = 0;
    #10;
    
    s1 = 1; s0 = 0;
    a = 0; b = 0; c = 1; d = 0;
    #10;
    
   
    s1 = 1; s0 = 1;
    a = 0; b = 0; c = 0; d = 1;
    #10;
    $finish;
  end
   initial begin
     $monitor("time=0%t, a=%b b=%b c=%b d=%b s0=%b s1=%b out=%b", $time,a,b,c,d,s0,s1,out);
  end
endmodule
    
