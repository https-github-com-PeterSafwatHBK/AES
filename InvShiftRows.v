module InvShiftRows (
    input [0:127] word ,
    output [0:127] shifted 
);
    //First Row (No Shifting)
    assign shifted[0+:8] = word[0+:8];
	assign shifted[32+:8] = word[32+:8];
	assign shifted[64+:8] = word[64+:8];
    assign shifted[96+:8] = word[96+:8];

    //Second Row 
    assign shifted[8+:8] = word[104+:8];
	assign shifted[40+:8] = word[8+:8];
	assign shifted[72+:8] = word[40+:8];
    assign shifted[104+:8] = word[72+:8];

    //Third Row
    assign shifted[16+:8] = word[80+:8];
	assign shifted[48+:8] = word[112+:8];
	assign shifted[80+:8] = word[16+:8];
    assign shifted[112+:8] = word[48+:8];

    //Fourth Row
    assign shifted[24+:8] = word[56+:8];
	assign shifted[56+:8] = word[88+:8];
	assign shifted[88+:8] = word[120+:8];
    assign shifted[120+:8] = word[24+:8];


endmodule