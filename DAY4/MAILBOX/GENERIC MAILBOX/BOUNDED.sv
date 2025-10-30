// Code your design here
module mailbox_generic;
  mailbox mbox;
  int b,c;
  initial begin
    mbox= new(3);
    fork 
      begin
        for(int a=0;a<5;a++) begin
          b=$urandom;
          mbox.try_put(b);
          $display("random b=%d",b);
        end
        for(int a=0;a<5;a++) begin
          mbox.get(c);
          $display("random c=%d",c);
        end
      end
    join
  end
endmodule

random b= 1118361777
random b= -291092276
random b= -163791862
random b=  516318105
random b=-1845238140
random c= 1118361777
random c= -291092276
random c= -163791862
