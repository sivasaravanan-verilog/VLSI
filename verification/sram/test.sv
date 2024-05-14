`include "environment.sv"


class test;
  mailbox mail;
  environment envi;
  virtual inter vintf;

  
  function new(virtual inter vintf,mailbox mail);
    this.mail=mail;
    this.vintf=vintf;
  endfunction
  
  task meme;
    mail=new();
    envi=new(vintf,mail);
  endtask
  
  task runn;
    envi.memory;
    envi.run;
  endtask
endclass
    
