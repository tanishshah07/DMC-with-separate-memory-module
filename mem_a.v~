module memA(
	input clk,
	input write_enable,
	input [7:0] data_a,
	input [7:0] add_a,
	output reg [7:0] data_out_a
);

reg [7:0] mem [7:0];

always@(posedge clk) begin

	if(write_enable==1'b1) begin
	
		mem[add_a]<=data_a;
		$display("the data is written on A %t  %d",$time,mem[add_a]);
	
	end

	else if(write_enable==1'b0) begin
	
		data_out_a<=mem[add_a];
	
	
	end

	




end



endmodule
