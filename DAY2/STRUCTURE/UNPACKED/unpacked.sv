// Code your design here
module structureunpacked;
  struct {
    integer a;
    bit [7:0] b;
    byte c;
    int d;
    reg [7:0] e;
    logic [7:0] f;
    string g;
  } str;
  initial begin
    str.a=$random;
    str.b=$random;
    str.c=$random;
    str.d=$random;
    str.e=$random;
    str.f=$random;
    str.g="Hello verilog";
    $display("%p",str);
  end
endmodule

'{a:303379748, b:129, c:9, d:-1309649309, e:13, f:141, g:"Hello verilog"}
