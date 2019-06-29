module Register(clock, operation, in, out);

	input wire clock;
	input wire [1:0] operation;
	input wire [3:0] in;
	output reg [3:0] out;

	parameter CLEAR = 2'b00;
	parameter LOAD = 2'b01;
	parameter HOLD = 2'b10;
	parameter SHIFTL = 2'b11;

	always @(posedge clock) begin
		case(operation)
			CLEAR:
				out <= 0;
			LOAD:
				out <= in;
			HOLD:
				out <= out;
			SHIFTL:
				out <= (out << 1);
		endcase
	end
	
endmodule 