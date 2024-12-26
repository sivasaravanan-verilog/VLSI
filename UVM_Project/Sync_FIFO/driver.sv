class driver extends uvm_driver#(seq_item);
  `uvm_component_utils(driver)
  virtual inter vint;
  //seq_item seq;
  
  function new(string name = "driver",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual inter)::get(this, "", "vint", vint))
      `uvm_fatal("NO_VINT",{"virtual interface must be set for: ",get_full_name(),".vint"});
  endfunction
  
  virtual task run_phase(uvm_phase phase);
    forever begin
      req_item_port.get_next_item(req);
      drive(req);
      req_item_port.item_done();
    end
  endtask

  virtual task write();
    @(posedge vint.clk);
    vint.rst <= 1'b0;
    vint.ren  <= 1'b0;
    vint.wen  <= 1'b1;
    vint.data <= req.data;
    @(posedge inf.clk);
    vint.wen <= 1'b0;
    $display("[DRV] : Data write data : %0d",vint.data);
    @(posedge vint.clk);
  endtask
  
  virtual task read();
    @(posedge vint.clk);
    vint.rst <= 1'b0;
    vint.ren  <= 1'b1;
    vint.wen  <= 1'b0;
    vint.dout <= req.dout;
    $display("[DRV] : data read = %0d",vint.dout);
    @(posedge vint.clk);
  endtask
  
    task driv();
    forever begin
      fork
//       if(seq.oper == 1'b1)
        write();
      //else 
        read();
      join
    end
  endtask
endclass
  
