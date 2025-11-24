class packet;
  rand  bit [8:0] value;
  rand bit [8:0] data;
  rand bit [8:0] id;
  constraint a1 {value inside {3,5,[9:15],[24:32],[data:2*data],id};};
  function void display();
    $display("Value =%0d, data=%0d, id=%0d",value, data,id);
  endfunction
endclass

module name;
  initial begin
    packet p;
    p=new();
    repeat (10) begin
      p.randomize();
      p.display();
    end
  end
endmodule

# Value =27, data=239, id=249
# Value =363, data=345, id=474
# Value =480, data=358, id=163
# Value =132, data=78, id=40
# Value =240, data=191, id=264
# Value =334, data=207, id=272
# Value =146, data=122, id=307
# Value =275, data=202, id=148
# Value =32, data=356, id=494
# Value =351, data=334, id=281
