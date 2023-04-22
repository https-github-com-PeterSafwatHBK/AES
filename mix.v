module mix (
    input [0:31] raw,
    output [0:31] mixed
);
    function [0:7] multBy2;
        input [0:7] inByte;
        begin
            if (inByte[0] == 1'b1)
                multBy2 = ((inByte << 1) ^ (8'h1b)); // shift one bit left then XOR 0001_1011
            else
                multBy2 = inByte << 1; // shift one bit left
        end
    endfunction

    function [0:7] multBy3;
        input [0:7] inByte;
        begin
           multBy3 = multBy2(inByte) ^ inByte;
        end
    endfunction
    /*
    2311
    1231
    1123
    3112
    */
    assign mixed[0:7] = multBy2(raw[0:7]) ^ multBy3(raw[8:15]) ^ raw[16:23] ^ raw[24:31];
    assign mixed[8:15] = raw[0:7] ^ multBy2(raw[8:15]) ^ multBy3(raw[16:23]) ^ raw[24:31];
    assign mixed[16:23] = raw[0:7] ^ raw[8:15] ^ multBy2(raw[16:23]) ^ multBy3(raw[24:31]);
    assign mixed[24:31] = multBy3(raw[0:7]) ^ raw[8:15] ^ raw[16:23] ^ multBy2(raw[24:31]);
endmodule
