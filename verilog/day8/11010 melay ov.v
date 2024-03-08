module melay_ov_11010(din,
                  clk,
                  reset,
                  present,
                  next,
                  out
                 );
  
  
  input din,
        clk,
        reset;
  
  output out,
         present,
         next;
  
  reg din,
      clk,
      reset;
  
  reg out;
  
  reg[2:0] present,
           next;
  
  parameter [2:0] s0=3'b000,
                  s1=3'b001,
                  s2=3'b010,
                  s3=3'b011,
                  s4=3'b100;
  
  
  always@(posedge clk)
       
    begin
      
      if(reset==1)
        present<=s0;
      
      else
        present<=next;
   
    end
  
  always@(present,din)
    
    begin

      case(present)
        s0:
          begin
          
            if(din==1)
              begin
              next<=s1;
              out=0;
              end
            else
              begin
              next<=s0;
              out=0;
              end
            
          end
        
        s1:
          begin
        
            if(din==1)
               begin
              next<=s2;
               out=0;
            end
            else
              begin
              next<=s0;
              out=0;
              end
            
          end
        
        s2:
          begin
            
            if(din==0)
              begin
              next<=s3;
                 out=0;
            end
            else
              begin
              next<=s1;
                 out=0;
              end
            
          end
        
        s3:
          begin
          
            
            if(din==1)
                begin
              next<=s4;
                 out=0;
            end
            else
              begin
              next<=s0;
                 out=0;
              end
          end
        
        s4:
          begin  
         
            
            if(din==0)
                begin
              next<=s0;
              out=1;
           end
            
            else
              begin
              next<=s2;
              out=1;
              end
          end
            endcase
        end
        endmodule


