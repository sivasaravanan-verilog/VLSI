module QUEUE;
  int a[$];
  int b[$];
  
  initial begin
    a={6,5,34,88,5};
    b={4,6,5,3};
    
    $display("\t size of queue a=%0d",a.size());
    $display("\t size of the queue b=%0d",b.size());
    
    a.insert(2,99);
    $display("a size  after inserting is %0d",a.size());
    foreach(a[i]) $display("\t a[%0d] = %0d",i,a[i]);
    
    a.push_back(77);
    $display("after push the element into a",a);
    $display("\t a=%p",a);
    
    a.pop_front();
    $display("\t after pop the element into a",a);
    $display("\t a=%p ",a);
    foreach(b[i])
      a.push_back(b[i]);
    $display("after joining the queue",a);
    
    
    
  end
endmodule
    
