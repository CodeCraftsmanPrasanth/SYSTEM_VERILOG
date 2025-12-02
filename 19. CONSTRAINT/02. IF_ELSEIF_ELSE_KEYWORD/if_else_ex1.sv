class seq_item;
  rand bit [7:0] value;
  rand enum {Fail,Pass} scale;

  constraint scale_c { if(scale == Pass) (value > 35 & value <= 100);
                      else (value <35 & value > 0) ;}
endclass

module constraint_example;
  seq_item s;
  initial begin
    s = new();
    repeat(20) begin
      s.randomize();
      $display("scale = %s, value = %0d", s.scale.name(), s.value);
    end
  end
endmodule

# scale = Pass, value = 90
# scale = Pass, value = 42
# scale = Pass, value = 79
# scale = Pass, value = 88
# scale = Pass, value = 53
# scale = Fail, value = 32
# scale = Pass, value = 50
# scale = Pass, value = 42
# scale = Fail, value = 9
# scale = Fail, value = 16
# scale = Pass, value = 99
# scale = Fail, value = 20
# scale = Pass, value = 55
# scale = Fail, value = 5
# scale = Fail, value = 32
# scale = Fail, value = 19
# scale = Pass, value = 61
# scale = Fail, value = 15
# scale = Pass, value = 38
# scale = Fail, value = 14
