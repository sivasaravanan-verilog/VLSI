module up_down_count(
input clk,rst,
input up,
  output reg[2:0] cnt);
  always@(posedge clk) begin
    if(rst) begin
      cnt= 3'b0;
    end
    else begin
      if(up) cnt<= cnt+1'b1;
        else cnt<= cnt-1'b1;
    end
  end
endmodule

      
