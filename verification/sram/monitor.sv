class monitor;
  virtual inter vintf;
  mailbox mail;
  
  function new(virtual inter vintf,mailbox mail);
    this.vintf=vintf;
    this.mail=mail;
  endfunction
  
  task monn;
    transaction tr;
    tr=new();
    
    tr.addr=vintf.addr;
    tr.wdata=vintf.wdata;
    tr.wen=1'b1;
    #20
    tr.wen=1'b0;
    
    vintf.rdata=tr.rdata;
    mail.put(tr);
  endtask
endclass
