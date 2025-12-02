class seq_item;
  rand bit [7:0] value1;
  rand bit [7:0] value2;

  constraint value1_c {value1 inside {[10:30]};}
  constraint value2_c {value2 inside {40,70, 80};}

endclass

module ex;
  initial begin
    seq_item f;
    f=new();
    f.randomize();
    $display("value1 =%0d, value2 = %0d",f.value1,f.value2);
    f.value2.rand_mode(0);
    f.randomize();
    $display("value1 =%0d, value2 = %0d",f.value1,f.value2);
  end
endmodule

# value1 =20, value2 = 40
# value1 =15, value2 = 40
