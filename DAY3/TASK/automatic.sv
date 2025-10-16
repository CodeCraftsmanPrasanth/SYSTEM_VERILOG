// Code your design here
module task_ex;
  int b;
  task automatic increment();
    int a ;
    a++;
    b++;
    $display("a=%0d",a);
  endtask
  initial begin
    increment();
    increment();
    increment();
    $display("b=%0d",b);
  end
endmodule

a=1
a=1
a=1
b=3
