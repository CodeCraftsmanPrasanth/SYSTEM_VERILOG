class packet;
  rand  bit [8:0] value;
  rand bit [8:0] data;
  rand bit [8:0] id;
  constraint a1 {value ==100;data+value+id==500;};
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

# Value =100, data=106, id=294
# Value =100, data=234, id=166
# Value =100, data=146, id=254
# Value =100, data=115, id=285
# Value =100, data=306, id=94
