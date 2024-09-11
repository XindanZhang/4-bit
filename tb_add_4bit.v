`timescale 1ns/1ps


module tb_add_4bit;
reg	 [3:0]	A;
reg	 [3:0]	B;
reg			C_i;

wire [3:0] 	S;
wire		C_o;

reg			clk;


initial begin
	clk = 1'b0;
	A   = 1'b0;
	B   = 1'b0;
	C_i = 1'b0;
end


always #10 clk = !clk;

//每个时钟周期随机生成数据
always@(posedge clk) begin
	A <= {$random}%16;
	B <= {$random}%16;
	C_i <= {$random}%2;

end

add_4bit add_4bit(A,B,C_i,S,C_o);



endmodule

