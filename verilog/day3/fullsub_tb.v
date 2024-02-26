module fullsub_tb;
  reg x, y, z;           
  wire D, B;           
  
  fullsub mm(         
    .x(x),              
    .y(y),              
    .z(z),              
    .D(D),              
    .B(B) );
  
 initial begin
   $dumpfile("fullsub.vcd"); 
   $dumpvars(0,fullsub_tb);  
 end
  
  initial begin
    x = 1'b0;   
    y = 1'b0;    
    z = 1'b0;    
    #20         
    
    x = 1'b0;    
    y = 1'b0;   
    z = 1'b1;   
    #20         
    
    x = 1'b0;  
    y = 1'b1;   
    z = 1'b0;   
    #20          

    x = 1'b0;    
    y = 1'b1;    
    z = 1'b1;   
    #20
    
    x = 1'b1;    
    y = 1'b0;    
    z = 1'b0;    
    #20          

    x = 1'b1;    
    y = 1'b0;    
    z = 1'b1;    
    #20          

    x = 1'b1;    
    y = 1'b1;   
    z = 1'b0;  
    #20         

    x = 1'b1;    
    y = 1'b1;   
    z = 1'b1;   
    #10          

    
    $finish;     
  end
  
  always @(*)
    initial begin
    $monitor("$time=%0t , x=%0b y=%0b z=%0b D=%0b B=%0b",$time, x,y,z,D,B);  
  end
endmodule
