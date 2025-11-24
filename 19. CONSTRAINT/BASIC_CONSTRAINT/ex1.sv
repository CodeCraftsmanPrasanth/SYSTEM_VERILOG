class packet;
  rand bit [3:0] value;
  randc bit [3:0] data;
  
  constraint a1{value >14;data<10;}
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

# Value =15, data= 3
# Value =15, data= 0
# Value =15, data= 6
# Value =15, data= 8
