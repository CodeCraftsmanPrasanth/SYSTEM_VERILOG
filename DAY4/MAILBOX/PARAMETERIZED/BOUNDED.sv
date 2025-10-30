// Code your design here
module mailbox_generic;
  mailbox #(string) mbox;
  string b,c;
  initial begin
    mbox= new(4);
    
    fork 
      begin
        for(int a=0;a<5;a++) begin
          //b=$urandom;
          mbox.try_put("a");
          //$display("random b=%d",b);
        end
        for(int a=0;a<5;a++) begin
          mbox.get(c);
          $display("random c=%s",c);
        end
      end
    join
  end
endmodule
