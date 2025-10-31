class example;
  int a=$random,b=$random;
  function [31:0] display();
    return a+b;
  endfunction
endclass

module addtion;
  initial begin
    example q1;
    q1=new();
    $display("%0t,%0d",$time,q1.display());
  end
endmodule
