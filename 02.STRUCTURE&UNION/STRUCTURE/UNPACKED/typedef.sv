// Code your design here
module structurepacked;
  typedef struct {
    integer a;
    bit [7:0] b;
    byte c;
    int d;
    reg [7:0] e;
    logic [7:0] f;
    string g;
  } str;
  initial begin
    str q1,q2;
    q1.a=$random;
    q1.b=$random;
    q1.c=$random;
    q1.d=$random;
    q1.e=$random;
    q1.f=$random;
    q1.g="Hello_system";
    q2.a=$random;
    q2.b=$random;
    q2.c=$random;
    q2.d=$random;
    q2.e=$random;
    q2.f=$random;
    q2.g="Hello_system 2.0";
    $display("%p",q1);
    $display("%p",q2);
  end
endmodule

'{a:303379748, b:129, c:9, d:-1309649309, e:13, f:141, g:"Hello_system"}
# '{a:-1295874971, b:18, c:1, d:114806029, e:118, f:61, g:"Hello_system 2.0"}
