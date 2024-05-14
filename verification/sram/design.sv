module sram(
  input clk,
  input [8:0]addr,
  input [8:0]wdata,
  input wen,
  //input wire ren,
  output reg [8:0]rdata);
  
  
  reg [8:0]mem[0:100];
     
  always @(posedge clk)
    begin
       if(wen) begin
          mem[addr]<=wdata;
       end 
      else
        rdata<=mem[addr];
    end
endmodule
