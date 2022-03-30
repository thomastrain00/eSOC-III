module blinkLED(
	input wire CLK, // 24 MHz clock 
	output reg LED
	);

	reg [31:0] counter;
	
	always @ (posedge CLK) begin
		if(counter <= 12000000)
			counter <= counter + 1;
		else begin
			counter <= 0;
			LED <= ~LED;
		end
	end
	
endmodule