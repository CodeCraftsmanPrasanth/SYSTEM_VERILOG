// Code your design here
class assig1;
  int a,b;
  function void display(string c);
    $display("%s value of the a=%0d, value of the b=%0d",c, a,b);
  endfunction
endclass

module assignment_example;
  assig1 p1,p2;
  initial begin
    p1=new();
    p1.a=$urandom_range(1,100);
    p1.b=$urandom_range(1,100);
    p1.display("p1");
    p2=new p1;
    p2.display("p2");
    p2.a=$urandom_range(1,100);
    p2.b=$urandom_range(1,100);
    p1.display("p1");
    p2.display("p2");
    p1.a=$urandom_range(1,100);
    p1.b=$urandom_range(1,100);
    p1.display("p1");
    p2.display("p2");
   
  end
endmodule

p1 value of the a=39, value of the b=61
p2 value of the a=39, value of the b=61
p1 value of the a=39, value of the b=61
p2 value of the a=74, value of the b=71
p1 value of the a=8, value of the b=52
p2 value of the a=74, value of the b=71
