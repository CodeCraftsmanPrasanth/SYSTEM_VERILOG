module mixedarray; 
  logic [0:1][0:3] array [5][4][3]; 
  initial begin 
    foreach (array[i,k,l,m]) begin 
      array[i][k][l][m]=$random; 
    end 
    $display("array = %p",array); 
  end 
endmodule
