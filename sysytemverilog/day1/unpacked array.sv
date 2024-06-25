module unpacked_array;
  int A[5][3];
  initial begin
    foreach(A[i])begin
      foreach(A[i][j])begin
        A[i][j]=$urandom_range(20,90);
      end
    end
    
    foreach(A[i])begin
      foreach(A[i][j])begin
        $display("\t A[%0d][%0d]=%0d",i,j,A[i][j]);
     end
    end
   $display("A=%p",A);
  end
endmodule
      
