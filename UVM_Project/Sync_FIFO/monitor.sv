class monitor extends uvm_monitor;
  `uvm_component_utils(monitor)
  uvm_analysis_port #(seq_item) item_collect_port;
  virtual inter vint;
  seq_item item;
  
  function new(string name= "monitor",uvm_component parent);
    super.new(name,parent);
    item=new();
    item_collect_port=new("item_collect_port",this);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual inter)::get(this, "", "vint", vint))
      `uvm_fatal("NO_VINT",{"virtual interface must be set for: ",get_full_name(),".vint"});
  endfunction
  
  task run_phase(uvm_phase phase);
    forever begin
      @(posedge vint.clk);
      item.clk <=  vint.clk;
      item.rst <= vint.rst;
      item.wen <= vint.wen;
      item.ren <= vint.ren;
      item.data <= vint.data;
      item.dout <= vint.dout;
      item_collect_port.write(item);
      
      `uvm_info(get_type_name,$sformatf("clk=%0d rst=%0d wen=%0d ren=%0d data=%0d dout=%0d empty=%0d full=%0d"),UVM_HIGH);
    end
  endtask
endclass

    
