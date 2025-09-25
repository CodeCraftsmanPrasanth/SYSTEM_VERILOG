// Code your design here
module structureunpacked;
  struct {
    integer a;
    bit [7:0] b;
    byte c;
    int d;
    reg [7:0] e;
    logic [7:0] f;
  } str;
  initial begin
    str.a=$random;
    str.b=$random;
    str.c=$random;
    str.d=$random;
    str.e=$random;
    str.f=$random;
    $display("%p",str);
  end
endmodule
