module Cipher (
    output [0:127] encrypted,
    input [0:127] state,
    input [0:127] key_c
);
     wire[0:127]  Subbytes_out;
     wire[0:127]  ShiftRows_out;
     wire[0:127]  MixColumns_out;

            SubBytes s(.msg(state),.msgout(Subbytes_out));
            ShiftRows sh(.word(Subbytes_out),.shifted(ShiftRows_out));
            MixColumns mc(.inState(ShiftRows_out),.outState(MixColumns_out));
            AddRoundKey add(.word(MixColumns_out),.key(key_c),.out(encrypted));
endmodule