class sequene extends uvm_sequence#(seq_item);
  `uvm_object_utils(sequene)
  //seq_item seq;

  function new(string name = "sequene");
    super.new(name);
  endfunction

  virtual task gen();
    req=seq_item::type_id::create("req");
    wait_for_grant();
    assert( req.randomize());
    send_request();
    wait_for_item_done();
    
  endtask
endclass
