class packet;
  rand bit [3:0] value;
  randc bit [3:0] data;
  
  constraint a1 {value >14;data==value;};
  function void display();
    $display("Value =%d, data=%d",value, data);
  endfunction
endclass

module name;
  initial begin
    packet p;
    p=new();
    repeat (4) begin
      p.randomize();
      p.display();
    end
  end
endmodule

# Value =15, data=15
# Value =15, data=15
# Value =15, data=15
# Value =15, data=15
