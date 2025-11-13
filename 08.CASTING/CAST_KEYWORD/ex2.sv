module casting;
  typedef enum{RED = 100, YELLOW=150,GREEN=200,BLUE, VIOLET, BROWN, ORANGE } color;
  initial begin
    color co;
    $cast(co,0+150);
    $display("color =%s",co.name());
    $cast(co,200);
    $display("color =%s",co.name());
    $cast(co,100);
    $display("color =%s",co.name());
    $cast(co,201);
    $display("color =%s",co.name());
    $cast(co,202);
    $display("color =%s",co.name());
    $cast(co,203);
    $display("color =%s",co.name());
    $cast(co,204);
    $display("color =%s",co.name());
  end
endmodule

# color =YELLOW
# color =GREEN
# color =RED
# color =BLUE
# color =VIOLET
# color =BROWN
# color =ORANGE
