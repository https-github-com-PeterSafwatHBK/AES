module MixColumns_tb();
    reg [0:127] msg;
    wire [0:127] cipher;

    MixColumns m(msg, cipher);

    initial begin
        msg = 128'h6353e08c0960e104cd70b751bacad0e7;
        #5;
        if (cipher == 128'h5f72641557f5bc92f7be3b291db9f91a)
            $display("matched 1\n");
        else
            $display("mismatched 1\n");
        #5;

        msg = 128'ha7be1a6997ad739bd8c9ca451f618b61;
        #5;
        if (cipher == 128'hff87968431d86a51645151fa773ad009)
            $display("matched 2 \n");
        else
            $display("mismatched 2 \n");
        #5;

        msg = 128'h3bd92268fc74fb735767cbe0c0590e2d;
        #5;
        if (cipher == 128'h4c9c1e66f771f0762c3f868e534df256)
            $display("matched 3 \n");
        else
            $display("mismatched 3 \n");
        #5;

        msg = 128'h2d6d7ef03f33e334093602dd5bfb12c7;
        #5;
        if (cipher == 128'h6385b79ffc538df997be478e7547d691)
            $display("matched 4 \n");
        else
            $display("mismatched 4 \n");
        #5;

        msg = 128'h36339d50f9b539269f2c092dc4406d23;
        #5;
        if (cipher == 128'hf4bcd45432e554d075f1d6c51dd03b3c)
            $display("matched 5 \n");
        else
            $display("mismatched 5 \n");
        #5;

        msg = 128'he8dab6901477d4653ff7f5e2e747dd4f;
        #5;
        if (cipher == 128'h9816ee7400f87f556b2c049c8e5ad036)
            $display("matched 6 \n");
        else
            $display("mismatched 6 \n");
        #5;


        msg = 128'hb458124c68b68a014b99f82e5f15554c;
        #5;
        if (cipher == 128'hc57e1c159a9bd286f05f4be098c63439)
            $display("matched 7 \n");
        else
            $display("mismatched 7 \n");
        #5;

        msg = 128'h3e1c22c0b6fcbf768da85067f6170495;
        #5;
        if (cipher == 128'hbaa03de7a1f9b56ed5512cba5f414d23)
            $display("matched 8 \n");
        else
            $display("mismatched 8 \n");
        #5;

        msg = 128'h54d990a16ba09ab596bbf40ea111702f;
        #5;
        if (cipher == 128'he9f74eec023020f61bf2ccf2353c21c7)
            $display("matched 9 \n");
        else
            $display("mismatched 9 \n");
        #5;

end

endmodule
