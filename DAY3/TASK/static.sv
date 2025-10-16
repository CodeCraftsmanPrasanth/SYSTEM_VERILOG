module task_ex;
  int b;
  task increment();
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
a=2
a=3
b=3
