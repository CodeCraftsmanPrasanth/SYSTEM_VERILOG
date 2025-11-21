class parent;
  const int a=$urandom_range(10,100);
  function void display();
    $display("Value of a=%0d",a);
  endfunction
endclass

module global_ex;
  initial begin
    parent p;
    p=new();
    p.display();
  end
endmodule

# Value of a=28
