class example;
  integer value;
  
  //constraint c1 { value inside {[10:30]};}
endclass

// class sub extends example;
  
//   constraint c1 {value inside {[30:50]};}
  
// endclass

module tb;
  initial begin 
    repeat(30)begin
      example a = new();
//     sub ex = new();
//       a.randomize();
//     ex.randomize();
      $display("value=%0d",a.value);
  end
  end
endmodule
