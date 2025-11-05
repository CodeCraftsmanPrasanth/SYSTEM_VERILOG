// Code your design here
class packet;
  int id;
  
  function new(int id);
    this.id=id;
  endfunction
endclass

class header;
  int addr;
  int data;
  packet pk;
  function new(int addr,int data);
    this.addr=addr;
    this.data=data;
    pk=new($urandom_range(0,20));
  endfunction
  
  function copy(header he);
    this.addr=he.addr;
    this.data=he.data;
    this.pk.id= he.pk.id;
  endfunction
  
  function display(string name);
    $display("%s id=%0d data=%0d addr=%0d",name,pk.id,data,addr);
  endfunction
endclass

module top;
  header p1,p2;
  initial begin
    p1=new($urandom_range(50,100),$urandom_range(100,200));
    p1.display("p1");
    
    p2=new($urandom_range(200,300),$urandom_range(300,400));
    p2.display("p2");
    
    p2.copy(p1);
    p2.display("p2");
  end
endmodule

p1 id=17 data=176 addr=72
p2 id=15 data=387 addr=214
p2 id=17 data=176 addr=72
