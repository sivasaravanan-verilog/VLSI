module mealy_110(clk,reset,din,dout1,state,next);
  input clk,reset,din;
  output reg dout1;
  output reg[1:0] state,next;

  parameter  [1:0] s0=2'b00,
  s1=2'b01,
  s2=2'b10;
 

  always @(posedge clk) begin
    if(reset==1) begin
      state <= s0;
    end
    else 
       state <= next;
  end
  always @(state or din)
    begin
      case(state)
        s0: begin
          if(din)
            begin
            next = s1;
            dout1 =1'b0;
            end
          else
             next = s0;
            dout1 =1'b0;
        end
        s1: begin
          if(din)
            begin
            next = s2;
            dout1 =1'b0;
            end
          else 
            begin
            next = s0;
            dout1 =1'b0;
            end
        end
        s2: begin
          if(~din)
            begin
             next = s0;
            dout1 =1'b1;
            end
          else 
            dout1 =1'b0;
        end
      endcase
    
  end
endmodule
