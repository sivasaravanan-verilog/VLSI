class scoreboard;
   mailbox mail;
   int no_transactions;
   bit [7:0] mem[4];
  
  
  function new(mailbox mail);
    this.mail=mail;
    foreach(mem[i]) mem[i] = 8'hFF;
  endfunction
  
//   task scor;
//      forever begin
//        tr=new();
//        mail.get(tr);
    
//        if(tr.wdata inside {[0:120]}) begin
      
//          $display("verified the scoreboard pass addr=%0d data=%0d rdata=%d",tr.addr,tr.wdata,tr.rdata);
//     end
//       else
//         $display("verified the scoreboard  fail addr=%0d data=%0d rdata=%d",tr.addr,tr.wdata,tr.rdata);
//      end
//   endtask
// endclass
  task main;
   transaction tr;
    forever begin
      #50;
      mail.get(tr);
      if(!tr.wen) begin
        if(mem[tr.addr] != tr.rdata) 
          $display("[SCB-FAIL] Addr = %0h,\n \t   Data :: Expected = %0h Actual = %0h",tr.addr,mem[tr.addr],tr.rdata);
        else 
          $display("[SCB-PASS] Addr = %0h,\n \t   Data :: Expected = %0h Actual = %0h",tr.addr,mem[tr.addr],tr.rdata);
      end
      else if(tr.wen)
        mem[tr.addr] = tr.wdata;
      
      no_transactions++;
      end
  endtask
endclass
