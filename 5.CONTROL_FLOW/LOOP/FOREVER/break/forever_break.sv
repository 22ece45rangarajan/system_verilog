

// Design a watchdog using forever:

// Start a counter
// Reset counter when done == 1
// If counter exceeds 50 cycles → print "Timeout Error" and $finish


module control_flow();
  
  int count;
  bit done;
  initial begin
   
    $display("------------");
    
    forever begin
      #5;
      if(done==1)begin
        count=0;
        $display("ITS_UR_TURN at %0t",$time);
      end
      else 
        count++;
      
      if(count==50)begin
        $display("TIME_ERROR at %0t",$time);
        break;
      end
      
    end
    $display("------------");
  end
  
  initial begin
       done=0;
  #60  done=1;
  #5   done=0;
  end
    
endmodule
      
      
