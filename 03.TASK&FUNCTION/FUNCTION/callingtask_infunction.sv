module functionex;
  function [31:0] increment();
    int a;
    a++;
    decr();
    return a;
  endfunction
  
  task decr();
    int b;
    b--;
  endtask
   
  initial begin
    for (int i=0;i<5;i++) begin
      $display(increment());
    end
  end
endmodule
