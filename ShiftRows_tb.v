`timescale 1ps/1ps
module ShiftRows_tb();
reg [0:127] word_tb;
wire [0:127] shifted_tb;
initial
begin
    $monitor("%b %b",word_tb,shifted_tb);
    #5 
    word_tb=128'h_3b59cb73_fcd90ee0_5774222d_c067fb68;          //Expected   3bd92268fc74fb735767cbe0c0590e2d
    #10
    word_tb=128'h_63cab704_0953d051_cd60e0e7_ba70e18c;          //Expected   6353e08c0960e104cd70b751bacad0e7
    #15
    word_tb=128'h_a761ca9b_97be8b45_d8ad1a61_1fc97369;          //Expected   a7be1a6997ad739bd8c9ca451f618b61
    if (shifted_tb==128'hd4415d30e0bf52aeb8b411f11e2798e5) begin
      $display("matched");
    end
    else begin
      $display("mismatched");
    end
    #20
    $stop;
end

ShiftRows dut(
  .word(word_tb),
  .shifted(shifted_tb)
);
endmodule