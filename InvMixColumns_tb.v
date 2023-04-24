module InvMixColumns_tb ();
    reg [0:127] original;
    wire [0:127] reverseMixed;

    InvMixColumns i(original, reverseMixed);

    initial begin
        original = 128'hbd6e7c3df2b5779e0b61216e8b10b689;
        $display("\nexpected = 4773b91ff72f354361cb018ea1e6cf2c");
        $monitor("output   = %h, input = %h", reverseMixed, original);

        #10;

        original = 128'hfde3bad205e5d0d73547964ef1fe37f1;
        $display("\nexpected = 2d7e86a339d9393ee6570a1101904e16");

        #10

        original = 128'hd1876c0f79c4300ab45594add66ff41f;
        $display("\nexpected = 39daee38f4f1a82aaf432410c36d45b9");

        #10

        original = 128'hc62fe109f75eedc3cc79395d84f9cf5d;
        $display("\nexpected = 9a39bf1d05b20a3a476a0bf79fe51184");
    end
endmodule
