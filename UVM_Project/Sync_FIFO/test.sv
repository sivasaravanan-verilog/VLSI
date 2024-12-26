`include "environment.sv"
`include "sequence.sv"
class test extends uvm_test;
  `uvm_component_utils(test)
  sequene sqen;
  fifo_env Env;
  
  function new(string name= "test", uvm_component parent);
    super.new(name,parent);
  endfunction:new
  
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    sqen = sequene::type_id::create("sqen",this);
    ENV=fifo_env::type_id::create("ENV",this);
    
  endfunction : build_phase
  
    task run_phase(uvm_phase phase);
      phase.raise_objection(this);
      
      sqen.start(ENV.agt.seqq);
      
      phase.drop_objection(this);
    endtask:run_phase
    
endclass
