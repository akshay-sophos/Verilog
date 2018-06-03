module test;
reg [3:0]x,y;
wire e,s;
comp DUT(x,y,s,e);
initial
begin
$dumpfile("comp.vcd");
$dumpvars(0,test);
$monitor($time,": x= %4b y= %4b e = %b s = %b",x,y,e,s);
#5 x = 0000; y=0000;
#5 x = 0100; y=0000;
#2 x = 1100; y=1110;
#2 x = 0100; y=1110;
#2 x = 0001; y=0010;
#2 x = 0101; y=0101;
#5 $finish;
end
endmodule
