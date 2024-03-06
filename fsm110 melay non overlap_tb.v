module mealy_110tb;
 
  reg clk;
  reg reset;
  reg din;
  wire dout1;
  logic [1:0] state;
  logic [1:0] next;
 
  mealy_110 dut (
    .clk(clk),
    .reset(reset),
    .din(din),
    .dout1(dout1),
    .state(state),
    .next(next)
  );
  
  initial begin
    $dumpfile("mealy_110.vcd");
    $dumpvars(1);
  end
  
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end 
  
  initial begin
    din = 0;
    reset = 1;
    #30;
    reset = 0;
    #40;
  
    din = 1;
    #50;

    din = 1;
    #60;

    din = 0;
    #70; 
    $monitor("dout1 = %b din = %b clk = %b reset = %b", dout1, din, clk, reset);
    #400 $finish;
  end
endmodule
