module add (

	input         [20:0]	A ,
	input signed  [17:0]	B	,

	output signed [22:0]	C);

	wire signed [21:0]	A_signed;

assign A_signed = {1'b0,A};
assign C = A_signed + B;

endmodule

