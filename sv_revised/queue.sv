module example;
  int queue[$];
  
  initial begin;
    
    for(int i;i<20;i++)begin
      queue[i]=i;
      $display("value of queue = %0p",queue[i]);
    end
      queue.push_front(55);
      $display("after push_front = %0p",queue);
    
    queue.pop_back();
    $display("after pop_back = %0p",queue);
    
    queue.push_back(98);
    $display("after push_back = %0p",queue);
    
    queue.pop_front();
    $display("after pop_front = %0p",queue);
    
  end
endmodule
