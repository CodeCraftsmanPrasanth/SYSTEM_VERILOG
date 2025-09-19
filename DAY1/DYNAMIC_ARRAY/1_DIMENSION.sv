module dynamic;
  int array [];
  initial begin
    array='{$random,$random,$random,$random,$random,$random,$random};
    $display("array = %p",array);
  end
endmodule

column
array = '{303379748, -1064739199, -2071669239, -1309649309, 112818957, 1189058957, -1295874971}
