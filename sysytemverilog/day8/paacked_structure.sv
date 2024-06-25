typedef struct packed{
    int age;
  byte id;
  //string str1= "student_name";
  bit[7:0] roll_no;
  logic[20:0] fees_amount;} paybill;

module students;
    
  paybill st;
  initial begin
  
    st.id=001;
    //st.str="albert";
  st.age=15;
  st.roll_no=012345;
  st.fees_amount=15000;
  
    $display("----------------------------");
    $display("----packed structred-----");
    //$display("\n st.student name=%p",st.str);
    $display("\n st.id=%p",st.id );
    $display("\n st.age=%p",st.age);
    $display("\n st.roll_no=%p",st.roll_no);
    $display("\n st.fees_amount=%p",st.fees_amount);
    
  end
endmodule
