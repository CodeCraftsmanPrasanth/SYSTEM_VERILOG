// Code your design here
class parent;
  rand int value;
  constraint a1{value >100 & value < 200;}
endclass

class child extends parent;
  constraint a1{value < 100 & value > 0;}
endclass

module constraint_example;
  parent p=new();
  child c=new();
  initial begin    
    repeat(10) begin
      p.randomize();
      c.randomize();
      $display("value1 parent = %0d, value1 child =%0d", p.value, c.value);
    end
  end
endmodule

# value1 parent = 163, value1 child =8
# value1 parent = 194, value1 child =22
# value1 parent = 164, value1 child =38
# value1 parent = 116, value1 child =94
# value1 parent = 144, value1 child =4
# value1 parent = 187, value1 child =56
# value1 parent = 177, value1 child =16
# value1 parent = 174, value1 child =14
# value1 parent = 118, value1 child =93
# value1 parent = 122, value1 child =64
