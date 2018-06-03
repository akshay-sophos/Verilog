module test;
reg x,y;
wire [3:0] o;
deco DUT(x,y,o);
initial
begin
$dumpfile("deco.vcd");
$dumpvars(0,test);
$monitor($time,": x=%b y=%b o=%4b",x,y,o);
#5 x = 0; y=0;
#5 x = 0; y=1;
#5 x = 1; y=0;
#5 x = 1; y=1;
#5 $finish;
end
endmodule
