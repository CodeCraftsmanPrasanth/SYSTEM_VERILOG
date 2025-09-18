module packedarray2D;
  logic [0:3][0:2][0:3] array;
  initial begin
    foreach (array[i,k]) begin
      array[i][k]=$random;
    end
    $display("array = %p",array);
  end
endmodule

array = '{'{4, 1, 9}, '{3, 13, 13}, '{5, 2, 1}, '{13, 6, 13}}
