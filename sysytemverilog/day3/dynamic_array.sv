module dynamic_array;
  int d[];
  int d1[];
  
  initial begin
    d={9,1,8,3,4,4};
    d1=new[6];
    foreach(d1[i])
      $display("d1[%0d]=%0d",i,d1[i]);
    $display("size of the d1=%0d",d1.size);
    d1.delete();
    $display("size of d1 after deleting=%0d",d1.size());
    d.reverse();
    $display(d);
    d.sort();
    $display(d);
    d.rsort();
    $display(d);
    d.shuffle();
    $display(d);
  end
endmodule
