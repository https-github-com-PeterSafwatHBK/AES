module testbench();

    // Parameters
    parameter Nb = 4;
    parameter Nk = 4;
    parameter Nr = 10;

    // Inputs and Outputs
    reg [0:127] in =128'h69c4e0d86a7b0430d8cdb78070b4c55a;
    reg [0:(Nk*32)-1] key =128'h13111d7fe3944a17f307a78b4d2b30c5;
    wire [0:127] decrypted;
    
    // Instantiate the module
    Decrypt #(Nb, Nk, Nr) DUT (
        .in(in),
        .key(key),
        .decrypted(decrypted)
    );



  
endmodule
