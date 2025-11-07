class parent;
  logic [7:0] id;
  
  function void display();
    $display("value id=%d",id);
  endfunction
endclass

class child extends parent;
  logic [7:0] addr, data;
  
  function void display();
    $display("value id=%0d value=%0d data=%0d",id,addr,data);
  endfunction
endclass

module example;
  parent pa;
  child ch;
  initial begin
    ch =new();
    pa=ch;
    ch.id=$urandom;
    ch.addr=$urandom;
    ch.data=$urandom;
    ch.display();
    pa.id=$urandom;
    pa.display();
  end
endmodule
