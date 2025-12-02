class packet;
  rand bit [3:0] value;
  randc bit [3:0] data;
  
  constraint a1 {value >14;data<10;};
  function void display();
    $display("Value =%d, data=%d",value, data);
  endfunction
endclass

class child extends packet;
  constraint a1 {value <14;data>10;};
endclass
  
module name;
  initial begin
    child p;
    p=new();
    repeat (4) begin
      p.randomize();
      p.display();
    end
  end
endmodule

# Value = 2, data=12
# Value =10, data=13
# Value = 7, data=11
# Value = 1, data=14
