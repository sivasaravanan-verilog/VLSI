module fullsub (
    input x, y, z,         
    output D, B);

  wire a, a1, a2, b, x1;  
  
  xor xor1(a, x, y);       
  xor xor2(D, z, a);       
  
  not not1(a, a1);          
  not not2(x1, y);        
  and and1(b, x1, y);      
  and and2(a2, a1, z);    
  
  or or1(B, a2, b);        

endmodule
