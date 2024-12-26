module sync_fifo(
  input clk, rst, wen, ren,
  input [7:0]data,
  output reg [7:0]dout,
  output empty, full);

  reg [3:0]wptr, rptr;                    
                             

reg [7:0] mem [15:0];                       

always @(posedge clk)
begin
	if(rst)                             
	begin
		wptr <= 0;
		rptr <= 0;
		
	end

   if(wen && !full)                
	begin
      mem[wptr] <= data;
		wptr      <= wptr + 1;
	end

   if(ren && !empty)               
	begin
		dout <= mem[rptr];
		rptr <= rptr + 1;
	end

end

  assign empty = (wptr==rptr);    
  assign full  = ((wptr+1)==rptr);

endmodule

