module struct_ex();
  struct {bit[4:0]date;
          string month;
          int year;
         } dob;
  
  initial begin
    dob.date  =29;
    dob.month ="JAN";
    dob.year  =2005;
    $display("---_original_----");    
    $display("%0p",dob);
    
    dob.date  =5'd17;
    dob.month ="SEPT";
    dob.year  =2004;
    
    $display("---_mod_----");    
    $display("%0p",dob);
    
    $display("---_size_---"); 
    
    $display("%0d",$bits(dob));
  end
endmodule
    
    
    
    
