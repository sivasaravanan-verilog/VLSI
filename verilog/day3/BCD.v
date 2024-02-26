module bcd2bin (
    input [3:0] bcd3, bcd2, bcd1, bcd0, 
  output reg [13:0] bin               
);

    
    xor x1 (bin[3], bcd3, bcd2);        
    xor x2 (bin[2], bin[3], bcd1);       
    xor x3 (bin[1], bin[2], bcd0);       
    xor x4 (bin[0], bin[1], 0);         

endmodule
