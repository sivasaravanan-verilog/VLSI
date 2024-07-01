class ABC;

  rand bit [5:0] value1;
  rand bit [6:0] value2;

  constraint c_var {
    if(value1 inside {[3:4]})
      value2 == 1;
    else {
      value2 == 0;}
  }
      endclass
module top;
  initial begin
    int i;
    
    ABC abc; 
    abc = new();
    $display("-----Output for implication constraint-----");
    $display("-------------------------------------------");
    for(int i = 0; i< 10 ; i++) begin
      void'(abc.randomize());
      $display("[%0t] @ iteration %0d -----> value1=%0d , value2=%0d" ,$time,i, abc.value1, abc.value2);
    end
    $display("--------------------------------------------");
  end
endmodule
