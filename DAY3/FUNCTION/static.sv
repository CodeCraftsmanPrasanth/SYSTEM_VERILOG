module functionex;
  int a,b,c;
  function  [31:0] adder();
    int a;
    a++;
    return a;
  endfunction
  
  initial begin
    $display("%d",adder());
     $display("%d",adder());
     $display("%d",adder());
  end
endmodule

1
2
3
