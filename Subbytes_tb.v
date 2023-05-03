`timescale 1ns / 1ps

module Subbytes_tb();

reg [0:127] msg;
wire [0:127] msgout;

SubBytes dut(.msg(msg), .msgout(msgout));

initial begin
  // Test case 1
  msg = 128'h00102030405060708090a0b0c0d0e0f0;
  #10 $display("Input: %h", msg);
  #10 $display("Expected Output: %h", 128'h63cab7040953d051cd60e0e7ba70e18c);
  #10 $display("Actual Output: %h", msgout);
  #10;

  // Test case 2
  msg = 128'h89d810e8855ace682d1843d8cb128fe4;
  #10 $display("Input: %h", msg);
  #10 $display("Expected Output: %h", 128'ha761ca9b97be8b45d8ad1a611fc97369);
  #10 $display("Actual Output: %h", msgout);
  #10;

  // Add more test cases here...
end

endmodule
