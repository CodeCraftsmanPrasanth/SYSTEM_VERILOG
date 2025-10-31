module structurepacked;
  typedef struct  packed {
    integer a;
    bit [7:0] b;
    byte c;
    int d;
    logic [7:0] e;
    logic [7:0] f;
    
  } str;
  initial begin
    str q1,q2;
    q1=96'heeeeeeeeeeeeeeeeeeeeeeee;
    $display("%p",q1);
    q2=96'haaaaaaaaaaaaaaaaaaaaaaaa;
    $display("%p",q2);
  end
endmodule

'{a:-286331154, b:238, c:-18, d:-286331154, e:238, f:238}
'{a:-1431655766, b:170, c:-86, d:-1431655766, e:170, f:170}
