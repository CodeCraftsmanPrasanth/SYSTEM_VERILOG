module dynamic3D;
  int array [][][];
  initial begin
    array=new[2];
    array='{'{'{$random,$random},'{$random,$random},'{$random,$random},'{$random,$random}},'{'{$random,$random},'{$random,$random},
                                                                                             '{$random,$random},'{$random,$random}}};
    $display("array size = %0d",array.size());
    $display("array = %p",array);
    array.delete();
    $display("array size = %0d",array.size());
  end
endmodule

row,column,individual
array size = 2
array = '{'{'{303379748, -1064739199}, '{-2071669239, -1309649309}, '{112818957, 1189058957}, '{-1295874971, -1992863214}}, '{'{15983361, 114806029}, '{992211318, 512609597}, '{1993627629, 1177417612}, '{2097015289, -482925370}}}
array size = 0
