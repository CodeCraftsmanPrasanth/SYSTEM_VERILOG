module functionex1;
  function int adder (input int a,b);
    return a+b;
  endfunction
  
endmodule
module functionex2;
  functionex1 q();
  initial begin
    for(int a=0;a<5;a++) begin
      $display("%0d",q.adder($random,$random));
    end
  end
endmodule
