class seq_item extends uvm_sequence_item;
  //`uvm_object_utils(seq_item)
  
  function new(string name = "seq_item");
    super.new(name);
  endfunction
  
  bit clk,rst;
  rand bit[7:0] data;
  bit [7:0] dout;
  bit wen,ren;
  bit full,empty;
  //constraint oper_ctl{ data dist {1 :/50, 0:/50};}
  
  `uvm_object_utils_begin(seq_item)
  `uvm_field_int(clk,UVM_ALL_ON)
  `uvm_field_int(rst,UVM_ALL_ON)
  `uvm_field_int(wen,UVM_ALL_ON)
  `uvm_field_int(ren,UVM_ALL_ON)
  `uvm_field_int(data,UVM_ALL_ON)
  `uvm_object_utils_end
endclass
