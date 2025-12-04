class seq_item;
  rand bit [7:0] value1;
  rand bit [7:0] value2;

  constraint value1_c {value1 inside {[20:60]};}
  static constraint value2_c {value2 inside {40,60, 80};}

endclass

module constraint_example;
  seq_item item1, item2;
  
  initial begin
    item1 = new();
    item2 = new();
    
    item1.randomize();
    item2.randomize();
    $display("Before disabling constraint");
    $display("item1: value1 = %0d, value2 = %0d", item1.value1, item1.value2);
    $display("item2: value1 = %0d, value2 = %0d", item2.value1, item2.value2);
    
    item2.value2_c.constraint_mode(0);  // To disable constraint for value2 using handle item2
    item1.randomize();
    item2.randomize();
    $display("After disabling constraint for all value2 alone");
    $display("item1: value1 = %0d, value2 = %0d", item1.value1, item1.value2);
    $display("item2: value1 = %0d, value2 = %0d", item2.value1, item2.value2);
  end
endmodule

item1: value1 = 28, value2 = 60
item2: value1 = 22, value2 = 60
After disabling constraint for all value2 alone
item1: value1 = 29, value2 = 63
item2: value1 = 60, value2 = 72
