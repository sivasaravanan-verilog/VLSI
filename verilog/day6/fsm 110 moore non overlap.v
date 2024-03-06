module moore_110(clk,rst,din,dout,state,next);
  input clk,rst;
  input din;
  output  reg dout;
  
  parameter [1:0] s0=2'b00,
  s1 = 2'b01,
  s2 = 2'b10,
  s3 =  2'b11;
  
  output reg[1:0] state,next;
  
  always@(posedge clk or posedge rst)
    begin
  if(rst) state<= s0;
     else state <= next;
    end

  always@(state,din)
  begin
  case(state)
    s0: begin
      if(din==1)
        next = s1;
    else
      next =s0;
    end
    
    s1: begin
      if(din==1) next= s2;
     else next = s0;
    end
    
    s2: begin
      if(din==0) next = s3;
          else next = s2;
    end
    
    s3: begin
      if(din==1) next= s1;
    else next = s0;
      end
  endcase
 end
  always@( state)
    begin
      case( state)
        s0: dout<= 1'b0;
        s1: dout<=1'b0;
        s2: dout<=1'b0;
        s3: dout<=1'b1;
      endcase
      end
endmodule
        
  
    
