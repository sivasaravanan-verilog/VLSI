module down_count(
input clk,rst,
input down,
  output reg[2:0] cnt);
  always@(posedge clk) begin
    if(rst) begin
      cnt= 3'b0;
    end
    else begin
      if(down) cnt<= cnt+1'b1;   
    end
  end
endmodule

      
    
  
