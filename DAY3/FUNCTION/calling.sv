module functionex;
  int i;
  function [31:0] increment();
    int a;
    a++;
    $display("%0t b=%0d",$time,decrement());
    return a;
  endfunction
  
  function [31:0] decrement();
    int b;
    b--;
    return b;
  endfunction 
  initial begin
    for (i=0;i<5;i++) begin
      $display("%0t a=%0d",$time,increment());
    end
  end
endmodule
