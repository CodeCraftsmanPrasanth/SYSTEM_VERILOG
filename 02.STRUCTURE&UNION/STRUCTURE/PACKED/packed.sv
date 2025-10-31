module structurepacked;
  struct  packed {
    integer a;
    bit [7:0] b;
    byte c;
    int d;
    logic [7:0] e;
    logic [7:0] f;
    
  } str;
  initial begin
    str=96'hffffffffffffffffffffff;
    $display("%p",str);
  end
endmodule

'{a:16777215, b:255, c:-1, d:-1, e:255, f:255}
