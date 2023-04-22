module MixColumns (
    input [0:127] inState,
    output [0:127] outState
);
mix w0(inState[0:31], outState[0:31]);
mix w1(inState[32:63], outState[32:63]);
mix w2(inState[64:95], outState[64:95]);
mix w3(inState[96:127], outState[96:127]);
endmodule
