module sr_ff(
input clk,rst,s,r,
output reg q,
  output qbar);
  
  always@(posedge clk)begin
    if(rst) begin
      q<=0;
    end 
    else begin
      case({s,r})
        2'b00 : q <= q;
        2'b01 : q <= 1'b0;
        2'b10 : q <= 1'b1;
        2'b11 : q <= 1'bx;
      endcase
    end
  end
  assign qbar = ~q;
endmodule
