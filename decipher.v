module DeCipher (
    output [0:127] decrypted,
    input [0:127] state,
    input [0:127] key_c
);
     wire[0:127]  Subbytes_out;
     wire[0:127]  ShiftRows_out;
    // wire[0:127]  MixColumns_out;
	 wire[0:127] AddRoundKey_out;

			InvShiftRows sh(.word(state),.shifted(ShiftRows_out));
            InvSubBytes s(.msg(ShiftRows_out),.msgout(Subbytes_out));
            AddRoundKey add(.word(Subbytes_out),.key(key_c),.out(AddRoundKey_out));
            InvMixColumns mc(.inState(AddRoundKey_out),.outState(decrypted));
           
endmodule
