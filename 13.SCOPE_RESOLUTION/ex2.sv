// Code your design here
class scope;
  static shortint data;
  static shortint id;
  static function void display();
    $display("data=%0d, id=%0d",data,id);
  endfunction
endclass

class scoperesol extends scope;
  static shortint addr;
  static function void display();
    $display("data=%0d, id=%0d, addr=%0d",data,id,addr);
  endfunction
endclass

module scope_resoultion;
  initial begin
    scoperesol::data=$urandom;
    scoperesol::id=$urandom;
    scoperesol::addr=$urandom;
    scoperesol::display();
  end
endmodule
