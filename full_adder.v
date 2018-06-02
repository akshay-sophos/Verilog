//Full Adder in Data flow model

module full_adder(s,cout,x,y,cin);
input wire x,y,cin;
output wire s,cout;
wire c1,c2,s1;
xor (s,x,y,cin),(s1,x,y),(cout,c2,c1);
and (c1,x,y),(c2,cin,s1);
endmodule
