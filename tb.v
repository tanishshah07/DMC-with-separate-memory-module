
`include "mem_a.v"
`include "mem_b.v"
`include "main.v"
module dmc_tb;

reg clk;
reg mem_select;
reg write_enable;
reg [7:0] data_ex;
reg [7:0] add_ex;
wire [7:0] data_out;

parameter A=0;
parameter B=1;
dmc dut(

	.clk(clk),
	.mem_select(mem_select),
	.write_enable(write_enable),
	.data_ex(data_ex),
	.add_ex(add_ex),
	.data_out(data_out)

);



initial begin

	clk=0;
	write_enable=1;
	mem_select=A;
	add_ex=3'b010;
	data_ex=4'ha;

	#40;

	write_enable=0;
	mem_select=A;
	add_ex=3'b010;

	#10;
	#10;
	#20;

	write_enable=1;
	mem_select=B;
	add_ex=3'b011;
	data_ex=4'hb;

	#40;
        write_enable=0;
	mem_select=B;
	add_ex=3'b011;

	#60;

	$stop;
end

initial forever #5 clk=~clk;

endmodule
