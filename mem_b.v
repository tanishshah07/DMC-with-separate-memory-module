module memB(
	input clk,
	input write_enable,
	input [7:0] data_b,
	input [7:0] add_b,
	output reg [7:0] data_out_b
);

reg [7:0] mem [7:0];

always@(posedge clk) begin

	if(write_enable==1'b1) begin
	
		mem[add_b]<=data_b;
		$display("the data is written on B %t  %d",$time,mem[add_b]);
	
	end

	else if(write_enable==1'b0) begin
	
		data_out_b<=mem[add_b];
	
	
	end

	




end



endmodule
