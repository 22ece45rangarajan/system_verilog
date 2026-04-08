module struct_ex();
 typedef struct {bit[4:0]date;
          string month;
          int year;
         } dob;
  dob dob_1;
  dob dob_2;
  initial begin
    dob_1.date  =29;
    dob_1.month ="JAN";
    dob_1.year  =2005;
    $display("---_original_----");    
    $display("%0p",dob_1);
    
    dob_2.date  =5'd17;
    dob_2.month ="SEPT";
    dob_2.year  =2004;
    
    $display("---_mod_----");    
    $display("%0p",dob_2);
  
    $display("---_size_---"); 
    
    $display("%0d",$bits(dob_1.month));
  end
endmodule
    
    
    
    
