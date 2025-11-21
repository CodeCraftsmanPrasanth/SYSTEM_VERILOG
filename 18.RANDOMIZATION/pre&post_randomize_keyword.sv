class random;
  rand bit [7:0] a;
  randc bit [7:0] b;
  
  function void pre_randomize();
    $display("pre_randomize: a=%0d,b=%0d",a,b);
  endfunction
  function void post_randomize();
    $display("post_randomize: a=%0d,b=%0d",a,b);
  endfunction
endclass

module random_ex;
  random ra;
  initial begin
    ra=new();
    ra.randomize();
  end
endmodule

# pre_randomize: a=0,b=0
# post_randomize: a=12,b=202
