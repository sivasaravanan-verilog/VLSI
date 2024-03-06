module moore_110_tb;
  reg din,clk,rst;
  wire  dout;
  wire [1:0] state,next;
  moore_110 uut(.din,
             .dout,
             .clk,
             .rst,
              .state,.next);
  always begin
    clk = 0;
    #10;
    clk = 1;
    #10;
   
  end
  initial
    begin
      $dumpfile("moore_110.vcd");
      $dumpvars(1);
      $dumpon;
      #400 $dumpoff;
    end
    initial begin
      rst = 1;
      #20;
      rst = 0;
      #20;
      
      
      din = 1; 
      #40;
      din = 1;
      #80;
      din = 0;
      #120;
        $monitor("dout= %b din= %b clk= %b rst= %b",dout,din,clk,rst);
      #2000 $finish;
    
    end 
    endmodule
      
