`include "agent.sv"
`include "scoreboard.sv"
class env extends uvm_env; 
  `uvm_component_utils(env)
  agent agt;
  sb sbb;
  
  
  function new(string name= "env", uvm_component parent);
    super.new(name,parent);
  endfunction
 
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    agt=agent::type_id::create("agt",this);
    sbb=sb::type_id::create("sbb",this);
  endfunction
  
  function void connect_phase(uvm_phase phase);
    agt.moni.item_port.connect(sbb.item.analysis_export);
  
  endfunction: connect_phase
    
 endclass
