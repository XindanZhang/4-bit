module DFF(
            A,
			B,
			C,
			Z);
input A;
input B;
input C;
output Z;

reg Z;

always@(posedge B or posedge C)
begin
    if(C==1'b1)
	    Z<=  {$random} % 2;
	else
        Z <= A;
end

endmodule



module NOT(
            A,
			Z
			);
			
input A;
output Z;			

wire Z;
assign Z= ~A;

endmodule

module AND2(
            A,
			B,
			Z
			);
			
input A;
input B;
output Z;			

wire Z;
assign Z= A&B;

endmodule

module XOR2(
            A,
			B,
			Z
			);
			
input A;
input B;
output Z;			

wire Z;
assign Z= A^B;

endmodule

module AND3(
            A,
			B,
			C,
			Z
			);
			
input A;
input B;
input C;
output Z;			

wire Z;
assign Z= A&B&C;

endmodule

module AND4(
            A,
			B,
			C,
			D,
			Z
			);
			
input A;
input B;
input C;
input D;
output Z;			

wire Z;
assign Z= A&B&C&D;

endmodule


module AND5(
            A,
			B,
			C,
			D,
			E,
			Z
			);
			
input A;
input B;
input C;
input D;
input E;
output Z;			

wire Z;
assign Z= A&B&C&D&E;

endmodule

module NAND2(
            A,
			B,
			Z
			);
			
input A;
input B;
output Z;			

wire Z;
assign Z= ~(A&B);

endmodule

module NAND3(
            A,
			B,
			C,
			Z
			);
			
input A;
input B;
input C;
output Z;			

wire Z;
assign Z=~(A&B&C);

endmodule

module NAND4(
            A,
			B,
			C,
			D,
			Z
			);
			
input A;
input B;
input C;
input D;
output Z;			

wire Z;
assign Z= ~(A&B&C&D);

endmodule





module OR2(
            A,
			B,
			Z
			);
			
input A;
input B;
output Z;			

wire Z;
assign Z= A|B;

endmodule

module OR3(
            A,
			B,
			C,
			Z
			);
			
input A;
input B;
input C;
output Z;			

wire Z;
assign Z= A|B|C;

endmodule

module OR4(
            A,
			B,
			C,
			D,
			Z
			);
			
input A;
input B;
input C;
input D;
output Z;			

wire Z;
assign Z= A|B|C|D;

endmodule

module OR5(
            A,
			B,
			C,
			D,
			E,
			Z
			);
			
input A;
input B;
input C;
input D;
input E;
output Z;			

wire Z;
assign Z= A|B|C|D|E;

endmodule

module NOR2(
            A,
			B,
			Z
			);
			
input A;
input B;
output Z;			

wire Z;
assign Z= ~(A|B);

endmodule

module NOR3(
            A,
			B,
			C,
			Z
			);
			
input A;
input B;
input C;
output Z;			

wire Z;
assign Z=~(A|B|C);

endmodule

module NOR4(
            A,
			B,
			C,
			D,
			Z
			);
			
input A;
input B;
input C;
input D;
output Z;			

wire Z;
assign Z= ~(A|B|C|D);

endmodule












