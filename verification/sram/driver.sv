class driver;
  transaction tr;
  mailbox mail;
  virtual inter vintf;
  
  function new( virtual inter vintf, mailbox mail);
    this.mail=mail;
    this.vintf=vintf;
  endfunction
  
  task b;
  
    tr=new();
    mail.get(tr);
    
    vintf.addr=tr.addr;
    vintf.wdata=tr.wdata;

    vintf.wen=1'b1;
    #20
    vintf.wen=1'b0;
    
    tr.rdata=vintf.rdata;
  endtask
endclass
    
