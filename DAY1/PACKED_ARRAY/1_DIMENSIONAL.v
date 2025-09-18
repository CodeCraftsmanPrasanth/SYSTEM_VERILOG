module packedarray1D;
  logic [0:2][0:3] array;
  initial begin
    foreach (array[i]) begin
      array[i]=$random;
    end
    $display("array = %p",array);
  end
endmodule

array = '{4, 1, 9}
