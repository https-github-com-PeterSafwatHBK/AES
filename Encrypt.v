module Encrypt #(parameter Nb =4,parameter Nk=4,parameter  Nr=10 ) (
    input [0:127] in,
    input [0:(Nk*32)-1] key,
    output [0:127] Encrypted
);
     wire [0:(4*(Nk+6+1)*32)-1] KeysArray;
     wire [0:127] State [0:Nr] ;
     wire[0:127]  Subbytes_out;
     wire[0:127]  ShiftRows_out;
     KeyExpansion #(Nk) k(.Key(key),.Words(KeysArray));
     AddRoundKey add(.word(in),.key(KeysArray[0:127]),.out(State[0]));

     generate
        genvar i;
        for (i =1;i<Nr;i=i+1) begin
            Cipher c(.state(State[i-1]),.key_c(KeysArray[(128*i):((128*(i+1))-1)]),.encrypted(State[i]));
            //SubBytes s(.msg(State[i-1]),.msgout(Subbytes_out));
            // ShiftRows sh(.word(Subbytes_out),.shifted(ShiftRows_out));
            // MixColumns mc(.inState(ShiftRows_out),.outState(MixColumns_out));
             //AddRoundKey add(.word(MixColumns_out),.key(KeysArray[127*(i)+:128]),.out(State[i]));
        end
          SubBytes s2(.msg(State[Nr-1]),.msgout(Subbytes_out));
          ShiftRows sh2(.word(Subbytes_out),.shifted(ShiftRows_out));
          AddRoundKey add2(.word(ShiftRows_out),.key(KeysArray[(4*(Nk+7)*32)-1-127:4*(Nk+7)*32-1]),.out(State[Nr]));
          assign Encrypted=State[Nr];
     endgenerate
     
 endmodule