class transaction;
  bit [31:0] data;
  const int id;
  
  function new();
    data = 100;
    id = 1; 
  endfunction
  
  function void display();
    $display("data = %0d and id = %0d", data, id);
  endfunction
endclass

module class_example;
  transaction tr;
  
  initial begin
    tr = new();
    tr.data = 200;
    tr.display();
  end
endmodule

# data = 200 and id = 1
