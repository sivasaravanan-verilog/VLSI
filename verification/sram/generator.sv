class generator;
  transaction tr;
  mailbox mail;
  
  function new(mailbox mail);
    this.mail=mail;
  endfunction
  
  task a;
    tr=new();
   
    tr.addr=8'b101;
    tr.wdata=8'b110;
    mail.put(tr);
  endtask
  
endclass
