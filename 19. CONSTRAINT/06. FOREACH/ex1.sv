typedef enum {O,A,B,C,D,F} scale;
class foreach_ex;
  rand int array [scale];
  constraint arr_size_c { array.size() == 6;}
  constraint a1{ foreach(array[i]) { 
                                   (array[i] <= 100);
                                   (array[i] >= 0);           
                                   (i==O) -> (array[i] inside {[96:100]});  
                                   (i==A) -> (array[i] inside {[91:95]});
                                   (i==B) -> (array[i] inside {[81:90]});
                                   (i==C) -> (array[i] inside {[61:80]});
                                   (i==D) -> (array[i] inside {[41:60]});
                                   (i==F) -> (array[i] inside {[0:40]});    
                                 }}
endclass

module ex;
  initial begin
    foreach_ex fo;
    fo = new();
    if(fo.randomize())                                           
      $display("array = %p", fo.array);
    else
      $display("Randomization failed!");
  end
endmodule

array = '{O:96, A:94, B:84, C:69, D:60, F:4} 
