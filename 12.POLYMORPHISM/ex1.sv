Without Virtual

class parent;
  int id;
  int data;
  function void display();
    $display("Parent id=%0d,data=%0d",id,data);
  endfunction
endclass

class child1 extends parent;
  function void display();
    $display("child1 id=%0d,data=%0d",id,data);
  endfunction
endclass

module poly;
  initial begin
    child1 c1=new(); 
    parent p;
    c1.id=$urandom_range(1,10);
    c1.data=$urandom_range(50,100);
    p=c1;
    c1.display();
    p.display();
  end
endmodule

# child1 id=2,data=91
# Parent id=2,data=91

With Virtual

class parent;
  int id;
  int data;
  virtual function void display();
    $display("Parent id=%0d,data=%0d",id,data);
  endfunction
endclass

class child1 extends parent;
  function void display();
    $display("child1 id=%0d,data=%0d",id,data);
  endfunction
endclass

module poly;
  initial begin
    child1 c1=new(); 
    parent p;
    c1.id=$urandom_range(1,10);
    c1.data=$urandom_range(50,100);
    p=c1;
    c1.display();
    p.display();
  end
endmodule

# child1 id=2,data=91
# child1 id=2,data=91
