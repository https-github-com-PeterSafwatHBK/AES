module KeyExpansion_tb;


  parameter NK1 = 4;
  reg [0:(32*NK1)-1] Key1;
  wire [0:(4*(NK1+6+1)*32)-1] Words1;


  parameter NK2 = 6;
  reg [0:(32*NK2)-1] Key2;
  wire [0:(4*(NK2+6+1)*32)-1] Words2;


  parameter NK3 = 8;
  reg [0:(32*NK3)-1] Key3;
  wire [0:(4*(NK3+6+1)*32)-1] Words3;



  KeyExpansion #(.NK(NK1)) dut1(
    .Key(Key1),
    .Words(Words1)
  );

  KeyExpansion #(.NK(NK2)) dut2(
    .Key(Key2),
    .Words(Words2)
  );

  KeyExpansion #(.NK(NK3)) dut3(
    .Key(Key3),
    .Words(Words3)
  );

  initial begin
	Key1=128'h2b7e151628aed2a6abf7158809cf4f3c;
	#5;
	if(Words1!=1408'h2b7e151628aed2a6abf7158809cf4f3ca0fafe1788542cb123a339392a6c7605f2c295f27a96b9435935807a7359f67f3d80477d4716fe3e1e237e446d7a883bef44a541a8525b7fb671253bdb0bad00d4d1c6f87c839d87caf2b8bc11f915bc6d88a37a110b3efddbf98641ca0093fd4e54f70e5f5fc9f384a64fb24ea6dc4fead27321b58dbad2312bf5607f8d292fac7766f319fadc2128d12941575c006ed014f9a8c9ee2589e13f0cc8b6630ca6)
	begin
		$display("mismatched test one");
	end
	else 
	begin
		$display("matched test one");
	end


        Key2=192'h8e73b0f7da0e6452c810f32b809079e562f8ead2522c6b7b;
	#5;
	if(Words2!=1664'h8e73b0f7da0e6452c810f32b809079e562f8ead2522c6b7bfe0c91f72402f5a5ec12068e6c827f6b0e7a95b95c56fec24db7b4bd69b5411885a74796e92538fde75fad44bb095386485af05721efb14fa448f6d94d6dce24aa326360113b30e6a25e7ed583b1cf9a27f939436a94f767c0a69407d19da4e1ec1786eb6fa64971485f703222cb8755e26d135233f0b7b340beeb282f18a2596747d26b458c553ea7e1466c9411f1df821f750aad07d753ca4005388fcc5006282d166abc3ce7b5e98ba06f448c773c8ecc720401002202)
	begin
		$display("mismatched test two");
	end
	else 
	begin
		$display("matched test two");
	end

	Key3=256'h603deb1015ca71be2b73aef0857d77811f352c073b6108d72d9810a30914dff4;
	#5;
	if(Words3!=1920'h603deb1015ca71be2b73aef0857d77811f352c073b6108d72d9810a30914dff49ba354118e6925afa51a8b5f2067fcdea8b09c1a93d194cdbe49846eb75d5b9ad59aecb85bf3c917fee94248de8ebe96b5a9328a2678a647983122292f6c79b3812c81addadf48ba24360af2fab8b46498c5bfc9bebd198e268c3ba709e0421468007bacb2df331696e939e46c518d80c814e20476a9fb8a5025c02d59c58239de1369676ccc5a71fa2563959674ee155886ca5d2e2f31d77e0af1fa27cf73c3749c47ab18501ddae2757e4f7401905acafaaae3e4d59b349adf6acebd10190dfe4890d1e6188d0b046df344706c631e)
	begin
		$display("mismatched test three");
	end
	else 
	begin
		$display("matched test three");
	end
  end

endmodule
