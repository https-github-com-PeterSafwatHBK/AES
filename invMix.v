module invMix (
    input [0:31] word_in,
    output [0:31] word_out
);
    /* 
    multiplication in GF(2^8) can be done using either lookup tables (not used here),
    or :    (input * 2 ^ n) XOR input    . to be euivalent for any required multiplier.
    I'll go with the second approach, defining a function that nultiplies word_in by 2 for n number of times,
    the reuse it for multiplying with {0b}, {13}, {09}, {0e}
    */
    function [0:7] multBy2_for_n(
        input [0:7] byte_in, // a single entry in the state matrix 
        input integer n // the number of times to multiply by 2 
        ); 
        integer i; // for loop counter
        begin
            for (i = 0; i < n; i = i + 1) begin
                if (byte_in[0] == 1'b1) // if MSB == 1
                    byte_in = (byte_in << 1) ^ (8'h1b);
                else
                    byte_in = byte_in << 1; // i need to assign changes to the input directlty 
            end
            multBy2_for_n = byte_in; // assign final output to the processed input
        end
    endfunction

    // 9 = 2^3 + 2^0
    function [0:7] multBy09 (input [0:7] byte_in);
        begin
            multBy09 = multBy2_for_n(byte_in, 3) ^ byte_in;
        end
    endfunction

    // 11 = 2^3 + 2^1 + 2^0 (power is number of repeated mutiplications by 2)
    function [0:7] multBy0b (input [0:7] byte_in);
        begin
           multBy0b = multBy2_for_n(byte_in, 3) ^ multBy2_for_n(byte_in, 1) ^ byte_in;
        end
    endfunction

    // 13 = 2^3 + 2^2 + 2^0
    function [0:7] multBy0d (input [0:7] byte_in);
        begin
            multBy0d = multBy2_for_n(byte_in, 3) ^ multBy2_for_n(byte_in, 2) ^ byte_in;
        end
    endfunction

    // 14 = 2^3 + 2^2 + 2^1
    function [0:7] multBy0e (input [0:7] byte_in);
        begin
            multBy0e = multBy2_for_n(byte_in, 3) ^ multBy2_for_n(byte_in, 2) ^ multBy2_for_n(byte_in, 1);
        end
    endfunction

    /* using the defined functions above to mutiply word_in by the matrix :
    e b d 9
    9 e b d
    d 9 e b
    b d 9 e
    */
    assign word_out[0:7] = multBy0e(word_in[0:7]) ^ multBy0b(word_in[8:15]) ^ multBy0d(word_in[16:23]) ^ multBy09(word_in[24:31]);
    assign word_out[8:15] = multBy09(word_in[0:7]) ^ multBy0e(word_in[8:15]) ^ multBy0b(word_in[16:23]) ^ multBy0d(word_in[24:31]);
    assign word_out[16:23] = multBy0d(word_in[0:7]) ^ multBy09(word_in[8:15]) ^ multBy0e(word_in[16:23]) ^ multBy0b(word_in[24:31]);
    assign word_out[24:31] = multBy0b(word_in[0:7]) ^ multBy0d(word_in[8:15]) ^ multBy09(word_in[16:23]) ^ multBy0e(word_in[24:31]);
endmodule
