virtual class parent;
  bit [31:0] data;
  int id ;
  function void display();
    $display("base:value of data=%0d,id=%0d",data,id);
  endfunction
endclass

class child extends parent;
  function void display();
    $display("child:value of data=%0d,id=%0d",data,id);
  endfunction
endclass

module test;
  initial begin
    parent p;
    child c1,c2;
    c1=new();
    c1.data=$urandom;
    c1.id=$urandom;
    c1.display();
    p=c1;
    p.display();
    $cast(c2,p);
    c2.display();
  end
endmodule

# child:value of data=3460737571,id=-1608815054
# base:value of data=3460737571,id=-1608815054
# child:value of data=3460737571,id=-1608815054
