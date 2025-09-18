module packedarray1D;
  logic [0:3][0:2][0:3] array;
  initial begin
    foreach (array[i,k]) begin
      array[i][k]=$random;
    end
    $display("array = %p",array);
  end
endmodule
