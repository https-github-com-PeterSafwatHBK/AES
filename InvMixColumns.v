module InvMixColumns (
    input [0:127] inState,
    output [0:127] outState
);
    invMix w0(inState[0:31], outState[0:31]);
    invMix w1(inState[32:63], outState[32:63]);
    invMix w2(inState[64:95], outState[64:95]);
    invMix w3(inState[96:127], outState[96:127]);
endmodule
