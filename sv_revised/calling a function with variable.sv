module example;
  
  function int abc(input int val1,val2,val3);
    return val1+val2+val3;
  endfunction
  
  initial begin
    
    int out,val1=10,val2=20,val3=30;
    out=abc(val1,val2,val3);
    $display("value of out",out);
  end
endmodule
  
