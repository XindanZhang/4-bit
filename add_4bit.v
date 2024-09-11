module add_4bit(
	//4bit二进制输入
	input   wire [3:0]	A,
	input   wire [3:0]	B,
	//进位输入
	input	wire		C_i,
	//和输出
	output  wire [3:0] 	S,
	//进位输出
	output  wire		C_o
);
//中间变量 对应P4 -> P[3]
wire [3:0] P,G;
wire	G11;
wire	G12;
wire	G13;
wire	G14;
wire	G15;
wire	G16;
wire	G17;
wire	G18;
wire	G19;
wire	G20;

wire	T0;
wire	T1;
wire	T2;

//按位与 按位异或
XOR2 X0(.Z(P[0]),.A(A[0]),.B(B[0]));
XOR2 X1(.Z(P[1]),.A(A[1]),.B(B[1]));
XOR2 X2(.Z(P[2]),.A(A[2]),.B(B[2]));
XOR2 X3(.Z(P[3]),.A(A[3]),.B(B[3]));

AND2 A0(.Z(G[0]),.A(A[0]),.B(B[0]));
AND2 A1(.Z(G[1]),.A(A[1]),.B(B[1]));
AND2 A2(.Z(G[2]),.A(A[2]),.B(B[2]));
AND2 A3(.Z(G[3]),.A(A[3]),.B(B[3]));

//下方为按照原理图的门电路
AND2 A4(.Z(G11),.A(P[3]),.B(G[2]));
AND3 A5(.Z(G12),.A(P[3]),.B(P[2]),.C(G[1]));
AND4 A6(.Z(G13),.A(P[3]),.B(P[2]),.C(G[0]),.D(P[1]));
AND5 A7(.Z(G14),.A(P[3]),.B(P[2]),.C(P[1]),.D(C_i),.E(P[0]));

AND2 A8(.Z(G15),.A(P[2]),.B(G[1]));
AND3 A9(.Z(G16),.A(P[2]),.B(P[1]),.C(G[0]));
AND4 A10(.Z(G17),.A(P[2]),.B(P[1]),.C(C_i),.D(P[0]));
AND2 A11(.Z(G18),.A(P[1]),.B(G[0]));
AND3 A12(.Z(G19),.A(P[1]),.B(P[0]),.C(C_i));
AND2 A13(.Z(G20),.A(P[0]),.B(C_i));

OR5	O0(.Z(C_o),.A(G11),.B(G12),.C(G13),.D(G[3]),.E(G14));

OR4	O1(.Z(T0),.A(G15),.B(G16),.C(G17),.D(G[2]));
XOR2 X4(.Z(S[3]),.A(P[3]),.B(T0));

OR3	O2(.Z(T1),.A(G19),.B(G18),.C(G[1]));
XOR2 X5(.Z(S[2]),.A(P[2]),.B(T1));

OR2	O3(.Z(T2),.A(G20),.B(G[0]));
XOR2 X6(.Z(S[1]),.A(P[1]),.B(T2));

XOR2 X7(.Z(S[0]),.A(P[0]),.B(C_i));


endmodule
