module unpackedarray1D;
  int  array [2];
  initial begin
    foreach (array[i]) begin
      array[i]=$random;
    end
    $display("array = %p",array);
  end
endmodule

OUTPUT: array = '{303379748, -1064739199}
