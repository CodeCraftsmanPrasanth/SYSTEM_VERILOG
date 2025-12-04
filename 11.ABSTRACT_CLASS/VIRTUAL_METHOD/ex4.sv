class base;
  int id;
  int addr;
 virtual function void display();
    $display("Base: id=%0d,addr=%0d",id,addr);
  endfunction
endclass

class parent extends base;
  int data;
  function void display();
    $display("Parent: id=%0d,addr=%0d,data=%0d",id,addr,data);
  endfunction
endclass

class child extends parent;
  int value;
  function void display();
    $display("Child: id=%0d,addr=%0d,data=%0d,value=%0d",id,addr,data,value);
  endfunction
endclass

module ex;
  initial begin
    base b; parent p; child c;
    c=new();
    p=c;
    c.id=$urandom_range(0,10);
    c.addr=$urandom_range(50,90);
    c.data=$urandom_range(100,200);
    c.display();
    p.display();
  end
endmodule

# Child: id=5,addr=64,data=137,value=0
# Child: id=5,addr=64,data=137,value=0
