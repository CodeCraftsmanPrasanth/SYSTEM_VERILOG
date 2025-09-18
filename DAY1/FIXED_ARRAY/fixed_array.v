module fixedarray;
  logic [7:0] array [6][2];
  initial begin
    foreach (array[i,k]) begin
      array[i][k]=$random;
    end
    $display("array = %p",array);
  end
endmodule
