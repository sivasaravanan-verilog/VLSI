class object;
  rand bit [4:0] abc;

  constraint con{(abc inside{[10:15]});}
endclass


module top;
  initial begin
    repeat(10)begin
      int i;
      object ob;
      ob=new();
      for(int i=0;i<15;i++);
      ob.randomize();
      $display("value of abc i=%0d",i,ob.abc);
    end
  end
endmodule
