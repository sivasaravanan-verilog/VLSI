  
class sb extends uvm_scoreboard;//#(seq_item);
  uvm_analysis_port#(seq_item,sb)item_port;
  seq_item seq;
  
  `uvm_component_utils(sb)
  
  function new(string name = "sb", uvm_component parent = null);
    super.new(name, parent);
    //item_collect_export = new("item_collect_export", this);
  endfunction
  
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    item_port = new("item_port",this);
  endfunction
  
  task run_phase(uvm_phase phase);
    forever begin
      item_port.get(seq);
      if(rst) 
        begin
          $display("wptr and rptr",seq.wptr,seq.rptr);
          `uvm_info(get_type_name(),$sformatf("POINTER IS WORKING"),UVM_HIGH)
        end
      if(mem[wptr] <= data)
        begin
          `uvm_info(get_type_name(),$sformatf("DATA WRITING VALUE %0d",seq.data),UVM_HIGH);
          $display("---------------------------------------");
        end
      if(dout <= mem[rptr])
        begin
          `uvm_info(get_type_name(),$sformatf("DATA READ VALUE %0d",seq.dout),UVM_HIGH);
          $display("---------------------------------------");
        end
      if(wptr == rptr)
        begin
          `uvm_info(get_type_name(),$sformatf("FIFO EMPTY"),UVM_HIGH);
          $display("---------------------------------------");
        end
      if ((wptr+1)==rptr)
        begin
          `uvm_info(get_type_name(),$sformatf("FIFO FULL"),UVM_HIGH);
          $display("---------------------------------------");
        end
      else begin
        `uvm_fatal($sformatf("Scoreboard is Failed"),UVM_HIGH);
      end
    end
  endtask
endclass
