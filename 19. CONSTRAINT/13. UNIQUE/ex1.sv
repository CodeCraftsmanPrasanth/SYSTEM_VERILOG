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
  constraint val_c {val1%2==0;}
  constraint val_d {unique {val1};}
endclass

module constraint_example;
  seq_item item;
  
  initial begin
    item = new();
    
    repeat(5) begin
      item.randomize();
      $display("val1 = %0d", item.val1);
      $display("value_a = %0p", item.value_a);
      $display("array = %0p", item.array);
    end
  end
endmodule

val1 = 176
value_a = '{M0:'h3c, M1:'h35, M2:'h3a, M3:'h38} 
array = '{'he, 'h3, 'hf, 'h6, 'h9} 
val1 = 138
value_a = '{M0:'h33, M1:'h3a, M2:'h35, M3:'h34} 
array = '{'h2, 'h3, 'hd, 'h9, 'hc} 
val1 = 80
value_a = '{M0:'h3c, M1:'h38, M2:'h32, M3:'h35} 
array = '{'h2, 'h4, 'ha, 'he, 'h7} 
val1 = 12
value_a = '{M0:'h39, M1:'h37, M2:'h35, M3:'h3a} 
array = '{'h2, 'hf, 'ha, 'hd, 'h5} 
val1 = 110
value_a = '{M0:'h32, M1:'h39, M2:'h3a, M3:'h36} 
array = '{'hd, 'hc, 'h9, 'hb, 'h2} 
