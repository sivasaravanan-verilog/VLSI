module ex(output bit [7:0]addr);
  initial begin 
    addr <= 100;
  end
endmodule
program testbench(input bit[7:0]addr);
  initial begin
    $display("\t addr = %0d",addr);
  end
endprogram
module tbench;
  wire [7:0] addr;
  ex dut(addr);
  
  testbench test(addr);
endmodule
