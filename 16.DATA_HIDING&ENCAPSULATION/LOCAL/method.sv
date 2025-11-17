class Brand;
  local string brand;
  function new(string brand);
    this.brand=brand;
    display();
  endfunction
  local function void display();
    $display("BRAND : %0s",brand);
  endfunction
endclass

module bike;
  initial begin
    Brand b;
    b=new("HERO");
  end
endmodule

# BRAND : HERO
