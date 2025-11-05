class child;
  string name;
  int age;
  
  function new(string name,int age);
    this.name=name;
    this.age=age;
  endfunction
endclass


class packet;
  int id;
  int addr;
  child ch;
  function new(int id,int addr,string name);
    this.id=id;
    this.addr=addr;
    ch=new(name,$urandom_range(10,20));
  endfunction
  
  function deep_copy (packet pac);
    this.ch.name =pac.ch.name;
    this.ch.age=pac.ch.age;
  endfunction
endclass


class header;
  int data;
  packet pk;
  
  function new(int data, string name);
    this.data=data;
    pk=new($urandom_range(0,50),$urandom_range(50,100),name);
  endfunction
  
  function copy(header he);
    this.data=he.data;
    this.pk.id = he.pk.id;
    this.pk.addr = he.pk.addr;
    pk.deep_copy(he.pk);
  endfunction
  
  function display(string name);
    $display("%s name=%0s age=%0d id=%0d data=%0d addr=%0d",name,pk.ch.name,pk.ch.age,pk.id,data,pk.addr);
  endfunction
endclass


module topmod;
  header p1,p2;
  initial begin
    p1=new($urandom_range(100,200),"Prasanth");
    p1.display("p1");
    
    p2=new($urandom_range(200,300),"kabi");
    p2.display("p2");
    
    p2.copy(p1);
    p2.display("p2");
  end
endmodule

 p1 name=Prasanth age=10 id=41 data=143 addr=85
 p2 name=kabi age=20 id=3 data=287 addr=72
 p2 name=Prasanth age=10 id=41 data=143 addr=85
