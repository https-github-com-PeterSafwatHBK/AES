module AddRoundKey(
input [0:127] word,
input [0:127] key,
output [0:127] out
);
assign out = key ^ word;

endmodule