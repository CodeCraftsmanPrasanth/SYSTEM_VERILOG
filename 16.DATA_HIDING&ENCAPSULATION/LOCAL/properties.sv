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
    b.display();
  end
endmodule

# BRAND : HERO
