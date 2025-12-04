typedef enum {M0, M1, M2, M3} scale_e;
class seq_item;
  rand bit [7:0] value_a[scale_e];
  rand bit [3:0] array[5];
  rand bit [7:0] val1;
  scale_e scale;
  
  constraint array_c { unique {array}; }
  constraint value_a_c { unique {value_a}; 
                        value_a.size == scale.num;
                        foreach (value_a[i]) value_a[i] inside {[50:60]}; }
endclass

module constraint_example;
  seq_item item;
  
  initial begin
    item = new();
    
    repeat(5) begin
      item.randomize();
      item.randomize with {val1%2==1;};
      item.randomize with {unique{val1};};
      $display("val1 = %0d", item.val1);
      $display("value_a = %0p", item.value_a);
      $display("array = %0p", item.array);
    end
  end
endmodule

val1 = 40
value_a = '{M0:'h3c, M1:'h38, M2:'h32, M3:'h35} 
array = '{'h2, 'h4, 'ha, 'he, 'h7} 
val1 = 59
value_a = '{M0:'h38, M1:'h37, M2:'h3b, M3:'h3c} 
array = '{'ha, 'h5, 'h2, 'h9, 'h1} 
val1 = 250
value_a = '{M0:'h36, M1:'h3b, M2:'h3a, M3:'h3c} 
array = '{'h3, 'h9, 'hb, 'h7, 'h5} 
val1 = 61
value_a = '{M0:'h34, M1:'h36, M2:'h35, M3:'h3c} 
array = '{'h7, 'ha, 'h8, 'h1, 'hc} 
val1 = 87
value_a = '{M0:'h3b, M1:'h32, M2:'h3a, M3:'h37} 
array = '{'h1, 'h9, 'h4, 'h3, 'hc} 
