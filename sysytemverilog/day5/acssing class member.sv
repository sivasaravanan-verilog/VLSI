//accessing class member in inheritance

class par;
  bit[15:0]data1;
  int a;
  
//   function display();
//     $display("base cls value of data=%0d a=%0d",data1,a);
//   endfunction
  
endclass

class chd extends par;
 // bit[7:0]data;
 // int a;
  
  function display();
    $display("chd cls value of data=%0d a=%0d",data1,a);
  endfunction
endclass

module ex;
    initial begin
   //   par p;
      chd c;
      
//       p=new();
      c=new();
      
   //   p.data=150;
   //   p.a=55;
      
      c.data1=250;
      c.a=75;
      
      c.display();
    end
  endmodule
      
