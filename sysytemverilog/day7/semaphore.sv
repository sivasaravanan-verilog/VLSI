module sema_phore;
  semaphore sem=new(5);
  
  task a;
    sem.get(5);
    $display("process 1 started");
    #5
    $display("process 1 finished");
    sem.put(3);
    
  endtask
  
  task b;
    sem.get(2);
    $display("process 2 started");
    #10
    $display("process 2 finished");
    sem.put(4);
  endtask
  
  initial begin
    fork
      a();
      b();
    join
  end
endmodule
    
