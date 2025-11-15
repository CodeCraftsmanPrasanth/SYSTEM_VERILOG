// Code your design here
class scope;
  static shortint data;
  static shortint id;
  static function void display();
    $display("data=%0d, id=%0d",data,id);
  endfunction
endclass

module scope_resoultion;
  initial begin
    scope::data=$urandom;
    scope::id=$urandom;
    scope::display();
  end
endmodule
