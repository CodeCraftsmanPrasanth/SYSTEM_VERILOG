// Code your design here
module queuearrayB1D;
  int array[$:8];
  int x;
  initial begin
    array='{$random,$random,$random,$random,$random,$random};
    $display("array = %p",array);
    $display("array size = %0d", array.size());
    array.insert(3,26);
    $display("inserted array = %p",array);
    array.delete(4);
    $display("deleted array = %p",array);
    x=array.pop_front();
    $display("x = %0d",x);
    $display("pop array = %p",array);
    x=array.pop_back();
    $display("x = %0d",x);
    $display("pop array = %p",array);
    array.push_front($random);
    $display("push_front array = %p",array);
    array.push_back($random);
    $display("push_back array = %p",array);
  end
endmodule

column
array = '{303379748, -1064739199, -2071669239, -1309649309, 112818957, 1189058957}
array size = 6
inserted array = '{303379748, -1064739199, -2071669239, 26, -1309649309, 112818957, 1189058957}
deleted array = '{303379748, -1064739199, -2071669239, 26, 112818957, 1189058957}
x = 303379748
pop array = '{-1064739199, -2071669239, 26, 112818957, 1189058957}
x = 1189058957
pop array = '{-1064739199, -2071669239, 26, 112818957}
push_front array = '{-1295874971, -1064739199, -2071669239, 26, 112818957}
push_back array = '{-1295874971, -1064739199, -2071669239, 26, 112818957, -1992863214}
