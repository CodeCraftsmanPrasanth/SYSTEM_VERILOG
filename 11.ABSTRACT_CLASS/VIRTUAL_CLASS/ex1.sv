virtual class parent;
  int id;
  int addr;
 function void display();
    $display("Base: id=%0d,addr=%0d",id,addr);
  endfunction
endclass

class child extends parent;
  int data;
  function void display();
    $display("Parent: id=%0d,addr=%0d,data=%0d",id,addr,data);
  endfunction
endclass

module ex;
  initial begin
    parent p; //child c;
    p=new();
    p.id=$urandom_range(0,10);
    p.addr=$urandom_range(50,90);
    p.data=$urandom_range(100,200);
    p.display();
  end
endmodule

# Parent: id=5,addr=64,data=137
