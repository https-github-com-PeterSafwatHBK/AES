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
        #10;

        original = 128'hc81677bc9b7ac93b25027992b0261996;
        $display("\nexpected = 18f78d779a93eef4f6742967c47f5ffd");
        #10;

        original = 128'h247240236966b3fa6ed2753288425b6c;
        $display("\nexpected = 85cf8bf472d124c10348f545329c0053");
        #10;

        original = 128'hfa636a2825b339c940668a3157244d17;
        $display("\nexpected = fc1fc1f91934c98210fbfb8da340eb21");
        #10;

        original = 128'h4915598f55e5d7a0daca94fa1f0a63f7;
        $display("\nexpected = 076518f0b52ba2fb7a15c8d93be45e00");
        #10;

        original = 128'h89d810e8855ace682d1843d8cb128fe4;
        $display("\nexpected = ef053f7c8b3d32fd4d2a64ad3c93071a");
        
    end
endmodule