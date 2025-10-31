module dynamic2D;
  int array [][];
  initial begin
    array=new[2];
    array='{'{$random,$random},'{$random,$random}};
    $display("array size = %0d",array.size());
    $display("array = %p",array);
    array.delete();
    $display("array size = %0d",array.size());
  end
endmodule

row,column
array size = 2
array = '{'{303379748, -1064739199}, '{-2071669239, -1309649309}}
array size = 0
