class seq_item;
  rand bit [7:0] value1;
  rand bit [7:0] value2;

  constraint value1_c {value1 inside {[10:30]};}
  static constraint value2_c {value2 inside {40,70, 80};}

endclass

module ex;
  initial begin
    seq_item f,g;
    f=new();
    g=new();
    f.randomize();
    g.randomize();
    $display("f : value1 =%0d, value2 = %0d",f.value1,f.value2);
    $display("g : value1 =%0d, value2 = %0d",g.value1,g.value2);
    f.value2_c.constraint_mode(0);
    f.randomize();
    g.randomize();
    $display("f : value1 =%0d, value2 = %0d",f.value1,f.value2);
    $display("g : value1 =%0d, value2 = %0d",g.value1,g.value2);
  end
endmodule

# f : value1 =20, value2 = 40
# g : value1 =19, value2 = 80
# f : value1 =15, value2 = 95
# g : value1 =29, value2 = 194
