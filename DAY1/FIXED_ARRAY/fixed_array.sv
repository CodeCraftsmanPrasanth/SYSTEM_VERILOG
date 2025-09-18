module fixedarray;
  logic [7:0] array [6][2];
  initial begin
    foreach (array[i,k]) begin
      array[i][k]=$random;
    end
    $display("array = %p",array);
  end
endmodule

array = '{'{36, 129}, '{9, 99}, '{13, 141}, '{101, 18}, '{1, 13}, '{118, 61}}
