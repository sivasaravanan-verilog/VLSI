module dff_reset_tb;
reg data, clk, reset ;
wire q;
dff_reset dffr (.data(data), .clk(clk), .reset(reset) ,.q(q));
initial begin
  $dumpfile("dff_reset.vcd");
  $dumpvars(0,dff_reset_tb);
    clk=0;
    data = 0;
	reset = 1;
	#5 reset = 0;
	#80 reset = 1;
	$monitor($time, "\tclk=%b\t ,reset=%b\t, data=%b\t, 	q=%b",clk,reset,data,q);
#100 $finish;
end
	always #5 clk = ~clk;
	always #30 data = ~data;
endmodule
