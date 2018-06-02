//Half Adder in Data flow model

module half_adder(s,c,x,y);
input wire x,y;
output wire s,c;
xor (s,x,y);
and (c,x,y);
endmodule
