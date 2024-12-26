`include "sequencer.sv"
`include "driver.sv"
`include "monitor.sv"
// `include "sequence.sv"
// `include "seq_item.sv"

class agent extends uvm_agent;
  `uvm_component_utils(agent)
  //`uvm_analysis_port#(seq_item) item_port;
   sequencer seqq;
  driver dri;
  monitor moni;
  
  function new(string name= "agent",uvm_component parent);
    super.new(name,parent);
    //item_port=new("item_port",this);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    seqq = sequencer::type_id::create("seqq");
    dri = driver::type_id::create("dri");
    moni = monitor::type_id::create("moni");
  endfunction
  
  
  function void connect_phase(uvm_phase phase);
    //if(get_is_active==UVM_ACTIVE)begin
      dri.seq_item_port.connect(seqq.seq_item_export);
  endfunction
endclass
