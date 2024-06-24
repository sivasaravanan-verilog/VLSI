class address_rang;
  bit[31:0]start_addr;
  bit[31:0]end_addr;
  function lee();
    start_addr=45;
    end_addr=65;
  endfunction
endclass

class packet;
  bit[31:0]addr;
  bit[31:0]data;
  address_rang ar;
  function new();
    addr=32'hAE;
    data=32'h74;
    ar = new();
  endfunction
  
  function void display();
    $display("value of the addr=%0h",addr);
    $display("value of the data=%0h",data);
    $display("value of start_addr=%0d",ar.start_addr);
    $display("valur of end_addr=%0d",ar.end_addr);
  endfunction
endclass

module example;
  initial begin
    packet pkt1,pkt2;
    pkt1=new();
    $display("------------------------");
    pkt1.display();
    
    pkt2=new pkt1;
    $display("************************");
    pkt2.display();
    
    pkt2.addr=32'h89;
    pkt2.ar.start_addr=76;
    pkt2.ar.end_addr=44;
    $display("*-*__*__*_*_*_*_*_*_*_*__");
    pkt2.display();
    
  end
endmodule
