class packet;
  rand  bit [8:0] value;
  rand bit [8:0] data;
  rand bit [8:0] id;
  constraint a1 {value%2==0;data%2!=0;};
  function void display();
    $display("Value =%0d, data=%0d, id=%0d",value, data,id);
  endfunction
endclass

module name;
  initial begin
    packet p;
    p=new();
    repeat (5) begin
      p.randomize();
      p.display();
    end
  end
endmodule

# Value =366, data=257, id=261
# Value =478, data=395, id=489
# Value =210, data=63, id=260
# Value =324, data=69, id=343
# Value =478, data=219, id=193
