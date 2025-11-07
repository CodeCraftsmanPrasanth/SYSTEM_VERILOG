// Code your design here
module type_casting;
  string name;
  int num[2];
  real rnum;
  
  initial begin
    name="a";
    rnum=26.6;
    num[0]=int'(name);
    num[1]=int'(rnum);
    rnum=0.12345+real'({5'd26});
    $display("num[0]=%0d",num[0]);
    $display("num[1]=%0d",num[1]);
    $display("rnum=%0f",rnum);
  end
endmodule

num[0]=97
num[1]=27
rnum=26.123450
