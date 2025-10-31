module add;
  int a,b,c;
  task adder (input [3:0] a,b,output [4:0] c);
    c=a+b;
	endtask
  initial begin
    a=5;b=5;
    adder(a,b,c);
    $display("c=%d",c);
  end
endmodule

module glo;
  int x,y,z;
  add q();
  initial begin
    x=10;y=10;
    q.adder(x,y,z);
    $display("z=%d",z);
  end
endmodule
