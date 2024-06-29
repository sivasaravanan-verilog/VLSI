class object;// create a class
  rand bit [4:0] abc;

  constraint con{!(abc inside{[10:15]});}//  invertedinside constraint
endclass


module top;//top module
  initial begin
    repeat(10)begin
      int i;
      object ob;
      ob=new();
      for(int i=0;i<15;i++);
      ob.randomize();//randomize
      $display("value of abc i=%0d",i,ob.abc);
    end
  end
endmodule
