`include "uvm_macros.svh"
import uvm_pkg::*;

`include "interface.sv"
`include "test.sv"
module top_tb;
   inter intf();
  test tst;
    bit clk;
  bit rst;
  
  
  sync_fifo(.clk(intf.clk),
            .rst(intf.rst),
            .wen(intf.wen),
            .ren(intf.ren),
            .data(intf.data),
            .dout(intf.dout),
            .empty(intf.empty),
            .full(intf.full));
 
  
  initial begin
    rst=1;
    #7;
    rst=0;
  end
  
  initial begin
//     tst=test::type_id::create("tst",this);
    if(uvm_config_db#(virtual inter)::set(uvm_root::get(),"*","intf",intf));
    $dumpfile("sync_fifo.vcd");
    $dumpvars(0);
  end

  always #5 intf.clk = ~ intf.clk;
  
  initial begin
    run_tst("test");
  end
endmodule
  
  
    
  
  
