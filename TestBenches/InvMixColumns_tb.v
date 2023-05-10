module InvMixColumns_tb ();
    reg [0:127] original;
    wire [0:127] reverseMixed;

    InvMixColumns i(original, reverseMixed);

    initial begin
        original = 128'hbd6e7c3df2b5779e0b61216e8b10b689;
        #5;
        if (reverseMixed == 128'h4773b91ff72f354361cb018ea1e6cf2c)
            $display("matched 1\n");
        else
            $display("mismatched 1\n");
        #5;

        original = 128'hfde3bad205e5d0d73547964ef1fe37f1;
        #5;
        if (reverseMixed == 128'h2d7e86a339d9393ee6570a1101904e16)
            $display("matched 2\n");
        else
            $display("mismatched 2\n");
        #5;

        original = 128'hd1876c0f79c4300ab45594add66ff41f;
        #5;
        if (reverseMixed == 128'h39daee38f4f1a82aaf432410c36d45b9)
            $display("matched 3\n");
        else
            $display("mismatched 3\n");
        #5;

        original = 128'hc62fe109f75eedc3cc79395d84f9cf5d;
        #5;
        if (reverseMixed == 128'h9a39bf1d05b20a3a476a0bf79fe51184)
            $display("matched 4\n");
        else
            $display("mismatched 4\n");
        #5;

        original = 128'hc81677bc9b7ac93b25027992b0261996;
        #5;
        if (reverseMixed == 128'h18f78d779a93eef4f6742967c47f5ffd)
            $display("matched 5\n");
        else
            $display("mismatched 5\n");
        #5;

        original = 128'h247240236966b3fa6ed2753288425b6c;
        #5;
        if (reverseMixed == 128'h85cf8bf472d124c10348f545329c0053)
            $display("matched 6\n");
        else
            $display("mismatched 6\n");
        #5;

        original = 128'hfa636a2825b339c940668a3157244d17;
        #5;
        if (reverseMixed == 128'hfc1fc1f91934c98210fbfb8da340eb21)
            $display("matched 7\n");
        else
            $display("mismatched 7\n");
        #5;

        original = 128'h4915598f55e5d7a0daca94fa1f0a63f7;
        #5;
        if (reverseMixed == 128'h076518f0b52ba2fb7a15c8d93be45e00)
            $display("matched 8\n");
        else
            $display("mismatched 8\n");
        #5;

        original = 128'h89d810e8855ace682d1843d8cb128fe4;
        #5;
        if (reverseMixed == 128'hef053f7c8b3d32fd4d2a64ad3c93071a)
            $display("matched 9\n");
        else
            $display("mismatched 9\n");
        #5;
        
    end
endmodule
