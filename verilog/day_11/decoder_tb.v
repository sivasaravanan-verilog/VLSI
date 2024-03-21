module decoder_tb;
  reg a;
  reg b;
  reg c;
  
  wire d0,d1,d2,d3,d4,d5,d6,d7;
  
  decoder uut(.a(a),
              .b(b),
              .c(c),
              .d0(d0),
              .d1(d1),
              .d2(d2),
              .d3(d3),
              .d4(d4),
              .d5(d5),
              .d6(d6),
              .d7(d7)
             );

  initial begin
    
    $dumpfile("decoder.vcd");
    $dumpvars(1,decoder_tb);   
  end
 initial begin
    a = 0;
    b = 1;
    c = 0;
    #100;
    a = 1;
    b = 0;
    c = 1;
    #100;
    $finish;
  end
  always@*
    $monitor("time=%0t \tINPUT VALUES: \t a=%b b=%b c=%b  \t OUTPUT VALUES d0=%b d1=%b d2=%b d3=%b d4=%b d5=%b d6=%b d7=%b",$time,a,b,c,d0,d1,d2,d3,d4,d5,d6,d7);
 
endmodule
