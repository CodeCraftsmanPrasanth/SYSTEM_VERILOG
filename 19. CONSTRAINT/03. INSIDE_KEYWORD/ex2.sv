class packet;
  rand  bit [8:0] value;
  rand bit [8:0] data;
  rand bit [8:0] id;
  constraint a1 {value inside {[data:id]};};
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

# Value =352, data=249, id=383
# Value =170, data=38, id=453
# Value =261, data=228, id=478
# Value =146, data=127, id=169
# Value =77, data=65, id=319
# Value =379, data=311, id=490
# Value =315, data=314, id=380
# Value =247, data=67, id=262
# Value =227, data=156, id=331
# Value =39, data=34, id=70
