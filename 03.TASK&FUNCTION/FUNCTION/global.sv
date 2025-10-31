function int adder (input int a,b);
  return a+b;
endfunction
  

module functionex;
  
  initial begin
    for(int a=0;a<5;a++) begin
      $display("%0d",adder($random,$random));
    end
  end
endmodule
