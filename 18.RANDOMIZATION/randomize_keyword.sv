// Code your design here
class random;
  rand bit [7:0] a;
  randc bit [7:0] b;
  
  function void display();
    $display("a=%0d,b=%0d",a,b);
  endfunction
endclass

module random_ex;
  random ra;
  initial begin
    ra=new();
    $display("Before randomize");
    ra.display();
    ra.randomize();
    $display("After randomize");
    ra.display();
  end
endmodule

# Before randomize
# a=0,b=0
# After randomize
# a=12,b=202
