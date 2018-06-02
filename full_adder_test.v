module test;
reg x,y,cin;
wire cout,s;
full_adder DUT(s,cout,x,y,cin);
initial
begin
$dumpfile("full_adder.vcd");
$dumpvars(0,test);
$monitor($time,": x= %b y= %b cin = %b s = %b cout = %b",x,y,cin,s,cout);
#5 x = 0; y=0; cin = 0;
#5 x = 0; y=0; cin = 1;
#5 x = 1; y=0; cin = 0;
#5 x = 1; y=0; cin = 1;
#5 x = 0; y=1; cin = 0;
#5 x = 0; y=1; cin = 1;
#5 x = 1; y=1; cin = 0;
#5 x = 1; y=1; cin = 1;
#5 $finish;
end
endmodule
