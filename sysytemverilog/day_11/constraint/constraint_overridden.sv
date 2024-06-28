class parent;
  rand byte a;
  rand byte b;
  constraint con{a==0;b==7;}
endclass

class child extends parent;
  constraint con{a==2;b==6;}
endclass

module top;
  initial begin
    parent p1;
    child c1;
    p1=new();
    c1=new();
    for(int i=0;i<7;i++)begin
      if(!c1.randomize())
        $display("randomization failed");
      else 
        $display("iteration start =%0d",i,c1.a,c1.b);;
    end
  end
endmodule

