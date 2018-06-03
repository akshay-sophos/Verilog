//4 bit Comparator in Data flow model

module comp(X,Y,S,E);
input wire [3:0] X,Y;
output wire S,E;
wire [3:0]w,a;
wire t1,t2,t3;
assign w = X & ~Y;
and (t1,a[3],w[2]),(t2,a[2],a[3],w[1]),(t3,a[1],a[2],a[3],w[0]);
or (S,t1,t2,t3,w[3]);
assign a = X ~^ Y;
assign E = a[3]&a[2]&a[1]&a[0];
endmodule
