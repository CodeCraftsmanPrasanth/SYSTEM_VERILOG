module functionex;

  function automatic [31:0] adder();
    int a;
    a++;
    return a;
  endfunction
  
  initial begin
    $display("%0d",adder());
    $display("%0d",adder());
    $display("%0d",adder());
  end
endmodule

1
1
1
