`timescale 1ns/1ps
module dmc(
	input clk,
	input mem_select,
	input write_enable,
	input [7:0] data_ex,
	input [7:0] add_ex,
	output reg [7:0] data_out

);
parameter A=0;
parameter B=1;


reg dmc_select;
reg [7:0] add_dmc,add_a,add_b;
reg [7:0] data_dmc,data_a,data_b;
wire [7:0] data_out_dmc;
wire [7:0] null;


memA t(.clk(clk),.write_enable(write_enable),.data_a(data_a),.add_a(add_a),.data_out_a(meme_select?null:data_out_dmc);

memB t1(.clk(clk),.write_enable(write_enable),.data_b(data_b),.add_b(add_b),.data_out_b(data_out_dmc));


always@(posedge clk) begin

	if (write_enable==1'b1) begin
		dmc_select<=mem_select; // come from tb
		data_dmc<=data_ex;
		add_dmc<=add_ex;
		
		if(dmc_select==A) begin
		data_a<=data_dmc;
		add_a<=add_dmc;
		end
	
		else if(dmc_select==B) begin
			data_b<=data_dmc;
			add_b<=add_dmc;
		end
	end


	else if (write_enable==1'b0) begin
		dmc_select<=mem_select;
		add_dmc<=add_ex;
		
		if(dmc_select==A) begin
			add_a<=add_dmc;		
			data_out<=data_out_dmc;

		end
	
		else if(dmc_select==B) begin
			add_b<=add_dmc;		
			data_out<=data_out_dmc;

		end
	
	
	end
	

end

endmodule





