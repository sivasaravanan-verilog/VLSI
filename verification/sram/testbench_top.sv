`include "s_test.sv"
`include "interface.sv"

module top;
  test ts;
  mailbox mail;
  inter intf();
  
  sram uut(.clk(intf.clk),
           .addr(intf.addr),
           .wdata(intf.wdata),
           .wen(intf.wen),
           .rdata(intf.rdata));
   always #5 intf.clk=~intf.clk;      
    initial begin
      mail=new();
      ts=new(intf,mail);
      fork
        ts.meme;
        ts.runn;
      join
      
    end
          
           initial
             begin
               
             
             intf.clk=1;
             
    
               $monitor("data =%0d,addr=%0d,wen=%0d,rdata=%0d",intf.wdata,intf.addr,intf.wen,intf.rdata);
               $dumpfile("sram.vcd");
               $dumpvars();
              #300 $finish;
             end
           endmodule
