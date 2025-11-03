// Code your design here
class assig1;
  int a,b;
  function void display(string c);
    $display("%s value of the a=%0d, value of the b=%0d",c, a,b);
  endfunction
endclass

module assignment_example;
  assig1 p1,p2,p3;
  initial begin
    p1=new();
    p3=new();
    p1.a=$urandom_range(1,100);
    p1.b=$urandom_range(1,100);
    p1.display("p1");
    p2=p1;
    p2.display("p2");
    p2.a=$urandom_range(1,100);
    p2.b=$urandom_range(1,100);
    p1.display("p1");
    p2.display("p2");
    p3.a=$urandom_range(1,100);
    p3.b=$urandom_range(1,100);
    p3.display("p3");
  end
endmodule
