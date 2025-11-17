class Brand;
  protected string brand;
  function void display();
    $display("BRAND : %0s",brand);
  endfunction
endclass

class Model extends Brand;
  string model;
  function new(string brand,model);
    this.model=model;
    this.brand=brand;
  endfunction
  function void display();
    $display("BRAND : %0s || MODEL : %s",brand, model);
  endfunction
endclass

module bike;
  initial begin
    Model m;
    m=new("HERO","XPULSE 200 4v");
    m.display();
  end
endmodule

# BRAND : HERO || MODEL : XPULSE 200 4v
