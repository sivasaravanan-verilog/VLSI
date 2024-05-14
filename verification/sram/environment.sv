`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"


class environment;
  mailbox mail;
  virtual inter vintf;
  driver driv;
  generator genr;
  monitor mon;
  scoreboard sc;
  function new(virtual inter vintf,mailbox mail);
    this.mail=mail;
    this.vintf=vintf;
  endfunction
  
  task memory;
    mail=new();
    sc=new(mail);
    driv =new(vintf,mail);
    genr=new(mail);
    mon=new(vintf,mail);
    
  endtask
  
  task run;
    fork
    genr.a;
    driv.b;
      mon.monn();
      sc.main();
    join_any
    
  endtask
endclass
    
