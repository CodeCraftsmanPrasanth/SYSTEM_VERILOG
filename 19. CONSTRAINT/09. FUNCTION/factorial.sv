class function_ex;
  rand int value[];
  constraint a1{value.size()==10;};
  constraint a2{foreach (value[i]) value[i]==fact(i);};
  function int fact(int i);
    if (i inside{1,0})
      fact=1;
    else begin
      fact=1;
      for(int j=i; j>=2;j--)
        fact=fact*j;
    end
  endfunction
endclass

module ex;
  initial begin
    function_ex f;
    f=new();
    f.randomize();
    $display("value =%p",f.value);
  end
endmodule

# value ='{1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880}
