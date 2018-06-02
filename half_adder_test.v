module test;
reg x,y;
wire c,s;
half_adder DUT(s,c,x,y);
initial
begin
$dumpfile("half_adder.vcd");
$dumpvars(0,test);
$monitor($time,": x= %b y= %b s = %b c = %b",x,y,s,c);
#5 x = 0; y=0;
#5 x = 1; y=1;
#5 x= 1; y = 0;
#5 x=0; y=1;
#5 $finish;
end
endmodule
