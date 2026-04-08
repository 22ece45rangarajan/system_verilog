module union_ex();
  union { bit[4:0]date;
          string month;
          int year;
         } dob;
  
  initial begin
    
    $display("---_original_----"); 
    dob.date  =29;
    $display("%0d",dob.date);
    
    dob.month ="JAN";
    $display("%s",dob.month);
    
    dob.year  =2005;
    $display("%0d",dob.year);
    
    $display("---_mod_----");
    dob.date  =5'd17;
    $display("%0d",dob.date);
    
    
    dob.month ="SEPT";
    $display("%s",dob.month);
    
    dob.year  =2004;
    $display("%0d",dob.year);
    
    
    
    $display("---_size_---"); 
    
    $display("%0d",$size(dob));
  end
endmodule
    
    
    
    
