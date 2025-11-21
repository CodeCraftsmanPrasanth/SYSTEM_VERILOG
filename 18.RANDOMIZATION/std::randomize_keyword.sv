module random;
  bit [7:0] value;
  bit [0:7] data;
  initial begin
    std::randomize(value);
    std::randomize(data);
    $display("value=%0d,data=%0d",value,data);
  end
endmodule

# value=35,data=50
