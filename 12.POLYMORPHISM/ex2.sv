Without virtual

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

class child2 extends child1;
  function void display();
    $display("child2 id=%0d,data=%0d",id,data);
  endfunction
endclass

module poly;
  initial begin
    child1 c1; 
    parent p;
    child2 c2=new();
    c2.id=$urandom_range(1,10);
    c2.data=$urandom_range(50,100);
    c2.display();
    c1=c2;
    c1.display();
    p=c1;
    p.display();
  end
endmodule

# child2 id=2,data=91
# child1 id=2,data=91
# Parent id=2,data=91

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

class child2 extends child1;
  function void display();
    $display("child2 id=%0d,data=%0d",id,data);
  endfunction
endclass

module poly;
  initial begin
    child1 c1; 
    parent p;
    child2 c2=new();
    c2.id=$urandom_range(1,10);
    c2.data=$urandom_range(50,100);
    c2.display();
    c1=c2;
    c1.display();
    p=c1;
    p.display();
  end
endmodule

# child2 id=2,data=91
# child2 id=2,data=91
# child2 id=2,data=91
