`include"SBOX.v"
`include"XOR.v"
module Subbytes(input [127:0] msg , output [127:0] msgout);
//wire [127:0] msgout;
SBOX zero(msg[127:120],msgout[127:120]);
SBOX one(msg[119:112],msgout[119:112]);
SBOX two(msg[111:104],msgout[111:104]);
SBOX three(msg[103:96],msgout[103:96]);
SBOX four(msg[95:88],msgout[95:88]);
SBOX five(msg[87:80],msgout[87:80]);
SBOX six(msg[79:72],msgout[79:72]);
SBOX seven(msg[71:64],msgout[71:64]);
SBOX eight(msg[63:56],msgout[63:56]);
SBOX nine(msg[55:48],msgout[55:48]);
SBOX ten(msg[47:40],msgout[47:40]);
SBOX eleven(msg[39:32],msgout[39:32]);
SBOX twelve(msg[31:24],msgout[31:24]);
SBOX thirteen(msg[23:16],msgout[23:16]);
SBOX fourteen(msg[15:8],msgout[15:8]);
SBOX fifteen(msg[7:0],msgout[7:0]);
//XOR xorrr(msg,msgout,msgo);
endmodule