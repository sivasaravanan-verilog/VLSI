module union1 ();
 
  union {
        int x;
        byte y;
    bit[6:0] z;
    } data;

    initial begin

        data.x = 'd98;

        $display("\n x = %0h", data.x );
        $display("\n y = %0h", data.y );
      $display("\n z =%0h", data.z);
      

        data.y = 'h56;

        $display("\n x = %0h", data.x );
      $display("\n y = %0h", data.y );
      $display("\n z =%0h", data.z);
      
      data.z = 'h44;
      
      $display("\n x= %0h", data.x );
      $display("\n y=%0h", data.y);
      $display("\n z=%0h", data.z);
      $displayh("\n data = %p", data);
        //$display("\n size of unpacked union :", $bits(data));
    end
endmodule
