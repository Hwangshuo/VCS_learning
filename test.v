`timescale 1ns/1ns

module test;

reg clk;
reg rst_n;

reg [20:0] A;
reg signed [17:0] B;

wire signed [22:0] C;

initial begin
	clk = 0;
	rst_n = 0;
        A = 21'b0;
	B = 18'b0;
	#10;
	rst_n = 1;
	repeat(80) @(posedge clk) begin
	  A = A + 21'b1;
	end
	
    #2000;
    $finish;

end

always #5 clk = ~clk;

initial begin
	$fsdbDumpfile("./rtl.fsdb");
	$fsdbDumpvars("+all");
end

add add_inst(
	.A(A),
	.B(B),
	.C(C));

endmodule

