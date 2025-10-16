module task_ex;
  int b;
  task increment();
    int a ; #5
    a++;
    b++;
    $display("%0t a=%0d",$time,a);
    decrement();
  endtask
  task decrement();
    int c ;#5
    c--;
    $display("%0t c=%0d",$time,c);
  endtask
  initial begin
    increment();
    increment();
    increment();
    $display("%0t b=%0d",$time,b);
  end
endmodule
