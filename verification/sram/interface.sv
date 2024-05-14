interface inter;
  logic[8:0] wdata;
  logic[8:0] addr;
  logic clk;
  logic wen;
  logic[8:0] rdata;
  
  clocking driver_cb@(posedge clk);             // driver cloking block
    default input #1 output #1;
    output addr;
    output wen;
    output wdata;
    output rdata;
  endclocking
  
  clocking monitor_cb@(posedge clk);             // monitor clocking block
    default input #1 output #1;
    input addr;
    input wen;
    input wdata;
    input rdata;
  endclocking
  
  modport DRIVER(clocking driver_cb, input clk);
    
    
  modport MONITOR(clocking monitor_cb, input clk);
endinterface
  
