module deco(i1,i2,o);
input wire i1,i2;
output [3:0]o;
assign o = 4'b0000;
assign o[0] = (~i1&~i2)&~((~i1&i2)&(i1&~i2)&(i1&i2));
assign o[1] = ~i1&i2;
assign o[2] = i1&~i2;
assign o[3] = i1&i2;
endmodule
