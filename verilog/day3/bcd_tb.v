module bcd2bin_tb ();
   
    reg [3:0] bcd3, bcd2, bcd1, bcd0; 
    wire [13:0] bin; 
    reg clk, rst;

    bcd2bin bcd2bin (
        .bcd3 (bcd3),
        .bcd2 (bcd2),
        .bcd1 (bcd1),
        .bcd0 (bcd0),
        .bin (bin)
    );

  
    initial begin
      $dumpfile("bcd2bin.vcd");
      $dumpvars(0,bcd2bin_tb);
        clk = 0;
        forever #10 clk = ~clk;
    end


    initial begin
        rst = 0;
        #10 rst = 1;
    end

   
    initial begin
       
        @(posedge rst);

      
        bcd3 = 4'b0000; bcd2 = 4'b0000; bcd1 = 4'b0000; bcd0 = 4'b0000; 
        #20;
        bcd3 = 4'b0000; bcd2 = 4'b0000; bcd1 = 4'b0000; bcd0 = 4'b0001; 
        #20;
        bcd3 = 4'b0000; bcd2 = 4'b0000; bcd1 = 4'b0000; bcd0 = 4'b0010; 
        #20;
        bcd3 = 4'b0000; bcd2 = 4'b0000; bcd1 = 4'b1001; bcd0 = 4'b1001;
        #20;
        bcd3 = 4'b0000; bcd2 = 4'b0001; bcd1 = 4'b0000; bcd0 = 4'b0000; 
        #20;
        bcd3 = 4'b0000; bcd2 = 4'b0001; bcd1 = 4'b0000; bcd0 = 4'b0001; 
        #20;
        bcd3 = 4'b0000; bcd2 = 4'b1111; bcd1 = 4'b1111; bcd0 = 4'b1111; 
        #20;

        
        $finish;
    end

    initial begin
      $monitor ("time = %0t, BCD = %b %b %b %b, Binary = %b", $time, bcd3, bcd2, bcd1, bcd0, bin);
    end

endmodule
