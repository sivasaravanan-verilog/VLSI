module ex(output bit [7:0]addr);
  initial begin 
    addr <= 10;
  end
endmodule
module testbench(input bit[7:0]addr);
  initial begin
    $display("\t addr = %0d",addr);
  end
endmodule
module tbench;
  wire [7:0] addr;
  ex dut(addr);
  
  testbench test(addr);
endmodule
