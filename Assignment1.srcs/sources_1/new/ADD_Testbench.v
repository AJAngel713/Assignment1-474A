`timescale 1ns / 1ps
module ADD_TestBench();
   reg [31:0] A_t, B_t;
   wire [31:0] SUM_t, SUB_t, MUL_t;

   ADD #(32) ADD_0(A_t, B_t, SUM_t);
   SUB #(32) SUB_0(A_t, B_t, SUB_t);
   MUL #(32) MUL_0(A_t, B_t, MUL_t);
   
   // Test vectors (A good testbench would have many more)
   initial begin
      A_t <= 5; 
      B_t <= 10;
      #1;

      A_t <= 50; 
      B_t <= 7;
      #1;

      A_t <= 0; 
      B_t <= 0;
      #1;

      A_t <= 1000000; 
      B_t <= 34991;
      #1;
   end
endmodule
