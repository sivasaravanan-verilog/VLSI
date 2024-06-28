class pocket;
  rand bit [3:0]que[$];
  constraint que_const{que.size()==5;}
endclass
module mod;
  pocket pack;
  initial begin
    pack=new;
    for (int i = 0;i<=pack.que.size();i++)begin
      void'(pack.randomize());
      $display (" Iteration = %0d The value of queue =%0p",i,pack.que); 
    end
  end
endmodule
