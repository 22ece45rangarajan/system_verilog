module union_ex();
  typedef union {bit[4:0]date;
                 string month;
                 int year;
         } dob;
  dob dob_1;
  dob dob_2;
  
  initial begin
    
    $display("---_original_----"); 
    dob_1.date  =29;
    $display("%0d",dob_1.date);
    
    dob_1.month ="JAN";
    $display("%s",dob_1.month);
    
    dob_1.year  =2005;
    $display("%0d",dob_1.year);
    
    $display("---_mod_----");
    dob_2.date  =5'd17;
    $display("%0d",dob_2.date);
    
    dob_2.month ="SEPT";
    $display("%s",dob_2.month);
    
    dob_2.year  =2004;
    $display("%0d",dob_2.year);
    
   
  end
endmodule
    
    
    
    
