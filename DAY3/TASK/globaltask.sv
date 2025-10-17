task adder (input [3:0] a,b,output [4:0] c);
  c=a+b;
endtask
module add;
  int a,b,c;
  initial begin
    a=5;b=5;
    adder(a,b,c);
    $display("c=%d",c);
  end
endmodule
