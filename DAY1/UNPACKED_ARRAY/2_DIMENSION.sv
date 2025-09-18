module unpackedarray2D; 
  int  array [3][2]; 
  initial begin 
    foreach (array[i,k]) begin 
      array[i][k]=$random; 
    end 
    $display("array = %p",array); 
  end 
endmodule

array = '{'{303379748, -1064739199}, '{-2071669239, -1309649309}, '{112818957, 1189058957}}
