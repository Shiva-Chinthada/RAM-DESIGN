`timescale 1ns / 1ps
module ram_tb;
reg clk;
reg rd,wr;
reg[7:0]din;
reg [3:0]addr;
wire [7:0]dout;
ram uut(.din(din),.clk(clk),.rd(rd),.wr(wr),.dout(dout),.addr(addr));
initial begin
clk=0; //clock intialization
forever #10 clk=~clk;
end
initial begin
addr=0;
din=0;
rd=0; 
wr=0; 
#20;

//write operation
wr=1;
addr=2;
din=8'b11001010;
#20;
wr=0;
//read operation
rd=1;
#20;
rd=0;
#20;

//write operation
wr=1;
addr=5;
din=8'b10101011;
#20;
wr=0;
#20;
//read operation
rd=1;
#20;
rd=0;
$finish;
end

endmodule
