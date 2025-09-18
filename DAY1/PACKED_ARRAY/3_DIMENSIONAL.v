module packedarray1D;
  logic [0:4][0:3][0:2][0:3] array;
  initial begin
    foreach (array[i,k,l]) begin
      array[i][k][l]=$random;
    end
    $display("array = %p",array);
  end
endmodule
