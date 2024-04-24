class pocket;
  bit[31:0]addr;
  bit[31:0]data;
  bit write;
  string pkt_type;
  
  function new(bit[31:0]addr,data,bit write,string pkt_type);
    this.addr = addr;
    this.data = data;
    this.write = write;
    this.pkt_type=pkt_type;
  endfunction
  
  function void display();
    $display("\t addr = %0d",addr);
    $display("\t data = %0d",data);
    $display("\t write = %0d",write);
    $display("\t pkt)_type = %0s",pkt_type);
  endfunction
endclass
  module public;
    pocket pk;
    initial begin
      pk = new(32'hAE,32'h3F,1,"good pocket");
      pk.display();
    end
  endmodule
    
