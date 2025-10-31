module functionex;
  int i;
  task increment();
    int a;
    a++;
    $display("%0t b=%0d",$time,decrement());
    
  endtask
  
  function [31:0] decrement();
    int b;
    b--;
    return b;
  endfunction 
  initial begin
    for (i=0;i<5;i++) begin
      increment();
    end
  end
endmodule
