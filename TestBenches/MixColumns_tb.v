module MixColumns_tb();
reg [0:127] msg;
wire [0:127] cipher;

initial begin
    $monitor("output = %h, input= %h", cipher, msg);
    $display("expected = 5f72641557f5bc92f7be3b291db9f91a");
    msg = 128'h6353e08c0960e104cd70b751bacad0e7;
    #10;

    $display("expected = ff87968431d86a51645151fa773ad009");
    msg = 128'ha7be1a6997ad739bd8c9ca451f618b61;
    #10;

    $display("expected = 4c9c1e66f771f0762c3f868e534df256");
    msg = 128'h3bd92268fc74fb735767cbe0c0590e2d;
    #10;
end
MixColumns m(msg, cipher);

endmodule
