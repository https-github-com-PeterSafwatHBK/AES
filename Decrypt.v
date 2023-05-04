module Decrypt #(parameter Nb =4,parameter Nk=4,parameter  Nr=10 ) (
    input [0:127] in,
    input [0:(Nk*32)-1] key,
    output [0:127] decrypted
);
     parameter max=(4*(Nk+6+1)*32)-1;
     wire [0:max] KeysArray;
     wire [0:127] State [0:Nr] ;
     wire[0:127]  Subbytes_out;
     wire[0:127]  ShiftRows_out;
     KeyExpansion #(Nk) k(.Key(key),.Words(KeysArray));
     AddRoundKey add(.word(in),.key(KeysArray[max-127:max]),.out(State[0]));

     generate
        genvar i;
        for (i =1;i<Nr;i=i+1) begin
            DeCipher c(.state(State[i-1]),.key_c(KeysArray[(max-(128*(i+1)))+1:max-(128*i)]),.decrypted(State[i]));
        end
          InvSubBytes s2(.msg(State[Nr-1]),.msgout(Subbytes_out));
          InvShiftRows sh2(.word(Subbytes_out),.shifted(ShiftRows_out));
          AddRoundKey add2(.word(ShiftRows_out),.key(KeysArray[0:127]),.out(State[Nr]));
          assign decrypted=State[Nr];
     endgenerate
     
 endmodule
