`timescale 1ps/1ps
module InvShiftRows_tb();
reg [0:127] word_tb;
wire [0:127] shifted_tb;
initial
begin
    $monitor("%b %b",word_tb,shifted_tb);
    #5 
    word_tb=128'h_bdb52189f261b63d0b107c9e8b6e776e;          //Expected   bd6e7c3df2b5779e0b61216e8b10b689
    if (shifted_tb==128'h_bd6e7c3df2b5779e0b61216e8b10b689) begin
      $display("matched");
    end
    else begin
      $display("mismatched");
    end
    #10
    word_tb=128'h_fde596f1054737d235febad7f1e3d04e;          //Expected   fde3bad205e5d0d73547964ef1fe37f1
    if (shifted_tb==128'h_fde3bad205e5d0d73547964ef1fe37f1) begin
      $display("matched");
    end
    else begin
      $display("mismatched");
    end
    #15
    word_tb=128'h_d1c4941f7955f40fb46f6c0ad68730ad;          //Expected   d1876c0f79c4300ab45594add66ff41f
    if (shifted_tb==128'h_d1876c0f79c4300ab45594add66ff41f) begin
      $display("matched");
    end
    else begin
      $display("mismatched");
    end
    #20
    $stop;
end

InvShiftRows dut(
  .word(word_tb),
  .shifted(shifted_tb)
);
endmodule