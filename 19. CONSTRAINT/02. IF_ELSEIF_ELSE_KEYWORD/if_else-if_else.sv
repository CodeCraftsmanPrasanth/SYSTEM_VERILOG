class seq_item;
  rand bit [7:0] value;
  rand enum {Fail,Pass} scale;
  rand enum {O,A,B,C,D,F} grade;
  constraint grades {if(grade == O) ((scale == Pass) & (value>95 & value<=100));
                     else if (grade == A) ((scale == Pass) & (value>90 & value<=95));
                     else if (grade == B) ((scale == Pass) & (value>80 & value<=90));
                     else if (grade == C) ((scale == Pass) & (value>60 & value<=80));
                     else if (grade == D) ((scale == Pass) & (value>40 & value<=60));
                     else ((grade == F) & (scale == Fail) & (value<=40));}
  
  function void display();
    $display("Score of the student = %d, Grade of the student =%0s, Scale of the student =%0s", value, grade, scale);
  endfunction
endclass

module constraint_example;
  seq_item s;
  initial begin
    s = new();
    repeat(20) begin
      s.randomize();
      s.display();
    end
  end
endmodule

# Score of the student =  68, Grade of the student =C, Scale of the student =Pass
# Score of the student =  97, Grade of the student =O, Scale of the student =Pass
# Score of the student =  49, Grade of the student =D, Scale of the student =Pass
# Score of the student =  88, Grade of the student =B, Scale of the student =Pass
# Score of the student =  77, Grade of the student =C, Scale of the student =Pass
# Score of the student =  67, Grade of the student =C, Scale of the student =Pass
# Score of the student =  79, Grade of the student =C, Scale of the student =Pass
# Score of the student =  97, Grade of the student =O, Scale of the student =Pass
# Score of the student = 100, Grade of the student =O, Scale of the student =Pass
# Score of the student =  87, Grade of the student =B, Scale of the student =Pass
# Score of the student =   1, Grade of the student =F, Scale of the student =Fail
# Score of the student =  47, Grade of the student =D, Scale of the student =Pass
# Score of the student =  22, Grade of the student =F, Scale of the student =Fail
# Score of the student =  73, Grade of the student =C, Scale of the student =Pass
# Score of the student =  96, Grade of the student =O, Scale of the student =Pass
# Score of the student =  91, Grade of the student =A, Scale of the student =Pass
# Score of the student =  88, Grade of the student =B, Scale of the student =Pass
# Score of the student =  18, Grade of the student =F, Scale of the student =Fail
# Score of the student =  60, Grade of the student =D, Scale of the student =Pass
# Score of the student =  41, Grade of the student =D, Scale of the student =Pass
