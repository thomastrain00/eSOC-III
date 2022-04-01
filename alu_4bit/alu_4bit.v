// 4-bit ALU

module alu_4bit(
    input      [3:0] A,
    input      [3:0] B,
    input      [1:0] ALUop,
    output reg [7:0] Result
    );
    
    always @ (A, B, ALUop) begin
        case(ALUop)
            2'b00:  Result = A + B;
            2'b01:  Result = A * B;
            2'b10:  Result = A % B;
            2'b11:  Result = A & B;
        endcase
    
    end
        
endmodule
