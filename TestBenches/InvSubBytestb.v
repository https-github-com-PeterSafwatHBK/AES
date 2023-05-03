`include "InvSubBytes.v"

module InvSubBytestb();
//use any value for input ,I used value in page (37) round num [4]
  reg [0:127] in0 = 128'hb415f8016858552e4bb6124c5f998a4c;
  wire [0:127] out0;

  InvSubBytes mod (.msg(in0), .msgout(out0));

endmodule
