`include"InvSBOX.v"
module InvSubBytes(input [0:127] msg , output [0:127] msgout);
generate
    genvar i;
     for (i =0 ;i<=15 ;i=i+1) begin
        InvSBOX dut(msg[(8*i):(8*i)+7],msgout[(8*i):(8*i)+7]);
     end
endgenerate
endmodule
