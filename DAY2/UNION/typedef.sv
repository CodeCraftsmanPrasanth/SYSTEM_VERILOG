// Code your design here
module union_example;
  logic [31:0] x;

  typedef union {
    int a;
	byte b;
    bit [15:0] c; 
  	 } data;
	data d1;
	initial begin
      d1.a=32'h 7654_3210;
      $display("d1.a = %h",d1.a);
      $display("d1.b = %h",d1.b);
      $display("d1.c = %h",d1.c);
      d1.b= 8'h 01;
      $display("d1.a = %h",d1.a);
      $display("d1.b = %h",d1.b);
      $display("d1.c = %h",d1.c);
      d1.c= 16'h ffff;
      $display("d1.a = %h",d1.a);
      $display("d1.b = %h",d1.b);
      $display("d1.c = %h",d1.c);
	end
endmodule

d1.a = 76543210
d1.b = 10
d1.c = 3210
d1.a = 76543201
d1.b = 01
d1.c = 3201
d1.a = 7654ffff
d1.b = ff
d1.c = ffff
