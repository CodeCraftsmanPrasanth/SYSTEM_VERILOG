// Code your design here
class Brand;
  local string brand;
  function new(string brand);
    this.brand=brand;
  endfunction
  function void display();
    $display("BRAND : %0s",brand);
  endfunction
endclass

module bike;
  initial begin
    Brand b;
    b=new("HERO");
    b.brand="ROYAL_ENFIELD";
    b.display();
  end
endmodule

** Error (suppressible): (vlog-8688) design.sv(16): Illegal access to local member brand.
