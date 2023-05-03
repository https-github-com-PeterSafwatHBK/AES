`include"InvSBOX.v"
module InvSubBytes(input [127:0] msg , output [127:0] msgout);
InvSBOX zero(msg[127:120],msgout[127:120]);
InvSBOX one(msg[119:112],msgout[119:112]);
InvSBOX two(msg[111:104],msgout[111:104]);
InvSBOX three(msg[103:96],msgout[103:96]);
InvSBOX four(msg[95:88],msgout[95:88]);
InvSBOX five(msg[87:80],msgout[87:80]);
InvSBOX six(msg[79:72],msgout[79:72]);
InvSBOX seven(msg[71:64],msgout[71:64]);
InvSBOX eight(msg[63:56],msgout[63:56]);
InvSBOX nine(msg[55:48],msgout[55:48]);
InvSBOX ten(msg[47:40],msgout[47:40]);
InvSBOX eleven(msg[39:32],msgout[39:32]);
InvSBOX twelve(msg[31:24],msgout[31:24]);
InvSBOX thirteen(msg[23:16],msgout[23:16]);
InvSBOX fourteen(msg[15:8],msgout[15:8]);
InvSBOX fifteen(msg[7:0],msgout[7:0]);

endmodule
