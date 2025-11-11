class base;
  int id;
  int addr;
  virtual function void display();
    $display("Base: id=%0d,addr=%0d",id,addr);
  endfunction
endclass

class child extends base;
  int data;
   virtual  function void display();
    $display("Child: id=%0d,addr=%0d,data=%0d",id,addr,data);
  endfunction
endclass

module ex;
  initial begin
    base b; child c;
    c=new();    
    b=c;
    b.id=$urandom_range(0,10);
    c.addr=$urandom_range(50,90);
    c.data=$urandom_range(100,200);
    b.display();
    c.display();
  end
endmodule
