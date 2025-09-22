module associativearray1D;
  logic [7:0]   	array1 [int]; 			
  logic [7:0]   	array2 [string]; 		
  string  array3 [string]; 		
  initial begin
    array1 = '{ 1 : $random,6 : $random,5 : $random  };
    array2 = '{ "Ross" : $random, "Joey" : $random };
    array3 = '{ "Apples" : "Oranges","Pears" : "44" };
    foreach(array1[i]) $display ("array1[%0d] = %0d",i, array1[i]);
    foreach(array2[i]) $display ("array2[%0s] = %0d",i, array2[i]);
    foreach(array3[i]) $display ("array3[%0s] = %0s",i, array3[i]);
  end
endmodule

column
array1[1] = 36
array1[5] = 9
array1[6] = 129
array2[Joey] = 13
array2[Ross] = 99
array3[Apples] = Oranges
array3[Pears] = 44
