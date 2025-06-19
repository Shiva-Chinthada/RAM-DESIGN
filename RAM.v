`timescale 1ns / 1ps
module ram(clk,rd,wr,din,dout,addr);
input clk; //clock
input rd; //to read enable
input wr; //to wtite enable
input [3:0]addr; //for 4 bit address
input [7:0]din; //for 8 bit input data
output reg [7:0]dout; //
reg [7:0]mem[15:0]; //for memory with 16 locations, 8 bit data 
always@(posedge clk)
begin
if(wr)begin 
mem[addr]<=din; //write operation
end
if(rd)begin
dout<=mem[addr]; //read operation
end
end
endmodule
