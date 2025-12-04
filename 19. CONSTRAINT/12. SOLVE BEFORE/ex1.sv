// Code your design here
class solve_ex;
  rand bit a;
  rand bit [7:0] b;
  constraint a1{ (a==0) -> b==100;};
  constraint a2{solve a before b;}
endclass

module ex;
  initial begin
    solve_ex s;
    s=new();
    repeat (10) begin
    s.randomize();
    $display("a=%0d, b=%0d",s.a,s.b);
    end
  end
endmodule

# a=0, b=100
# a=0, b=100
# a=0, b=100
# a=0, b=100
# a=0, b=100
# a=0, b=100
# a=1, b=62
# a=0, b=100
# a=1, b=80
# a=1, b=35
