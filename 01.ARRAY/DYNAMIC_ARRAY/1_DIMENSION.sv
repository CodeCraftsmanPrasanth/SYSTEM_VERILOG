module dynamic1D;
  int array [];
  initial begin
    array=new[7];
    array='{$random,$random,$random,$random,$random,$random,$random};
    $display("array size = %0d",array.size());
    $display("array = %p",array);
    array.delete();
    $display("array size = %0d",array.size());
  end
endmodule

column
array size = 7
array = '{303379748, -1064739199, -2071669239, -1309649309, 112818957, 1189058957, -1295874971}
array size = 0
