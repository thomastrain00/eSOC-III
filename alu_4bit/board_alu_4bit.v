module board_alu_4bit(
	input    [9:0] Switches,
	output 	[7:0] LED
	);
			
	alu_4bit ALU(
		.A(Switches[7:4]),
		.B(Switches[3:0]),
		.ALUop(Switches[9:8]),
		.Result(LED)
	);
	
endmodule