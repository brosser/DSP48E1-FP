`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//
// Create Date:   11:44:26 09/05/2012
// Design Name:   FPAddSub_AlignModule
// Module Name:   P:/VerilogTraining/FPAddSub_Fred/FBAddSub_AlignModule_tb.v
// Project Name:  FPAddSub_Fred
//
// Verilog Test Fixture created by ISE for module: FPAddSub_AlignModule
// 
////////////////////////////////////////////////////////////////////////////////

module FPAddSub_AlignModule_tb;

	// Inputs
	reg [30:0] A;
	reg [30:0] B;

	// Outputs
	wire [7:0] Es;
	wire MaxAB;
	wire [24:0] Mmax;
	wire [49:0] Mmin;

	// Instantiate the Unit Under Test (UUT)
	FPAddSub_AlignModule uut (
		.A(A), 
		.B(B), 
		.Es(Es), 
		.MaxAB(MaxAB), 
		.Mmax(Mmax), 
		.Mmin(Mmin)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#10;
        
		// Add stimulus here
		#10 A = 32'b0100_0000_0000_0000_0000_0000_0000_0001; B = 32'b0100_0000_0000_0000_0000_0000_0000_0001;
		#10 A = 32'b0011_1111_1000_0000_0000_0000_0000_0001; B = 32'b0100_0000_0100_0000_0000_0000_0000_0010;
		#10 A = 32'b0100_0001_0000_0000_0000_0000_0000_0010; B = 32'b0010_1110_1100_0000_0000_0000_0001_0001;
		#10 A = 32'b0100_0000_1000_0000_0000_0000_0000_0001; B = 32'b0100_0000_1100_0000_0000_0000_0000_0000;
		#10 A = 32'b1011_1111_1000_0000_0000_0000_0000_0101; B = 32'b0100_0000_1101_0000_0000_0000_0000_0011;
		#10 A = 32'b1100_0000_0000_0000_0000_0000_1100_1001; B = 32'b1100_0001_0111_1111_1111_1111_1111_1111;
		#10 A = 32'b0100_0000_0000_0000_0000_0000_0000_0001; B = 32'b1100_0001_1100_0000_0000_1111_1100_0011;
		#10 A = 32'b0011_1101_0000_0000_0000_0000_0000_0001; B = 32'b1100_0000_1100_0000_0000_0101_0100_0011;
		#10 A = 32'b1010_0000_0000_0000_0000_0000_0000_0001; B = 32'b0011_1111_0100_0000_0000_1000_0010_0110;
		#10 A = 32'b1010_1011_0000_0000_0000_0000_0000_0001; B = 32'b0011_1111_1100_0000_0011_0000_0010_0001;
		#10 A = 32'b0000_0000_0000_0000_0000_0000_0000_0001; B = 32'b1100_0000_1100_0000_0001_0000_0000_1101;
		#10 $finish;
		
	end
      
endmodule
