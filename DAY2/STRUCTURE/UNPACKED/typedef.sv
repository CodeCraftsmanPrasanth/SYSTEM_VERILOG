// Code your design here
module structureunpacked;
  typedef struct {
    integer a;
    bit [7:0] b;
    byte c;
    int d;
    reg [7:0] e;
    logic [7:0] f;
  } str;
  initial begin
    str q1,q2;
    q1.a=$random;
    q1.b=$random;
    q1.c=$random;
    q1.d=$random;
    q1.e=$random;
    q1.f=$random;
    q2.a=$random;
    q2.b=$random;
    q2.c=$random;
    q2.d=$random;
    q2.e=$random;
    q2.f=$random;
    $display("%p",q1);
    $display("%p",q2);
  end
endmodule
