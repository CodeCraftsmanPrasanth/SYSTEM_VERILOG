// Code your design here
module mailbox_generic;
  mailbox #(string) mbox;
  string b,c;
  initial begin
    mbox= new();
    
    fork 
      begin
        for(int a=0;a<5;a++) begin
          mbox.try_put("a");
        end
        for(int a=0;a<5;a++) begin
          mbox.get(c);
          $display("random c=%s",c);
        end
      end
    join
  end
endmodule

random c=a
random c=a
random c=a
random c=a
random c=a
