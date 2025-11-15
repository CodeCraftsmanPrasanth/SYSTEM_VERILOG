// Code your design here
class scope;
  shortint data;
  shortint id;
  extern function void display();
endclass

    function void scope::display();
      $display("data=%0d, id=%0d",data,id);
    endfunction

module scope_resoultion;
  initial begin
    scope s=new();
    s.data=$urandom;
    s.id=$urandom;
    s.display();
  end
endmodule

# data=-21981, id=28210
