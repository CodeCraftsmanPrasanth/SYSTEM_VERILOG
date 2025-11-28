module queuearrayB2D;
  int array[$:4][$:2];
  int x[$];
  initial begin
    array='{'{$random,$random,$random},'{$random,$random,$random},'{$random,$random,$random},'{$random,$random,$random},'{$random,$random,$random}};
    $display("array = %p",array);
    $display("array size = %0d", array.size());
    array.delete(4);
    $display("Deleted array = %p",array);
    x=array.pop_front();
    $display("x_pop_front = %p",x);
    $display("pop_front array = %p",array);
    x=array.pop_back();
    $display("x_pop_back = %p",x);
    $display("pop_back array = %p",array);
    array.push_front('{$random,$random});
    $display("push_front array = %p",array);
	array.push_back('{$random,$random});
    $display("push_back array = %p",array);
  end
endmodule

row,column
array = '{'{303379748, -1064739199, -2071669239}, '{-1309649309, 112818957, 1189058957}, '{-1295874971, -1992863214, 15983361}, '{114806029, 992211318, 512609597}, '{1993627629, 1177417612, 2097015289}}
array size = 5
Deleted array = '{'{303379748, -1064739199, -2071669239}, '{-1309649309, 112818957, 1189058957}, '{-1295874971, -1992863214, 15983361}, '{114806029, 992211318, 512609597}}
x_pop_front = '{303379748, -1064739199, -2071669239}
pop_front array = '{'{-1309649309, 112818957, 1189058957}, '{-1295874971, -1992863214, 15983361}, '{114806029, 992211318, 512609597}}
x_pop_back = '{114806029, 992211318, 512609597}
pop_back array = '{'{-1309649309, 112818957, 1189058957}, '{-1295874971, -1992863214, 15983361}}
push_front array = '{'{-482925370, -487095099}, '{-1309649309, 112818957, 1189058957}, '{-1295874971, -1992863214, 15983361}}
push_back array = '{'{-482925370, -487095099}, '{-1309649309, 112818957, 1189058957}, '{-1295874971, -1992863214, 15983361}, '{-720121174, 1924134885}}
